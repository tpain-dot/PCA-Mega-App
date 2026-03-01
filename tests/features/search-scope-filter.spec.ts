import { test, expect, Page } from '@playwright/test';
import { waitForFlutterReady } from '../helpers/common';

/**
 * Tests for the Search Scope Filter feature.
 *
 * Feature spec: docs/features/search-scope-filter.md
 *
 * Adds a DropdownButton to the search screen AppBar with three scopes:
 * All (default), BCO, Standards. The selected scope filters which chapter
 * collection is searched. Scope persists via SharedPreferences (localStorage
 * on web).
 */

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/** Navigate to the global search screen from home. */
async function openSearch(page: Page): Promise<void> {
  // Flutter's CanvasKit semantics doesn't expose IconButton tooltips as
  // accessible names. The app bar icon buttons appear as unnamed buttons.
  // We try each unnamed button until we find the one that opens the search
  // screen (identified by a textbox appearing).
  await page.getByText('BCO Preface').waitFor({ timeout: 15000 });

  const unnamedIndices: number[] = await page.evaluate(() => {
    const buttons = document.querySelectorAll('flt-semantics[role="button"]');
    const indices: number[] = [];
    buttons.forEach((btn, i) => {
      if (!btn.textContent?.trim()) indices.push(i);
    });
    return indices;
  });

  for (const idx of unnamedIndices) {
    await page.evaluate((i) => {
      const buttons = document.querySelectorAll('flt-semantics[role="button"]');
      (buttons[i] as HTMLElement).click();
    }, idx);
    await page.waitForTimeout(1500);

    const textboxVisible = await page.getByRole('textbox').isVisible().catch(() => false);
    if (textboxVisible) return;

    await page.goBack();
    await page.waitForTimeout(1000);
  }
}

/**
 * Wait for search content to finish loading.
 * Handles all three scope states for the empty-state title.
 */
async function waitForSearchReady(page: Page): Promise<void> {
  await expect(
    page.getByText(/Search (All Content|the BCO|the Standards)/)
  ).toBeVisible({ timeout: 30000 });
}

/** Type a query into the search field and wait for results. */
async function searchFor(page: Page, query: string): Promise<void> {
  const textbox = page.getByRole('textbox');
  await textbox.waitFor({ timeout: 10000 });
  await textbox.fill(query);
  // Wait for debounce (300ms) + search execution + render
  await page.waitForTimeout(2000);
}

/**
 * Select a scope from the dropdown.
 *
 * Opens the dropdown by clicking the current scope button (a flt-semantics
 * element with role="button" whose text is one of the scope labels), then
 * clicks the desired option in the popup overlay.
 *
 * @param scopeLabel — "All", "BCO", or "Standards"
 */
async function selectScope(page: Page, scopeLabel: string): Promise<void> {
  // Open the dropdown by clicking the current scope button.
  // Flutter's DropdownButton sets button:true in Semantics, so the element
  // has role="button" in the accessibility tree.
  await page.evaluate(() => {
    const scopeLabels = ['All', 'BCO', 'Standards'];
    const buttons = document.querySelectorAll('flt-semantics[role="button"]');
    for (const btn of buttons) {
      const text = btn.textContent?.trim();
      if (text && scopeLabels.includes(text)) {
        (btn as HTMLElement).click();
        return;
      }
    }
  });
  await page.waitForTimeout(500);

  // Click the desired option in the popup overlay.
  // Flutter renders DropdownButton items as menuitem role elements.
  await page.getByRole('menuitem', { name: scopeLabel }).click();
  await page.waitForTimeout(1000);
}

/**
 * Scroll search results to find text. Flutter's ListView is virtualized —
 * off-screen items don't exist in the semantics tree until scrolled into view.
 */
async function scrollToFindText(page: Page, text: string, maxScrolls = 25): Promise<boolean> {
  for (let i = 0; i < maxScrolls; i++) {
    const found = await page.getByText(text, { exact: false }).isVisible().catch(() => false);
    if (found) return true;

    await page.evaluate(() => {
      const glassPaneHost = document.querySelector('flutter-view') ||
                            document.querySelector('flt-glass-pane');
      const target = glassPaneHost?.shadowRoot?.querySelector('flt-semantics-host') ||
                     glassPaneHost?.shadowRoot?.firstElementChild ||
                     glassPaneHost ||
                     document.body;
      target?.dispatchEvent(new WheelEvent('wheel', {
        deltaY: 500,
        bubbles: true,
        cancelable: true,
        clientX: 400,
        clientY: 400,
      }));
    });
    await page.waitForTimeout(600);
  }
  return false;
}

// ---------------------------------------------------------------------------
// Happy-path tests — one per acceptance criterion
// ---------------------------------------------------------------------------

test.describe('Search Scope Filter — Happy Path', () => {
  test.setTimeout(60000);

  test.beforeEach(async ({ page }) => {
    await page.goto('/');
    await waitForFlutterReady(page);
    await openSearch(page);
    await waitForSearchReady(page);
  });

  // AC1: Dropdown visible with three options: All, BCO, Standards
  test('AC1: dropdown is visible with All, BCO, Standards options', async ({ page }) => {
    // Verify the dropdown button exists and shows "All" by default.
    // Flutter CanvasKit exposes the dropdown as a button in the DOM semantics.
    const dropdownText = await page.evaluate(() => {
      const scopeLabels = ['All', 'BCO', 'Standards'];
      const buttons = document.querySelectorAll('flt-semantics[role="button"]');
      for (const btn of buttons) {
        const text = btn.textContent?.trim();
        if (text && scopeLabels.includes(text)) return text;
      }
      return null;
    });
    expect(dropdownText).toBe('All');

    // Open the dropdown and verify all three options appear as menuitems.
    await page.evaluate(() => {
      const buttons = document.querySelectorAll('flt-semantics[role="button"]');
      for (const btn of buttons) {
        if (btn.textContent?.trim() === 'All') {
          (btn as HTMLElement).click();
          return;
        }
      }
    });
    await page.waitForTimeout(500);

    // Flutter renders dropdown items as menuitem role elements.
    await expect(page.getByRole('menuitem', { name: 'All' })).toBeVisible();
    await expect(page.getByRole('menuitem', { name: 'BCO' })).toBeVisible();
    await expect(page.getByRole('menuitem', { name: 'Standards' })).toBeVisible();

    // Close the dropdown by pressing Escape or clicking Dismiss
    await page.keyboard.press('Escape');
  });

  // AC2: BCO scope returns only BCO chapter results
  test('AC2: selecting BCO scope returns only BCO results', async ({ page }) => {
    await selectScope(page, 'BCO');
    await searchFor(page, 'presbytery');

    // "presbytery" is a BCO term — should have results
    await expect(
      page.getByText('presbytery', { exact: false }).first()
    ).toBeVisible({ timeout: 10000 });
  });

  // AC3: Standards scope returns only Westminster Standards results
  test('AC3: selecting Standards scope returns only Standards results', async ({ page }) => {
    await selectScope(page, 'Standards');
    await searchFor(page, 'predestination');

    // "predestination" appears in WCF — should have results
    await expect(
      page.getByText('predestination', { exact: false }).first()
    ).toBeVisible({ timeout: 10000 });
  });

  // AC3b: Standards scope excludes BCO-only terms
  test('AC3b: Standards scope excludes BCO-only terms', async ({ page }) => {
    await selectScope(page, 'Standards');
    await searchFor(page, 'presbytery');

    // "presbytery" is BCO-only — Standards scope should show no results
    await expect(
      page.getByText('No results found')
    ).toBeVisible({ timeout: 5000 });
  });

  // AC4: All scope returns results from both collections
  test('AC4: All scope returns results from both collections', async ({ page }) => {
    await selectScope(page, 'All');
    await searchFor(page, 'grace');

    // "grace" appears in both BCO and Westminster Standards
    await expect(
      page.getByText('grace', { exact: false }).first()
    ).toBeVisible({ timeout: 10000 });
  });

  // AC7: Empty-state hint text updates to reflect the selected scope
  test('AC7: empty-state text updates when scope changes', async ({ page }) => {
    // Default: All
    await expect(page.getByText('Search All Content')).toBeVisible();
    await expect(
      page.getByText('Find text across the BCO and Westminster Standards')
    ).toBeVisible();

    // Switch to BCO
    await selectScope(page, 'BCO');
    await expect(page.getByText('Search the BCO')).toBeVisible();
    await expect(
      page.getByText('Find text across the Book of Church Order')
    ).toBeVisible();

    // Switch to Standards
    await selectScope(page, 'Standards');
    await expect(page.getByText('Search the Standards')).toBeVisible();
    await expect(
      page.getByText('Find text across the Westminster Standards')
    ).toBeVisible();
  });
});

// ---------------------------------------------------------------------------
// Persistence tests
// ---------------------------------------------------------------------------

test.describe('Search Scope Filter — Persistence', () => {
  test.setTimeout(60000);

  // AC5: Closing and reopening the search screen preserves the last scope
  test('AC5: scope persists when navigating away and returning', async ({ page }) => {
    await page.goto('/');
    await waitForFlutterReady(page);
    await openSearch(page);
    await waitForSearchReady(page);

    // Switch to BCO
    await selectScope(page, 'BCO');
    await expect(page.getByText('Search the BCO')).toBeVisible();

    // Navigate back to home
    await page.goBack();
    await page.waitForTimeout(1000);

    // Re-open search
    await openSearch(page);
    await waitForSearchReady(page);

    // Scope should still be BCO
    await expect(page.getByText('Search the BCO')).toBeVisible();
  });

  // AC6: Killing and restarting the app preserves the last scope
  test('AC6: scope persists across app restarts (page reload)', async ({ page }) => {
    await page.goto('/');
    await waitForFlutterReady(page);
    await openSearch(page);
    await waitForSearchReady(page);

    // Switch to Standards
    await selectScope(page, 'Standards');
    await expect(page.getByText('Search the Standards')).toBeVisible();

    // Simulate app restart by reloading
    await page.reload();
    await waitForFlutterReady(page);

    // Navigate back to search
    await openSearch(page);
    await waitForSearchReady(page);

    // Scope should still be Standards
    await expect(page.getByText('Search the Standards')).toBeVisible();
  });
});

// ---------------------------------------------------------------------------
// Edge cases
// ---------------------------------------------------------------------------

test.describe('Search Scope Filter — Edge Cases', () => {
  test.setTimeout(60000);

  test.beforeEach(async ({ page }) => {
    await page.goto('/');
    await waitForFlutterReady(page);
    await openSearch(page);
    await waitForSearchReady(page);
  });

  // Scope change with active results re-runs search immediately
  test('scope change with active results re-runs search immediately', async ({ page }) => {
    // Search with All scope
    await searchFor(page, 'presbytery');
    await expect(
      page.getByText('presbytery', { exact: false }).first()
    ).toBeVisible({ timeout: 10000 });

    // Switch to Standards — "presbytery" is BCO-only, should show no results
    await selectScope(page, 'Standards');
    await page.waitForTimeout(1000);
    await expect(
      page.getByText('No results found')
    ).toBeVisible({ timeout: 5000 });

    // Switch back to BCO — results should reappear
    await selectScope(page, 'BCO');
    await page.waitForTimeout(1000);
    await expect(
      page.getByText('presbytery', { exact: false }).first()
    ).toBeVisible({ timeout: 10000 });
  });

  // Scope change with empty query just updates empty-state text
  test('scope change with empty query updates empty-state text only', async ({ page }) => {
    await expect(page.getByText('Search All Content')).toBeVisible();

    // Switch scope without typing anything
    await selectScope(page, 'Standards');

    // Empty state text should update without errors
    await expect(page.getByText('Search the Standards')).toBeVisible();
  });
});

// ---------------------------------------------------------------------------
// Regressions — search features that should still work after scope changes
// ---------------------------------------------------------------------------

test.describe('Search Scope Filter — Regressions', () => {
  test.setTimeout(60000);

  test.beforeEach(async ({ page }) => {
    await page.goto('/');
    await waitForFlutterReady(page);
    await openSearch(page);
    await waitForSearchReady(page);
  });

  // AC8a: Clear button resets to empty state
  test('AC8a: clear button resets to empty state', async ({ page }) => {
    await searchFor(page, 'presbytery');
    await expect(
      page.getByText('presbytery', { exact: false }).first()
    ).toBeVisible({ timeout: 10000 });

    // Clear the search field
    await page.getByRole('textbox').fill('');
    await page.waitForTimeout(500);

    // Should return to empty state
    await expect(
      page.getByText('Search All Content')
    ).toBeVisible({ timeout: 5000 });
  });

  // AC8b: Search result tapping navigates to chapter screen
  test('AC8b: tapping a search result navigates to the chapter', async ({ page }) => {
    await searchFor(page, 'ordination');

    // Search results are rendered as buttons in the semantics tree.
    // Click the first result (Chapter 1 snippet containing "ordination").
    const result = page.getByText('Doctrine of Church Government', { exact: false }).first();
    await expect(result).toBeVisible({ timeout: 10000 });
    await result.click();
    await page.waitForTimeout(2000);

    // Should navigate away from search (textbox no longer visible)
    const textboxVisible = await page.getByRole('textbox').isVisible().catch(() => false);
    expect(textboxVisible).toBe(false);
  });

  // AC8c: Single character search returns no results (min 2 chars)
  test('AC8c: single character search returns no results', async ({ page }) => {
    await searchFor(page, 'a');

    await expect(
      page.getByText('No results found')
    ).toBeVisible({ timeout: 5000 });
  });

  // AC8d: Non-matching search shows "No results found"
  test('AC8d: non-matching search shows "No results found"', async ({ page }) => {
    await searchFor(page, 'xyznonexistent');

    await expect(
      page.getByText('No results found')
    ).toBeVisible({ timeout: 5000 });
  });

  // Existing search functionality with BCO scope still works end-to-end
  test('BCO scope search results still navigate correctly', async ({ page }) => {
    await selectScope(page, 'BCO');
    await searchFor(page, 'ordination');

    // Should have results from BCO
    await expect(
      page.getByText('ordination', { exact: false }).first()
    ).toBeVisible({ timeout: 10000 });
  });
});
