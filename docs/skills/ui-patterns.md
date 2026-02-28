# Skill: UI Patterns

## Citation / Footnote Bottom Sheet Pattern

All citation and footnote bottom sheets follow the same structure. Use `chapter_screen.dart` `_showSjcBottomSheet()` as the canonical example.

### Structure
- `showModalBottomSheet` with `isScrollControlled: true`
- `DraggableScrollableSheet` with drag handle, icon + title header, divider, scrollable content
- Custom URL scheme in `onLinkTap` triggers the sheet (e.g., `sjc://`, `commentary://`, `footnote://`)
- Accent color for the icon varies by type:
  - SJC citations: `0xFF8B5E3C`
  - Footnotes: `0xFF6B4C3B`

### Key files
- `lib/screens/chapter_screen.dart` — SJC and commentary bottom sheets
- `lib/screens/study_text_screen.dart` — footnote bottom sheet via `_showFootnoteBottomSheet()`

### When adding a new bottom sheet type
Follow the same pattern: custom URL scheme → `onLinkTap` handler → `showModalBottomSheet` → `DraggableScrollableSheet` with the standard layout.

### Inline icon tap targets (SJC / commentary icons)
SJC and commentary icons are rendered via `IconTapTargetExtension` (`lib/widgets/icon_tap_target_extension.dart`), a custom `HtmlExtension` that handles `<sjc-icon>` and `<commentary-icon>` tags emitted by the injection services. Key points:
- Icons are 44×44 logical pixel tap targets (`SizedBox(width: 44, height: 44)` with `GestureDetector(behavior: HitTestBehavior.opaque)`). **Do not use `ConstrainedBox` with only min constraints + `Center` inside a `WidgetSpan`** — `Center` will expand to fill the full line width.
- `WidgetSpan(alignment: PlaceholderAlignment.middle)` keeps the box inline without displacing the text baseline. The visual icon is offset upward via `Transform.translate` for superscript appearance.
- The extension is instantiated per build (not const) because it captures `fontSize` and tap callbacks. Pass it to every `Html()` widget in the screen via `extensions: [iconExtension]`.
- Injection order matters: commentary injects first, SJC injects second (both in `_prepareHtml`). The HTML ends up as: `...section marker... <sjc-icon>...</sjc-icon><commentary-icon>...</commentary-icon>...`

## Search Screen Patterns

### Global Search
- `lib/screens/search_screen.dart` — searches across BCO + Westminster Standards
- Uses `AppState.search()` → `BcoRepository.search()`

### In-Study Search
- `lib/screens/study_search_screen.dart` — searches within a single study's HTML
- Splits HTML by `<div id="sec-X">` boundaries, strips each to plain text via `html/parser.dart`
- Section-by-section substring search, max 3 results per section
- Snippet extraction: 60 chars before/after match with ellipsis, highlighted match text
- Returns section ID via `Navigator.pop` on result tap — caller scrolls to that section

### Shared Conventions
Both search screens use:
- Debounced text input
- Empty state and no-results state handling
- Highlighted match text in result snippets
- `shared_actions.dart` provides the global search button; study screens pass `showSearch: false` and add their own in-study search button

## Font / Display Controls

- Font size and serif toggle controlled via `AppState` (`ChangeNotifier`)
- Accessed via `context.watch<AppState>()`
- `StudyTextScreen` exposes these controls for the text view

## flutter_html Rendering

Study text screens use `flutter_html` with these configured styles:
- `<em>` → italic
- `<strong>` → bold
- `<sup>` → superscript styling
- `TableHtmlExtension` for `<table>` support (from `flutter_html_table` package)
- Custom `onLinkTap` for `footnote://` URLs
