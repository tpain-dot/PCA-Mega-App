# Skill: Playwright Testing

## Overview

This project uses Playwright for automated browser testing of the Flutter web app. Playwright launches a real browser and interacts with the app programmatically — clicking, scrolling, asserting that elements exist and behave correctly. This replaces visual/screenshot-based testing with concrete pass/fail assertions.

## Important: Flutter Web Rendering

Flutter web defaults to the **CanvasKit renderer**, which draws the entire UI onto a `<canvas>` element. The HTML renderer (which produces queryable DOM elements) is being deprecated and removed by the Flutter team. **Do not use `--web-renderer html` for builds.**

This means standard CSS selectors and DOM queries will not find Flutter UI elements. Instead, all Playwright tests must use **Flutter's semantics/accessibility tree** to locate and interact with elements. Flutter generates an invisible semantic layer even with CanvasKit — Playwright can query this layer using accessibility-based locators.

## Setup

### Installation
```bash
npm init -y  # if no package.json exists yet
npm install -D @playwright/test
npx playwright install chromium  # only need chromium for Flutter web
```

Add `node_modules/` to `.gitignore` if not already there.

### Project Config
Create `playwright.config.ts` in the project root:

```typescript
import { defineConfig } from '@playwright/test';

export default defineConfig({
  testDir: './tests',
  timeout: 30000,
  use: {
    baseURL: 'http://localhost:9080',
    browserName: 'chromium',
    headless: true,
    screenshot: 'only-on-failure',
  },
  webServer: {
    command: 'python3 -m http.server 9080 --directory build/web',
    port: 9080,
    reuseExistingServer: true,
  },
});
```

This config automatically starts the local web server before tests run. **Build the app first** (`flutter build web --release`) before running tests. Do NOT pass `--web-renderer html`.

### Folder Structure
```
tests/
  features/
    scrollbar.spec.ts       ← tests for a specific feature
    search-jump.spec.ts
  helpers/
    common.ts               ← shared utilities (selectors, setup functions)
```

## Running Tests

```bash
# Build the app first (default CanvasKit renderer)
flutter build web --release

# Run all tests
npx playwright test

# Run a specific test file
npx playwright test tests/features/scrollbar.spec.ts

# Run with visible browser (useful for debugging)
npx playwright test --headed

# Run with Playwright's UI mode (interactive debugging)
npx playwright test --ui

# Show HTML report after test run
npx playwright show-report
```

## Writing Tests

### Flutter Semantics: The Foundation

Since CanvasKit renders to canvas (no DOM elements), all element location must go through Flutter's **semantics tree** — the accessibility layer Flutter generates for screen readers. Playwright can query this layer.

**This requires adding `Semantics` widgets to your Flutter code** for key interactive elements. This is a small code change that makes tests reliable and also improves accessibility.

#### Adding Semantics in Flutter (Dart)

```dart
// Basic: wrap any widget with Semantics
Semantics(
  identifier: 'search-button',
  label: 'Search',
  button: true,
  child: IconButton(
    icon: Icon(Icons.search),
    onPressed: _openSearch,
  ),
)

// Text fields
Semantics(
  identifier: 'search-input',
  label: 'Search studies',
  textField: true,
  child: TextField(
    decoration: InputDecoration(hintText: 'Search...'),
  ),
)

// Scrollable regions
Semantics(
  identifier: 'pdf-viewer',
  label: 'PDF document viewer',
  child: PdfViewerWidget(...),
)
```

Key `Semantics` properties:
- `identifier` — unique test ID, queryable via `[flt-semantics-identifier="..."]`
- `label` — human-readable label, queryable via `getByLabel()` and `getByRole()`
- `button`, `textField`, `slider`, `image` — role hints for `getByRole()`

#### Querying Semantics in Playwright (TypeScript)

```typescript
// By role + accessible name (most robust)
await page.getByRole('button', { name: 'Search' }).click();
await page.getByRole('textbox', { name: 'Search studies' }).fill('covenant');

// By text content (works for visible text)
await page.getByText('Chapter 1').click();
await page.getByText('Studies').click();

// By label
await page.getByLabel('Search').click();

// By semantics identifier (when role/text isn't specific enough)
await page.locator('[flt-semantics-identifier="search-button"]').click();
```

**Locator priority (most reliable → least reliable):**
1. `getByRole()` with name — semantic and resilient
2. `getByText()` — works for any visible text
3. `getByLabel()` — works for labeled form elements
4. `locator('[flt-semantics-identifier="..."]')` — explicit test IDs, use when above aren't specific enough
5. Never use CSS class selectors or DOM structure queries — they won't work with CanvasKit

### Basic Test Structure

```typescript
import { test, expect } from '@playwright/test';

test.describe('Feature Name', () => {
  test.beforeEach(async ({ page }) => {
    await page.goto('/');
    // Wait for Flutter to fully load
    await page.waitForSelector('flt-glass-pane', { state: 'attached' });
    // Give Flutter time to render the first frame
    await page.waitForTimeout(2000);
  });

  test('should do the expected thing', async ({ page }) => {
    await page.getByText('Studies').click();
    await expect(page.getByText('Some Study Title')).toBeVisible();
  });
});
```

**Important:** Flutter apps have a loading phase. Always wait for `flt-glass-pane` and add a short timeout for the first frame render. The 2000ms wait is conservative — adjust based on your app's load time.

### Common Patterns

**Testing that an element is in the viewport (scroll-to-match, scrollbar position):**
```typescript
test('search result click scrolls to exact match', async ({ page }) => {
  // Navigate to a study
  await page.getByText('Studies').click();
  await page.getByText('Creation Report').click();

  // Open search and search for a term
  await page.getByRole('button', { name: 'Search' }).click();
  await page.getByRole('textbox').fill('covenant');

  // Click first result
  const firstResult = page.getByText('covenant').first();
  await firstResult.click();

  // Verify the match is visible in the viewport
  await expect(page.getByText('covenant').first()).toBeInViewport();
});
```

**Testing scrollbar existence and interaction:**
```typescript
test('PDF viewer has functional scrollbar', async ({ page }) => {
  await page.getByText('Studies').click();
  await page.getByText('Some Study').click();

  // Verify scrollbar is present (by semantics identifier)
  const scrollbar = page.locator('[flt-semantics-identifier="pdf-scrollbar"]');
  await expect(scrollbar).toBeVisible();
});
```

**Testing navigation:**
```typescript
test('TOC navigation scrolls to correct section', async ({ page }) => {
  await page.getByText('Studies').click();
  await page.getByText('Creation Report').click();

  // Open TOC drawer
  await page.getByRole('button', { name: 'Table of Contents' }).click();

  // Click a section
  await page.getByText('Section IV').click();

  // Verify we scrolled to that section's content
  await expect(page.getByText('Description of the Main Interpretations')).toBeInViewport();
});
```

**Testing that something does NOT appear (no-results, regressions):**
```typescript
test('search with no matches shows empty state', async ({ page }) => {
  await page.getByRole('button', { name: 'Search' }).click();
  await page.getByRole('textbox').fill('xyznonexistent');
  await expect(page.getByText('No results found')).toBeVisible();
});
```

### Assertion Cheat Sheet

| What to check | Assertion |
|---|---|
| Element exists and is visible | `await expect(locator).toBeVisible()` |
| Element is in the viewport | `await expect(locator).toBeInViewport()` |
| Element has specific text | `await expect(locator).toHaveText('...')` |
| Element count | `await expect(locator).toHaveCount(5)` |
| Page URL contains path | `await expect(page).toHaveURL(/studies/)` |
| Element is NOT visible | `await expect(locator).not.toBeVisible()` |
| No console errors | Capture with `page.on('console', ...)` and assert |

## Adding Semantics to Flutter Widgets: Guidelines

When adding `Semantics` wrappers for testability:

- **Only add to key interactive elements** — buttons, inputs, scrollable containers, navigation targets. Don't wrap every widget.
- **Use meaningful labels** that describe the action, not the implementation: `'Search studies'` not `'TextField1'`.
- **Use `identifier` for test-specific IDs** when the role + label combination isn't unique enough.
- **Document every identifier you add** — update the relevant skill doc in `docs/skills/` so future agents know what's available.
- **Keep a registry** of all semantics identifiers in `tests/helpers/identifiers.ts`:
  ```typescript
  // Central registry of all flt-semantics-identifier values used in tests
  export const IDS = {
    SEARCH_BUTTON: 'search-button',
    SEARCH_INPUT: 'search-input',
    PDF_VIEWER: 'pdf-viewer',
    PDF_SCROLLBAR: 'pdf-scrollbar',
    TOC_DRAWER: 'toc-drawer',
  } as const;
  ```

## Conventions for This Project

- **One test file per feature spec.** Name it to match: `docs/features/scrollbar-and-search-jump.md` → `tests/features/scrollbar-and-search-jump.spec.ts`
- **Build with default renderer.** Always `flutter build web --release` — never pass `--web-renderer html`.
- **All locators use semantics.** Never use CSS class selectors or DOM hierarchy. Use `getByRole`, `getByText`, `getByLabel`, or `[flt-semantics-identifier]`.
- **Screenshots on failure only.** The config captures screenshots when tests fail — these go to `test-results/` folder for debugging.
- **Don't test Flutter internals.** Test user-visible behavior: "I clicked this, I see that." Not widget state or render objects.
- **Adding Semantics is part of the work.** If a test can't reliably locate an element, the testing agent documents which widget needs a `Semantics` wrapper, and the implementation agent adds it. This is expected, not a workaround.
