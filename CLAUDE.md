# PCA Polity App — CLAUDE.md

## Project Overview

Flutter app for reading PCA Book of Church Order and related documents. Deployed to GitHub Pages via GitHub Actions (`flutter build web --release --base-href /PCA-Mega-App/`).

Key packages: `flutter_html`, `flutter_html_table`, `pdfrx`, `provider`, `google_fonts`, `url_launcher`.

## How to Work on This Project

### For any new feature:
1. Read the workflow process in `docs/workflows/steering-doc.md` and follow it.
2. Read the feature spec in `docs/features/<feature-name>.md` — this describes what to build.
3. Read any relevant skill docs from `docs/skills/` before starting implementation.

### Documentation structure:
- **`docs/workflows/steering-doc.md`** — The standard process for implementing any feature. Follow this every time.
- **`docs/features/`** — Feature specs. Each file describes one feature with requirements and acceptance criteria. Completed features are marked as such and serve as reference.
- **`docs/skills/`** — Domain knowledge accumulated over time. Read before working in that area:
  - **`pdf-conversion.md`** — PDF-to-text extraction pipeline, footnote detection, bullet handling, table detection, font-size anomalies, and the full checklist for adding a new study text version. **Read before any PDF conversion work.**
  - **`navigation-patterns.md`** — TOC navigation, section anchoring, study view routing, deep-linking patterns. **Read before touching navigation or adding navigable content.**
  - **`ui-patterns.md`** — Bottom sheet patterns, search screen conventions, shared UI components. **Read before building new UI that should match existing patterns.**

## Key Files

### Data Layer
- `lib/data/studies_structure.dart` — `StudyDocument` definitions (filename, title, assetPath) for all GA study reports
- `lib/data/study_text_toc.dart` — `StudyTextConfig` class, `studyTextVersions` map, TOC entries per converted study
- `lib/data/study_toc_overrides.dart` — Hand-crafted PDF TOC overrides (page numbers for PDF viewer navigation)
- `lib/data/chapter_toc.dart` — `ChapterTocEntry` class, `chapterTocEntries` map (chapter ID → TOC entries), per-chapter TOC definitions (currently RAO)
- `lib/data/sjc_data.dart` — Standing Judicial Commission case references

### Screens
- `lib/screens/study_text_screen.dart` — HTML text view with flutter_html rendering, TOC drawer, footnote bottom sheets, in-study search, PDF toggle
- `lib/screens/study_search_screen.dart` — In-study search within a single study's HTML content
- `lib/screens/pdf_viewer_screen.dart` — PDF view using pdfrx with TOC drawer, text view toggle, background HTML loading for search
- `lib/screens/studies_screen.dart` — Study list; auto-routes to text or PDF view based on `studyTextVersions`
- `lib/screens/chapter_screen.dart` — BCO chapter view with SJC/commentary bottom sheets, optional TOC drawer
- `lib/screens/search_screen.dart` — Global search across BCO + Westminster Standards

### State Management
- `lib/providers/app_state.dart` — `ChangeNotifier` with font size, serif toggle, dark mode, bookmarks
- Provider pattern via `context.watch<AppState>()`

## Deployment
- GitHub Actions workflow builds and deploys to GitHub Pages
- Build command: `flutter build web --release --base-href /PCA-Mega-App/`
- Local testing: `flutter build web --release` then `python3 -m http.server 9080 --directory build/web`
