import { test, expect, Page } from '@playwright/test';
import { waitForFlutterReady, enableReferenceToggles, navigateToChapter } from '../helpers/common';
import { IDS } from '../helpers/identifiers';

/**
 * Tests for the "Improve SJC & Commentary Icon Tap Targets" feature.
 *
 * Feature spec: docs/features/improve-icon-tap-targets.md
 *
 * These tests verify that the SJC (⚖) and commentary (📝) icons in BCO
 * chapter views have proper 44×44 tap targets, open the correct bottom
 * sheets, and don't overlap when adjacent.
 *
 * Test chapter: BCO Chapter 34 — has both SJC and commentary icons,
 * including adjacent icons on section 34-1.
 *
 * Icon locators use `flt-semantics-identifier` attributes set by the
 * `Semantics(identifier: '...')` wrapper in `icon_tap_target_extension.dart`.
 */

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/** Navigate to BCO Chapter 34 with SJC + commentary enabled. */
async function setupChapter34(page: Page): Promise<void> {
  await enableReferenceToggles(page);
  await page.goto('/');
  await waitForFlutterReady(page);
  await navigateToChapter(page, 'BCO Part II', 34);
}

/** Locate the first SJC icon by its semantics identifier. */
function sjcIcon(page: Page) {
  return page.locator(`[flt-semantics-identifier="${IDS.SJC_ICON}"]`).first();
}

/** Locate the first commentary icon by its semantics identifier. */
function commentaryIcon(page: Page) {
  return page.locator(`[flt-semantics-identifier="${IDS.COMMENTARY_ICON}"]`).first();
}

/** Locate ALL SJC icons by their semantics identifier. */
function allSjcIcons(page: Page) {
  return page.locator(`[flt-semantics-identifier="${IDS.SJC_ICON}"]`);
}

// ---------------------------------------------------------------------------
// Happy-path tests — one per acceptance criterion
// ---------------------------------------------------------------------------

test.describe('Icon Tap Targets — Happy Path', () => {
  test.beforeEach(async ({ page }) => {
    await setupChapter34(page);
  });

  // AC1: SJC icons have a tap target of at least 44x44 logical pixels
  test('AC1: SJC icon tap target is at least 44x44', async ({ page }) => {
    const icon = sjcIcon(page);
    await expect(icon).toBeVisible({ timeout: 10000 });

    const box = await icon.boundingBox();
    expect(box).not.toBeNull();
    expect(box!.width).toBeGreaterThanOrEqual(44);
    expect(box!.height).toBeGreaterThanOrEqual(44);
  });

  // AC2: Commentary icons have a tap target of at least 44x44 logical pixels
  test('AC2: Commentary icon tap target is at least 44x44', async ({ page }) => {
    const icon = commentaryIcon(page);
    await expect(icon).toBeVisible({ timeout: 10000 });

    const box = await icon.boundingBox();
    expect(box).not.toBeNull();
    expect(box!.width).toBeGreaterThanOrEqual(44);
    expect(box!.height).toBeGreaterThanOrEqual(44);
  });

  // AC3: Tapping anywhere within the tap target opens the correct bottom sheet
  test('AC3a: Tapping SJC icon opens SJC bottom sheet', async ({ page }) => {
    const icon = sjcIcon(page);
    await expect(icon).toBeVisible({ timeout: 10000 });
    await icon.click();
    await page.waitForTimeout(1000);

    // Verify the SJC bottom sheet appears with correct content
    await expect(page.getByText('SJC Decisions')).toBeVisible({ timeout: 5000 });
    await expect(page.getByText('BCO 34-1')).toBeVisible();
  });

  test('AC3b: Tapping commentary icon opens commentary bottom sheet', async ({ page }) => {
    const icon = commentaryIcon(page);
    await expect(icon).toBeVisible({ timeout: 10000 });
    await icon.click();
    await page.waitForTimeout(1000);

    // Verify the commentary bottom sheet appears with correct content
    await expect(page.getByText('Historical Commentary')).toBeVisible({ timeout: 5000 });
    await expect(page.getByText('BCO 34-1').first()).toBeVisible();
  });

  // AC4: Adjacent icons do not have overlapping tap targets
  test('AC4: Adjacent SJC and commentary icons do not overlap', async ({ page }) => {
    const sjc = sjcIcon(page);
    const commentary = commentaryIcon(page);

    await expect(sjc).toBeVisible({ timeout: 10000 });
    await expect(commentary).toBeVisible({ timeout: 10000 });

    const sjcBox = await sjc.boundingBox();
    const commentaryBox = await commentary.boundingBox();
    expect(sjcBox).not.toBeNull();
    expect(commentaryBox).not.toBeNull();

    // Two rectangles overlap if one starts before the other ends
    // (in both X and Y dimensions).
    const xOverlap =
      sjcBox!.x < commentaryBox!.x + commentaryBox!.width &&
      sjcBox!.x + sjcBox!.width > commentaryBox!.x;
    const yOverlap =
      sjcBox!.y < commentaryBox!.y + commentaryBox!.height &&
      sjcBox!.y + sjcBox!.height > commentaryBox!.y;

    expect(xOverlap && yOverlap).toBe(false);
  });

  // AC5: Icons maintain natural vertical alignment with surrounding text
  // Verified by checking that the adjacent SJC and commentary icons share the
  // same vertical position (they sit side-by-side on the same text line).
  test('AC5: Adjacent icons are vertically aligned with each other', async ({ page }) => {
    const sjc = sjcIcon(page);
    const commentary = commentaryIcon(page);
    await expect(sjc).toBeVisible({ timeout: 10000 });
    await expect(commentary).toBeVisible({ timeout: 10000 });

    const sjcBox = await sjc.boundingBox();
    const commentaryBox = await commentary.boundingBox();
    expect(sjcBox).not.toBeNull();
    expect(commentaryBox).not.toBeNull();

    // Adjacent icons should be on the same Y level (vertical centers within 5px).
    const sjcCenterY = sjcBox!.y + sjcBox!.height / 2;
    const commentaryCenterY = commentaryBox!.y + commentaryBox!.height / 2;
    expect(Math.abs(sjcCenterY - commentaryCenterY)).toBeLessThan(5);
  });

  // AC6: Visual appearance is clean (no awkward gaps or crowding)
  test('AC6: Icons do not create excessive gaps in text', async ({ page }) => {
    const icon = sjcIcon(page);
    await expect(icon).toBeVisible({ timeout: 10000 });

    const box = await icon.boundingBox();
    expect(box).not.toBeNull();

    // The tap target should be exactly 44px (not excessively wide)
    expect(box!.width).toBeLessThanOrEqual(50); // small tolerance
    expect(box!.height).toBeLessThanOrEqual(50);
  });

  // AC9: No regressions in bottom sheet behavior
  test('AC9a: SJC bottom sheet dismisses when clicking overlay', async ({ page }) => {
    const icon = sjcIcon(page);
    await expect(icon).toBeVisible({ timeout: 10000 });
    await icon.click();
    await page.waitForTimeout(1000);

    // Sheet is visible
    const sheetTitle = page.getByText('SJC Decisions');
    await expect(sheetTitle).toBeVisible({ timeout: 5000 });

    // Dismiss by clicking the overlay area (top of the page, above the sheet)
    await page.mouse.click(100, 50);
    await page.waitForTimeout(1000);

    // Sheet should be gone
    await expect(sheetTitle).not.toBeVisible({ timeout: 5000 });
  });

  test('AC9b: Commentary bottom sheet dismisses when clicking overlay', async ({ page }) => {
    const icon = commentaryIcon(page);
    await expect(icon).toBeVisible({ timeout: 10000 });
    await icon.click();
    await page.waitForTimeout(1000);

    // Sheet is visible
    const sheetTitle = page.getByText('Historical Commentary');
    await expect(sheetTitle).toBeVisible({ timeout: 5000 });

    // Dismiss
    await page.mouse.click(100, 50);
    await page.waitForTimeout(1000);

    // Sheet should be gone
    await expect(sheetTitle).not.toBeVisible({ timeout: 5000 });
  });

  test('AC9c: SJC bottom sheet shows case details with links', async ({ page }) => {
    const icon = sjcIcon(page);
    await expect(icon).toBeVisible({ timeout: 10000 });
    await icon.click();
    await page.waitForTimeout(1000);

    // Verify case content is visible
    await expect(page.getByText('SJC Decisions (2)')).toBeVisible({ timeout: 5000 });
    // Should have "View Full Decision" links
    await expect(page.getByText('View Full Decision').first()).toBeVisible();
  });
});

// ---------------------------------------------------------------------------
// Viewport tests — AC7 (mobile) and AC8 (desktop)
// ---------------------------------------------------------------------------

test.describe('Icon Tap Targets — Mobile Viewport (375px)', () => {
  test.use({ viewport: { width: 375, height: 812 } });

  test('AC7: Icons render and tap correctly on 375px mobile viewport', async ({ page }) => {
    await setupChapter34(page);

    // Icons should be visible
    const sjc = sjcIcon(page);
    await expect(sjc).toBeVisible({ timeout: 10000 });

    // SJC icon should still be at least 44x44
    const box = await sjc.boundingBox();
    expect(box).not.toBeNull();
    expect(box!.width).toBeGreaterThanOrEqual(44);
    expect(box!.height).toBeGreaterThanOrEqual(44);

    // Clicking should open bottom sheet
    await sjc.click();
    await page.waitForTimeout(1000);
    await expect(page.getByText('SJC Decisions')).toBeVisible({ timeout: 5000 });
  });
});

test.describe('Icon Tap Targets — Desktop Viewport (1280px)', () => {
  test.use({ viewport: { width: 1280, height: 800 } });

  test('AC8: Icons render and tap correctly on desktop viewport', async ({ page }) => {
    await setupChapter34(page);

    // Both icon types should be visible
    const sjc = sjcIcon(page);
    const commentary = commentaryIcon(page);
    await expect(sjc).toBeVisible({ timeout: 10000 });
    await expect(commentary).toBeVisible({ timeout: 10000 });

    // Both should have proper tap targets
    const sjcBox = await sjc.boundingBox();
    const commentaryBox = await commentary.boundingBox();
    expect(sjcBox).not.toBeNull();
    expect(commentaryBox).not.toBeNull();
    expect(sjcBox!.width).toBeGreaterThanOrEqual(44);
    expect(commentaryBox!.width).toBeGreaterThanOrEqual(44);

    // Clicking SJC should open SJC sheet
    await sjc.click();
    await page.waitForTimeout(1000);
    await expect(page.getByText('SJC Decisions')).toBeVisible({ timeout: 5000 });
  });
});

// ---------------------------------------------------------------------------
// Edge cases
// ---------------------------------------------------------------------------

test.describe('Icon Tap Targets — Edge Cases', () => {
  test.beforeEach(async ({ page }) => {
    await setupChapter34(page);
  });

  test('Clicking SJC then commentary opens different sheets sequentially', async ({ page }) => {
    // Click SJC icon
    const sjc = sjcIcon(page);
    await expect(sjc).toBeVisible({ timeout: 10000 });
    await sjc.click();
    await page.waitForTimeout(1000);
    await expect(page.getByText('SJC Decisions')).toBeVisible({ timeout: 5000 });

    // Dismiss the SJC sheet
    await page.mouse.click(100, 50);
    await page.waitForTimeout(1000);
    await expect(page.getByText('SJC Decisions')).not.toBeVisible({ timeout: 5000 });

    // Click commentary icon
    const commentary = commentaryIcon(page);
    await commentary.click();
    await page.waitForTimeout(1000);
    await expect(page.getByText('Historical Commentary')).toBeVisible({ timeout: 5000 });
  });

  test('Rapid clicks on icon do not crash the app', async ({ page }) => {
    const icon = sjcIcon(page);
    await expect(icon).toBeVisible({ timeout: 10000 });

    // Click icon then use coordinate-based clicks for rapid follow-up
    // (Playwright locator.click() waits for element stability, but the bottom
    // sheet opening rebuilds the semantics tree, detaching the element).
    const box = await icon.boundingBox();
    expect(box).not.toBeNull();
    const cx = box!.x + box!.width / 2;
    const cy = box!.y + box!.height / 2;

    await page.mouse.click(cx, cy);
    await page.mouse.click(cx, cy);
    await page.mouse.click(cx, cy);
    await page.waitForTimeout(1500);

    // App should still be functional — either bottom sheet is visible or chapter content is present
    const hasSjcText = await page.getByText('SJC Decisions').isVisible().catch(() => false);
    const hasChapterText = await page.getByText('Special Rules', { exact: false }).isVisible().catch(() => false);
    expect(hasSjcText || hasChapterText).toBe(true);
  });

  test('Chapter without SJC icons renders normally', async ({ page }) => {
    test.setTimeout(60000);
    // Navigate directly to Chapter 28 which should have no SJC icons
    // (skip beforeEach's Ch34 navigation — just go straight to Ch28)
    await page.goto('/');
    await waitForFlutterReady(page);
    await navigateToChapter(page, 'BCO Part II', 28);

    // Page should render without errors — look for chapter content
    await expect(page.getByText('Disciplining of Non-communing Members')).toBeVisible({ timeout: 10000 });

    // There should be no SJC icon buttons
    const sjcCount = await allSjcIcons(page).count();
    expect(sjcCount).toBe(0);
  });

  test('All SJC icons on page are 44x44', async ({ page }) => {
    // Verify ALL SJC icons have proper tap targets, not just the first one
    const icons = allSjcIcons(page);
    const count = await icons.count();
    expect(count).toBeGreaterThanOrEqual(2); // Ch34 has at least ⚖1, ⚖2, ⚖3

    for (let i = 0; i < count; i++) {
      const icon = icons.nth(i);
      // Icon might be off-screen; we check bounding box for those that are rendered
      const box = await icon.boundingBox();
      if (box && box.width > 0 && box.height > 0) {
        expect(box.width).toBeGreaterThanOrEqual(44);
        expect(box.height).toBeGreaterThanOrEqual(44);
      }
    }
  });
});
