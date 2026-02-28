# PCA Polity App — Architecture Notes

## Project Overview

Flutter app for reading PCA Book of Church Order and related documents. Deployed to GitHub Pages via GitHub Actions (`flutter build web --release --base-href /PCA-Mega-App/`).

Key packages: `flutter_html`, `flutter_html_table`, `pdfrx`, `provider`, `google_fonts`, `url_launcher`.

## PDF-to-Text Conversion Pipeline

### Overview

Some study reports (under `assets/studies/`) have been converted from PDF-only to a rich text view with clickable footnotes, italic/bold preservation, and table-of-contents navigation. The conversion uses a Python script with **PyMuPDF (`fitz`)** for span-level extraction.

### Pipeline Steps

1. **Extract** — Python script at `/tmp/clean_creation.py` uses `fitz.open()` + `page.get_text("dict")` to get per-span font metadata (italic, bold, superscript flags, font size, x/y position).

2. **Separate body from footnotes** — For each page, lines are sorted by y-position. Scanning from the bottom, lines with all-small fonts (< 11pt) form the footnote zone. Footnote numbers are in separate small-font spans (typically ~6.5pt, but can be up to ~8pt due to PDF font anomalies); footnote text is ~10pt. Body text is ~12pt.

3. **Detect section headings** — Two-line pattern matching: a marker line (e.g., "IV.") followed by a title line (e.g., "Description of the Main Interpretations..."). The `HEADING_MATCHERS` dict maps section IDs to `(marker_pattern, title_pattern)` tuples. Sub-sections are disambiguated by requiring position after parent section.

4. **Build paragraphs** — Body lines are grouped into paragraphs by y-gap threshold (>20px between lines signals a paragraph break, vs ~14px normal line spacing). Page boundaries also force paragraph breaks. Bullet characters (U+2022 "•") are detected and converted to proper `<ul>/<li>` markup (see bullet list handling below).

5. **Generate HTML** — Italic spans become `<em>`, bold becomes `<strong>`. Superscript footnote references become `<a href="footnote://N"><sup>N</sup></a>` links. Sections are wrapped in `<div id="sec-X">` for TOC navigation.

6. **Output** — Two files per converted study:
   - `assets/studies/<name>.html` — Clean HTML with section divs, formatted text, footnote links
   - `assets/studies/<name>_footnotes.json` — `{"1": "footnote text...", "2": "...", ...}`

### Key Patterns in PDF Extraction

- **Line numbers**: Left-margin block at x < 85, digits only — skip these
- **Page numbers**: 4-digit numbers (2300+) at page bottom — skip these
- **Page headers**: Repeated title text on every page — skip these
- **Footnote zone detection**: Scan from bottom; use `is_footnote_zone_line` (allows short punctuation in larger fonts) and `has_footnote_number` (first span is a small-font digit). **Important:** Footnote number font sizes vary across PDFs and even within a single PDF (e.g., most at ~6.5pt but some at ~8pt due to font substitution). Always run a diagnostic scan of all footnote number sizes and set the threshold with a safe margin below footnote body text (~10pt)
- **Footnote number font-size anomalies**: Some PDFs have inconsistent footnote number sizes (e.g., most at 6.48pt but a few at 8.04pt due to font substitution like Calibri mixed into TimesNewRoman). When writing a new extraction script, run a diagnostic scan printing every footnote-zone first-span font size to find the correct threshold. The threshold must be above the largest footnote number size but below footnote body text (~10pt)
- **Floating superscripts**: Small-font standalone digit lines among body text — attach to nearest body line as superscript spans
- **Mixed-size footnote lines**: Some footnotes have `[12.0]'"'` spans for punctuation — the `PUNCT_CHARS` allowlist handles these
- **Bullet list detection**: PDFs may use different bullet Unicode characters — known variants include U+2022 "•" (BULLET) and U+25CF "●" (BLACK CIRCLE). All bullet characters should be collected in a single set (e.g., `BULLET_CHARS`) so detection, stripping, and preprocessing handle them uniformly. Bullets appear in two forms that require different handling:
  - *Standalone bullet markers*: A separate line at ~10pt containing only a bullet character, with the item text on adjacent lines at ~12pt. The bullet and text lines have nearly the same y-position (within ±5px) but different x-positions. These must be pre-merged with their text lines by matching y-proximity (see `preprocess_bullets()`).
  - *Inline bullets*: The bullet character is the first span on a 12pt line, followed immediately by text. No pre-merging needed.
  - After normalization, the bullet's **x-position** distinguishes paragraph-level markers (x ≤ 100, rendered as `<p>`) from list-level markers (x > 100, rendered as `<li>` in `<ul>`). This threshold works because paragraph text sits at x≈72–93 while nested list bullets are at x≈108–130.
  - Lists can span page breaks — only same-page y-gap breaks exit list mode, not page crossings.
  - `flutter_html` natively renders `<ul>/<li>` — no Flutter code changes needed for list support.
- **Sub-heading HTML preservation**: When a sub-heading is detected within a paragraph, extract the remaining text using regex on the original HTML (not by stripping all tags and re-escaping), to preserve inline formatting like footnote `<a>` links and `<em>`/`<strong>` tags
- **Table detection and formatting**: Some PDFs contain two-column tables (e.g., Bible reference lists, comparison tables, signature blocks). These are detected using manual `TABLE_REGIONS` configuration, not automatic heuristics, to avoid false positives on indented text or multi-column layouts. Both `/tmp/clean_women_ministry.py` and `/tmp/clean_creation.py` have table support.
  - Each table region is defined by: `starts_after` (marker text before the table), `ends_before` (marker text after, or `None` for tables at end of section/document), and `left_col_x_max` (x-position boundary between columns)
  - Run an x-position diagnostic on the table's page to determine the column boundary. Print all spans' x/y positions and identify the two x-position clusters (e.g., references at x≈93.6, text at x≈166.6, boundary at x=150). For tables spanning multiple pages, ensure the threshold works for both pages' x-positions
  - Lines at the same y-position (within 3px tolerance) are merged into visual rows, since PyMuPDF may report the left and right column content as separate lines at slightly different y-values
  - Each visual row's spans are split by x-position into left and right columns. The `row_start` field controls how new rows are detected — three modes:
    - `'left_col'` (default): New row whenever the left column has any content. Simplest mode, works for tables where each row fits on one line
    - `'capitalized'`: New row when the left column starts with an uppercase letter. For tables where both columns have wrapping text (e.g., sentence pairs). Handles continuation lines that start lowercase or with quotes
    - `'bible_ref'`: New row when a Bible reference regex (`BIBLE_REF_RE`) matches at the start of left-column text. For reference tables where merged spans may contain both the reference and overflow text — the regex splits them
  - `starts_after` marker text must appear on a single PDF line. If the marker phrase is split across lines, use the portion that appears on one line (e.g., `"sentences:"` instead of `"these sentences:"`)
  - Output is `<table>` HTML with `<tr>`/`<td>` elements. The `flutter_html_table` package (`TableHtmlExtension`) handles rendering on the Dart side
  - Table content is searchable — `StudySearchScreen` strips `<table>`/`<td>` tags to plain text via `html_parser.parse()`

### Adding a New Study Text Version

1. Copy the Python script pattern from `/tmp/clean_creation.py`
2. Update `SECTIONS`, `HEADING_MATCHERS`, and `SUB_HEADINGS` for the new document's structure
3. Run a font-size diagnostic on the PDF's footnote zones to identify the correct `has_footnote_number` threshold — footnote number sizes can vary within a single PDF due to font substitution artifacts
4. Scan for bullet characters in the PDF body text — check for multiple Unicode variants (U+2022 "•", U+25CF "●", and others). If present, add them to the `BULLET_CHARS` set and determine whether they appear as standalone lines or inline with text, and what x-positions distinguish paragraph-level bullets from list-level bullets. Adjust `PARAGRAPH_BULLET_X_MAX` threshold if needed
5. Scan for tables in the PDF. If present, run an x-position diagnostic on the table's page, define a `TABLE_REGIONS` entry with `starts_after`, `ends_before` (or `None`), `left_col_x_max`, and choose the appropriate `row_start` mode: `'left_col'` for simple one-line rows, `'capitalized'` for wrapping text rows, or `'bible_ref'` for Bible reference tables
6. Run the script to generate HTML + JSON into `assets/studies/`
6. Add entry to `studyTextVersions` map in `lib/data/study_text_toc.dart`:
   ```dart
   'new_report.pdf': StudyTextConfig(
     htmlAssetPath: 'assets/studies/new_report.html',
     footnotesAssetPath: 'assets/studies/new_report_footnotes.json',
     toc: newReportToc,
   ),
   ```
7. Define the TOC entries (list of `StudyTocEntry` with `sectionId`, `title`, `children`)
8. The `StudiesScreen` automatically detects text-enabled studies and routes to `StudyTextScreen`

### Adding TOC Navigation to a BCO Chapter

1. Add `<div id="section-id">` wrappers around each navigable section in the HTML asset (`assets/bco_content/<chapter>.html`). Use the pattern `<div id="article-N">` or `<div id="chapter-N">` as appropriate
2. Define TOC entries in `lib/data/chapter_toc.dart` as a `List<ChapterTocEntry>` with `sectionId`, `title`, and optional `children`
3. Add the list to `chapterTocEntries` map keyed by the chapter's `id` from `bco_structure.dart`
4. `ChapterScreen` automatically detects the entries and shows the TOC drawer — no screen changes needed

## Key Files

### Data Layer
- `lib/data/studies_structure.dart` — `StudyDocument` definitions (filename, title, assetPath) for all GA study reports
- `lib/data/study_text_toc.dart` — `StudyTextConfig` class, `studyTextVersions` map, TOC entries per converted study
- `lib/data/study_toc_overrides.dart` — Hand-crafted PDF TOC overrides (page numbers for PDF viewer navigation)
- `lib/data/chapter_toc.dart` — `ChapterTocEntry` class, `chapterTocEntries` map (chapter ID → TOC entries), per-chapter TOC definitions (currently RAO)
- `lib/data/sjc_data.dart` — Standing Judicial Commission case references

### Screens
- `lib/screens/study_text_screen.dart` — HTML text view with:
  - `flutter_html` rendering with `<em>`/`<strong>`/`<sup>` styles + `TableHtmlExtension` for `<table>` support
  - TOC drawer (endDrawer) with expandable tree from `StudyTocEntry` list
  - `GlobalKey` + `Scrollable.ensureVisible()` for section navigation
  - `footnote://` URL handler → `_showFootnoteBottomSheet()` with `DraggableScrollableSheet`
  - In-study search button → pushes `StudySearchScreen`, scrolls to returned section
  - PDF toggle button → `Navigator.pushReplacement` to `PdfViewerScreen`
  - `initialSectionId` param for deep-linking to a section on load
  - Font size / serif controls via AppState
- `lib/screens/study_search_screen.dart` — In-study search that searches within a single study's HTML:
  - Splits HTML by `<div id="sec-X">` boundaries, strips each to plain text via `html/parser.dart`
  - Section-by-section substring search, max 3 results per section
  - Snippet extraction: 60 chars before/after match with ellipsis, highlighted match text
  - Returns section ID via `Navigator.pop` on result tap — caller scrolls to that section
  - Reuses visual patterns from `SearchScreen` (debounce, empty/no-results states, highlighted snippets)
- `lib/screens/pdf_viewer_screen.dart` — PDF view using `pdfrx` package with:
  - TOC drawer from embedded outline or `studyTocOverrides`
  - Text view toggle button (conditional on `studyTextVersions[_filename]`) → `Navigator.pushReplacement` to `StudyTextScreen`
  - In-study search button (conditional on HTML loaded in background) → pushes `StudySearchScreen`, switches to text view on result tap
- `lib/screens/studies_screen.dart` — Study list; auto-routes to text or PDF view based on `studyTextVersions`
- `lib/screens/chapter_screen.dart` — BCO chapter view with:
  - SJC citations (`sjc://`) and commentary (`commentary://`) bottom sheets
  - Optional TOC drawer (endDrawer) when `chapterTocEntries` has data for the current chapter
  - `GlobalKey` + `Scrollable.ensureVisible()` for section navigation (same pattern as `StudyTextScreen`)
  - HTML split by `<div id="...">` boundaries for section anchoring when TOC is active

### Search
- `lib/screens/search_screen.dart` — Global search across BCO + Westminster Standards (via `AppState.search()` → `BcoRepository.search()`)
- `lib/screens/study_search_screen.dart` — In-study search within a single study's HTML content
- When inside a study (text or PDF view), the search button opens `StudySearchScreen` instead of the global `SearchScreen`
- `shared_actions.dart` provides the global search button; study screens pass `showSearch: false` and add their own search button

### Study View Navigation
- `StudiesScreen` → auto-routes to `StudyTextScreen` (if text version exists) or `PdfViewerScreen`
- `StudyTextScreen` ↔ `PdfViewerScreen` toggle via `Navigator.pushReplacement` (back button returns to studies list)
- `PdfViewerScreen` looks up `studyTextVersions[_filename]` to check if text toggle should appear
- `PdfViewerScreen` pre-loads study HTML in background so search is available without switching views
- Search from PDF view: opens `StudySearchScreen` → on result tap, switches to text view with `initialSectionId`

### Citation/Footnote Bottom Sheet Pattern
All citation/footnote bottom sheets follow the same structure (see `chapter_screen.dart` `_showSjcBottomSheet()` as canonical example):
- `showModalBottomSheet` with `isScrollControlled: true`
- `DraggableScrollableSheet` with drag handle, icon + title header, divider, scrollable content
- Custom URL scheme in `onLinkTap` (e.g., `sjc://`, `commentary://`, `footnote://`)
- Accent color for the icon (SJC: `0xFF8B5E3C`, footnotes: `0xFF6B4C3B`)

### State Management
- `lib/providers/app_state.dart` — `ChangeNotifier` with font size, serif toggle, dark mode, bookmarks
- Provider pattern via `context.watch<AppState>()`

## Deployment
- GitHub Actions workflow builds and deploys to GitHub Pages
- Build command: `flutter build web --release --base-href /PCA-Mega-App/`
- Local testing: `flutter build web --release` then `python3 -m http.server 9080 --directory build/web`
