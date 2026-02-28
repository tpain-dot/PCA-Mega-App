# Skill: Navigation Patterns

## TOC Navigation (Studies)

Study text screens use a TOC drawer (endDrawer) with an expandable tree built from `StudyTocEntry` lists. Section anchoring works via `GlobalKey` + `Scrollable.ensureVisible()`:

- HTML is split by `<div id="sec-X">` boundaries
- Each section div gets a `GlobalKey` registered in a map
- TOC tap → looks up the key → `Scrollable.ensureVisible(key.currentContext!, alignment: 0.0)`
- `initialSectionId` param supports deep-linking to a section on load

### Key files
- `lib/screens/study_text_screen.dart` — implements the pattern
- `lib/data/study_text_toc.dart` — `StudyTocEntry` definitions, `studyTextVersions` map

## TOC Navigation (BCO Chapters)

Same anchoring pattern as studies, applied to BCO chapter content:

1. Add `<div id="section-id">` wrappers in the HTML asset (`assets/bco_content/<chapter>.html`). Use `<div id="article-N">` or `<div id="chapter-N">` as appropriate.
2. Define TOC entries in `lib/data/chapter_toc.dart` as a `List<ChapterTocEntry>` with `sectionId`, `title`, and optional `children`.
3. Add the list to `chapterTocEntries` map keyed by the chapter's `id` from `bco_structure.dart`.
4. `ChapterScreen` automatically detects the entries and shows the TOC drawer — no screen changes needed.

### Key files
- `lib/screens/chapter_screen.dart` — `GlobalKey` + `Scrollable.ensureVisible()` (same pattern as `StudyTextScreen`)
- `lib/data/chapter_toc.dart` — `ChapterTocEntry` class, `chapterTocEntries` map
- HTML split by `<div id="...">` boundaries for section anchoring when TOC is active

## Study View Routing

The app has a two-view system for studies: HTML text view and PDF view, with seamless switching between them.

### Flow
- `StudiesScreen` → auto-routes to `StudyTextScreen` (if text version exists in `studyTextVersions`) or `PdfViewerScreen`
- `StudyTextScreen` ↔ `PdfViewerScreen` toggle via `Navigator.pushReplacement` (back button returns to studies list, not the other view)
- `PdfViewerScreen` looks up `studyTextVersions[_filename]` to check if text toggle should appear
- `PdfViewerScreen` pre-loads study HTML in background so search is available without switching views

### Search-to-View Handoff
- Search from PDF view: opens `StudySearchScreen` → on result tap, switches to text view with `initialSectionId`
- Search from text view: opens `StudySearchScreen` → on result tap, pops with section ID, caller scrolls to section
- Inside a study (text or PDF view), the search button opens `StudySearchScreen` instead of the global `SearchScreen`
- `shared_actions.dart` provides the global search button; study screens pass `showSearch: false` and add their own search button

### Key files
- `lib/screens/studies_screen.dart` — routing logic
- `lib/screens/study_text_screen.dart` — text view, receives `initialSectionId`
- `lib/screens/pdf_viewer_screen.dart` — PDF view, background HTML loading, toggle logic
