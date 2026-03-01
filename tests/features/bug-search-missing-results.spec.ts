import { test, expect, Page } from '@playwright/test';
import { waitForFlutterReady } from '../helpers/common';

/**
 * Tests for the "Search Missing Results" bug fix.
 *
 * Bug spec: docs/features/bug-search-missing-results.md
 *
 * Root cause: BcoRepository.search() had a 3-per-chapter result cap that
 * dropped matches beyond the 3rd occurrence in a single chapter. WLC Ch. 9
 * has 6 occurrences of "immediate", so Q. 90 ("immediate vision") was always
 * dropped. Fix: raised the cap from 3 to 10.
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

  // Collect all unnamed buttons (app bar icons)
  const unnamedIndices: number[] = await page.evaluate(() => {
    const buttons = document.querySelectorAll('flt-semantics[role="button"]');
    const indices: number[] = [];
    buttons.forEach((btn, i) => {
      if (!btn.textContent?.trim()) indices.push(i);
    });
    return indices;
  });

  // Try each unnamed button until we land on the search screen
  for (const idx of unnamedIndices) {
    await page.evaluate((i) => {
      const buttons = document.querySelectorAll('flt-semantics[role="button"]');
      (buttons[i] as HTMLElement).click();
    }, idx);
    await page.waitForTimeout(1500);

    // Check if a textbox appeared (search screen has a text field)
    const textboxVisible = await page.getByRole('textbox').isVisible().catch(() => false);
    if (textboxVisible) return;

    // Not the right button — go back and try next
    await page.goBack();
    await page.waitForTimeout(1000);
  }
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
 * Scroll the search results list to find a specific text match.
 * Flutter's ListView is virtualized — off-screen items don't exist in the
 * semantics tree until scrolled into view.
 *
 * Flutter CanvasKit intercepts wheel events on the glass-pane shadow DOM
 * element. We dispatch WheelEvent directly on it to trigger scrolling.
 */
async function scrollToFindText(page: Page, text: string, maxScrolls = 25): Promise<boolean> {
  for (let i = 0; i < maxScrolls; i++) {
    const found = await page.getByText(text, { exact: false }).isVisible().catch(() => false);
    if (found) return true;

    // Dispatch wheel event on the Flutter glass pane to scroll the list.
    // Flutter's event system listens on the glass pane's shadow root.
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

/** Wait for search content to finish loading (the loading spinner disappears). */
async function waitForSearchReady(page: Page): Promise<void> {
  // Wait until "Loading content for search..." disappears or "Search All Content" appears
  await expect(
    page.getByText('Search All Content')
  ).toBeVisible({ timeout: 30000 });
}

// ---------------------------------------------------------------------------
// Happy-path tests — one per acceptance criterion
// ---------------------------------------------------------------------------

test.describe('Search Missing Results — Happy Path', () => {
  test.setTimeout(60000);

  test.beforeEach(async ({ page }) => {
    await page.goto('/');
    await waitForFlutterReady(page);
    await openSearch(page);
    await waitForSearchReady(page);
  });

  // AC2: "immediate" search returns WLC Q. 90 in results
  test('AC2: searching "immediate" returns WLC Q. 90 with "immediate vision"', async ({ page }) => {
    await searchFor(page, 'immediate');

    // WLC results are below the fold — scroll to find Q. 90's snippet.
    // Flutter ListView is virtualized so we must scroll to materialize items.
    const found = await scrollToFindText(page, 'immediate vision');
    expect(found).toBe(true);
  });

  // AC3: No other previously-visible results are lost by the fix
  test('AC3: searching "immediate" still returns BCO Chapter 21 result', async ({ page }) => {
    await searchFor(page, 'immediate');

    // BCO Ch. 21 "The Ordination and Installation of Ministers" was always returned
    await expect(
      page.getByText('Ordination and Installation', { exact: false })
    ).toBeVisible({ timeout: 10000 });
  });

  test('AC3b: searching "immediate" still returns BCO Chapter 12 result', async ({ page }) => {
    await searchFor(page, 'immediate');

    // BCO Ch. 12 "The Church Session" was always returned
    await expect(
      page.getByText('Church Session', { exact: false })
    ).toBeVisible({ timeout: 10000 });
  });

  // AC2 variant: trailing space — spec says to test "immediate " too
  test('AC2b: searching "immediate " (trailing space) also returns WLC Q. 90', async ({ page }) => {
    await searchFor(page, 'immediate ');

    // query.trim() strips trailing space, so same results expected
    const found = await scrollToFindText(page, 'immediate vision');
    expect(found).toBe(true);
  });
});

// ---------------------------------------------------------------------------
// Edge cases
// ---------------------------------------------------------------------------

test.describe('Search Missing Results — Edge Cases', () => {
  test.setTimeout(60000);

  test.beforeEach(async ({ page }) => {
    await page.goto('/');
    await waitForFlutterReady(page);
    await openSearch(page);
    await waitForSearchReady(page);
  });

  // Verify WLC Ch. 9 results beyond old cap of 3 are present.
  // AC2 already proves Q. 90 (match #6) appears. This test confirms that
  // Q. 88 (match #4-5) also appears — the word "immediately follow" from Q. 88.
  test('WLC Ch. 9 shows Q. 88 result (was match #4, beyond old cap)', async ({ page }) => {
    await searchFor(page, 'immediate');

    // Q. 88 asks "What shall immediately follow after the resurrection?"
    // The snippet should contain "immediately follow"
    const found = await scrollToFindText(page, 'immediately follow');
    expect(found).toBe(true);
  });

  // Single-character search should return "No results found" (min 2 chars)
  test('single character search returns no results', async ({ page }) => {
    await searchFor(page, 'a');

    // With <2 chars, _performSearch clears results. Since the text field
    // is non-empty, the UI shows "No results found" (not the initial prompt).
    await expect(
      page.getByText('No results found')
    ).toBeVisible({ timeout: 5000 });
  });

  // No-match search shows empty state
  test('search with no matches shows "No results found"', async ({ page }) => {
    await searchFor(page, 'xyznonexistent');

    await expect(
      page.getByText('No results found')
    ).toBeVisible({ timeout: 5000 });
  });
});

// ---------------------------------------------------------------------------
// Regressions — search was modified, verify it still works broadly
// ---------------------------------------------------------------------------

test.describe('Search Missing Results — Regressions', () => {
  test.setTimeout(60000);

  test.beforeEach(async ({ page }) => {
    await page.goto('/');
    await waitForFlutterReady(page);
    await openSearch(page);
    await waitForSearchReady(page);
  });

  // Verify WCF results still appear (different Westminster standard)
  test('search returns WCF results for "predestination"', async ({ page }) => {
    await searchFor(page, 'predestination');

    // "predestination" appears in WCF — scroll if needed
    const found = await scrollToFindText(page, 'predestination');
    expect(found).toBe(true);
  });

  // Verify BCO results still appear for a different term
  test('search returns BCO results for "presbytery"', async ({ page }) => {
    await searchFor(page, 'presbytery');

    // Should find many results across BCO
    await expect(
      page.getByText('presbytery', { exact: false }).first()
    ).toBeVisible({ timeout: 10000 });
  });

  // Verify clearing search resets to empty state
  test('clearing search field returns to initial state', async ({ page }) => {
    await searchFor(page, 'immediate');

    // Verify results appeared
    await expect(
      page.getByText('immediate', { exact: false }).first()
    ).toBeVisible({ timeout: 10000 });

    // Clear the field
    await page.getByRole('textbox').fill('');
    await page.waitForTimeout(500);

    // Should see the empty state prompt
    await expect(
      page.getByText('Search All Content')
    ).toBeVisible({ timeout: 5000 });
  });
});
