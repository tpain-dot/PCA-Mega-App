# Feature Spec: Improve SJC & Commentary Icon Tap Targets

## Problem
The SJC case and commentary icons in the BCO and Westminster Standards sections are displayed inline with the text (like superscript markers). They are too small to tap accurately, especially on mobile devices. Users frequently miss the icon and have to tap multiple times to open the citation bottom sheet.

## Context
- Icons appear inline in HTML content rendered by `flutter_html`
- Tapping an icon triggers a custom URL scheme (`sjc://` or `commentary://`) which opens a bottom sheet
- The icons are in `chapter_screen.dart` and related screens
- See `docs/skills/ui-patterns.md` for the bottom sheet pattern

## Requirements

### Increase tap target size
- Each icon's tappable area must be at least **44x44 logical pixels** (Apple's minimum) regardless of the icon's visual size
- This is achieved by adding transparent padding around the icon's `GestureDetector` or `InkWell` — the visual icon can stay small, but the tappable region must be large enough for comfortable finger tapping
- The tap target must not clip or be clipped by surrounding elements

### Maintain visual balance
- The icon itself may be increased slightly in visual size if it improves clarity, but the primary fix is the tap target, not the visual size
- Icons should not visually crowd the surrounding text — if increasing the tap target causes visual overlap with adjacent text or other icons, add appropriate spacing
- Inline vertical alignment should still look natural (icons should sit at a consistent position relative to the text baseline)

### Handle adjacent icons
- When two icons appear near each other (e.g., an SJC citation and a commentary icon on the same line), their tap targets must not overlap
- If tap targets would overlap at 44x44, add horizontal spacing between icons until they don't

## Implementation Guidance
- The fix likely lives in how the custom URL scheme links (`sjc://`, `commentary://`) are rendered by `flutter_html` — check the `onLinkTap` handler and any custom widget builders or style maps applied to these link types
- `flutter_html` allows custom rendering for specific tags/schemes via `extensions` or `style` maps — you may be able to wrap the icon widget in a `Padding` or sized `GestureDetector` at that layer
- Test on both a narrow mobile viewport and a wider desktop viewport to make sure the spacing works for both

## Acceptance Criteria
- [ ] SJC icons have a tap target of at least 44x44 logical pixels
- [ ] Commentary icons have a tap target of at least 44x44 logical pixels
- [ ] Tapping anywhere within the tap target opens the correct bottom sheet
- [ ] Adjacent icons do not have overlapping tap targets
- [ ] Icons maintain natural vertical alignment with surrounding text
- [ ] Visual appearance is clean — no awkward gaps or crowding in the text
- [ ] Works on mobile-width viewport (375px wide)
- [ ] Works on desktop-width viewport
- [ ] No regressions in bottom sheet behavior (content, drag handle, dismiss)
