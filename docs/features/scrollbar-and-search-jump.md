# Feature Spec: PDF Scrollbar + Search Jump-to-Match

**Status: COMPLETED**

---

## Feature 1: Custom Scrollbar in PDF Viewer

### Problem
The PDF/report viewer panel has no visible scrollbar track on the right side. Users have to manually scroll (mousewheel/trackpad) with no way to grab and drag a scrollbar thumb to jump through a long document quickly.

### Requirements
- Add a visible, functional scrollbar to the PDF/report viewer container
- The scrollbar should appear on the right edge of the viewer panel
- It must have a draggable thumb that lets users jump to any position in the document
- It should indicate the user's current position within the document
- Clicking on the track (above or below the thumb) should page-jump in that direction
- The scrollbar should work smoothly with whatever rendering approach the PDF viewer uses

### Acceptance Criteria
- [x] Scrollbar is visible on the right side of the PDF viewer
- [x] Dragging the scrollbar thumb scrolls the document proportionally
- [x] Clicking the scrollbar track jumps the view
- [x] Scrollbar thumb size reflects the ratio of visible content to total content
- [x] Works for both short and long documents

---

## Feature 2: Search Jump-to-Exact-Match

### Problem
When a user searches for something and clicks on a search result, the app scrolls to the beginning of the section that contains the match, not to the exact location of the matched text. The user then has to manually scroll within that section to find the highlighted term.

### Requirements
- When a user clicks a search result, the view should scroll directly to the exact position of the matched text
- The matched text should be visually highlighted
- This applies everywhere search exists in the app
- The matched text should be positioned near the top or center of the viewport after scrolling

### Acceptance Criteria
- [x] Clicking a search result scrolls to the exact match location, not the section top
- [x] The matched text is visible in the viewport after clicking (ideally centered or near-top)
- [x] Works in the PDF/report viewer search
- [x] Works in any other search features across the app
- [x] Matched text is visually highlighted
- [x] Behavior is consistent for matches at the beginning, middle, and end of long sections
