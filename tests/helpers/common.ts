import { Page } from '@playwright/test';

/**
 * Wait for the Flutter app to fully load, render the first frame, and
 * activate the accessibility/semantics tree.
 *
 * Flutter web (CanvasKit) draws everything to a `<canvas>` element. The
 * semantics tree (which Playwright needs for `getByText`, `getByRole`, etc.)
 * is NOT created by default — it's lazy-loaded when assistive technology is
 * detected. We activate it by clicking the hidden `<flt-semantics-placeholder>`
 * element that Flutter places at (-1,-1) in the document.
 *
 * Without this step, Playwright cannot see or interact with ANY Flutter content.
 */
export async function waitForFlutterReady(page: Page): Promise<void> {
  await page.waitForSelector('flt-glass-pane', { state: 'attached' });
  await page.waitForTimeout(2000);

  // Activate Flutter's accessibility/semantics tree.
  // The placeholder is positioned off-screen (-1,-1) so we must use JS dispatch.
  await page.evaluate(() => {
    const placeholder = document.querySelector('flt-semantics-placeholder');
    if (placeholder) (placeholder as HTMLElement).click();
  });
  await page.waitForTimeout(2000);
}

/**
 * Enable SJC references and historical commentary via localStorage.
 *
 * Flutter web's SharedPreferences stores values in localStorage with a
 * `flutter.` prefix. Setting these before navigating ensures the icons
 * appear on chapter pages without needing to interact with the settings UI.
 *
 * Call this BEFORE navigating to the app (or reload after calling).
 */
export async function enableReferenceToggles(page: Page): Promise<void> {
  await page.addInitScript(() => {
    localStorage.setItem('flutter.showSjcReferences', 'true');
    localStorage.setItem('flutter.showBcoCommentary', 'true');
  });
}

/**
 * Navigate from the home screen to a specific BCO chapter.
 *
 * @param page Playwright page
 * @param sectionName The section to click on the home screen (e.g., "BCO Part II")
 * @param chapterNumber The chapter number to click (e.g., 34)
 */
export async function navigateToChapter(
  page: Page,
  sectionName: string,
  chapterNumber: number,
): Promise<void> {
  // Click the section on the home screen.
  // Use getByRole('button') with a regex name match. We need .first() because
  // "BCO Part II" also matches "BCO Part III" (Roman numeral prefix).
  await page.getByRole('button', { name: new RegExp(sectionName) }).first().click();
  await page.waitForTimeout(500);

  // Click the chapter in the chapter list.
  // Each chapter is a button with label "34\nSpecial Rules..." so we match
  // the chapter number at the start of the label followed by whitespace.
  await page.getByRole('button', { name: new RegExp(`^${chapterNumber}\\s`) }).click();
  await page.waitForTimeout(2000); // Wait for chapter content to load
}
