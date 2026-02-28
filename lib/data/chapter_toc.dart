/// A table of contents entry for a BCO chapter with section anchors.
class ChapterTocEntry {
  final String sectionId;
  final String title;
  final List<ChapterTocEntry> children;

  const ChapterTocEntry({
    required this.sectionId,
    required this.title,
    this.children = const [],
  });
}

/// RAO Articles I through XX.
const raoToc = [
  ChapterTocEntry(
      sectionId: 'article-1',
      title: 'Article I. Organization of a General Assembly\'s Meeting'),
  ChapterTocEntry(sectionId: 'article-2', title: 'Article II. The Moderator'),
  ChapterTocEntry(
      sectionId: 'article-3', title: 'Article III. The Stated Clerk'),
  ChapterTocEntry(
      sectionId: 'article-4', title: 'Article IV. Committees and Agencies'),
  ChapterTocEntry(
      sectionId: 'article-5',
      title: 'Article V. Administrative Committee of General Assembly'),
  ChapterTocEntry(
      sectionId: 'article-6', title: 'Article VI. Program Committees'),
  ChapterTocEntry(
      sectionId: 'article-7',
      title: 'Article VII. The Cooperative Ministries Committee'),
  ChapterTocEntry(
      sectionId: 'article-8', title: 'Article VIII. Special Committees'),
  ChapterTocEntry(
      sectionId: 'article-9', title: 'Article IX. Ad Interim Committees'),
  ChapterTocEntry(
      sectionId: 'article-10', title: 'Article X. The Assembly Arrangements'),
  ChapterTocEntry(
      sectionId: 'article-11',
      title: 'Article XI. Communications and Overtures'),
  ChapterTocEntry(
      sectionId: 'article-12',
      title: 'Article XII. Reports to the General Assembly'),
  ChapterTocEntry(
      sectionId: 'article-13', title: 'Article XIII. New Business'),
  ChapterTocEntry(
      sectionId: 'article-14',
      title: 'Article XIV. Committees of Commissioners'),
  ChapterTocEntry(
      sectionId: 'article-15', title: 'Article XV. The Overtures Committee'),
  ChapterTocEntry(
      sectionId: 'article-16',
      title: 'Article XVI. Review of Presbytery Records'),
  ChapterTocEntry(
      sectionId: 'article-17',
      title: 'Article XVII. Standing Judicial Commission'),
  ChapterTocEntry(
      sectionId: 'article-18', title: 'Article XVIII. Assembly Expenses'),
  ChapterTocEntry(
      sectionId: 'article-19',
      title: 'Article XIX. Parliamentary Procedure'),
  ChapterTocEntry(
      sectionId: 'article-20',
      title: 'Article XX. Amendment or Suspension of Rules'),
];

/// OMSJC Chapters 1 through 20 + Appendix.
const omsjcToc = [
  ChapterTocEntry(sectionId: 'chapter-1', title: 'Chapter 1. Membership'),
  ChapterTocEntry(
      sectionId: 'chapter-2',
      title: 'Chapter 2. Conduct of Commission Members'),
  ChapterTocEntry(
      sectionId: 'chapter-3', title: 'Chapter 3. Officers and Their Duties'),
  ChapterTocEntry(sectionId: 'chapter-4', title: 'Chapter 4. Meetings'),
  ChapterTocEntry(sectionId: 'chapter-5', title: 'Chapter 5. Expenses'),
  ChapterTocEntry(sectionId: 'chapter-6', title: 'Chapter 6. Quorum'),
  ChapterTocEntry(
      sectionId: 'chapter-7', title: 'Chapter 7. The Record of the Case'),
  ChapterTocEntry(sectionId: 'chapter-8', title: 'Chapter 8. Briefs'),
  ChapterTocEntry(
      sectionId: 'chapter-9', title: 'Chapter 9. Administrative Procedure'),
  ChapterTocEntry(
      sectionId: 'chapter-10', title: 'Chapter 10. Judicial Panels'),
  ChapterTocEntry(
      sectionId: 'chapter-11',
      title: 'Chapter 11. Hearing by the Full Commission'),
  ChapterTocEntry(
      sectionId: 'chapter-12',
      title: 'Chapter 12. Judicial Reference Case (BCO 41)'),
  ChapterTocEntry(
      sectionId: 'chapter-13',
      title: 'Chapter 13. Hearing an Appeal (BCO 42)'),
  ChapterTocEntry(
      sectionId: 'chapter-14',
      title: 'Chapter 14. Hearing a Complaint (BCO 43)'),
  ChapterTocEntry(
      sectionId: 'chapter-15',
      title: 'Chapter 15. General Review and Control'),
  ChapterTocEntry(
      sectionId: 'chapter-16',
      title: 'Chapter 16. Original Jurisdiction (BCO 34-1)'),
  ChapterTocEntry(
      sectionId: 'chapter-17',
      title: 'Chapter 17. Decisions, Review and Rehearing'),
  ChapterTocEntry(
      sectionId: 'chapter-18', title: 'Chapter 18. Miscellaneous'),
  ChapterTocEntry(sectionId: 'chapter-19', title: 'Chapter 19. Reports'),
  ChapterTocEntry(
      sectionId: 'chapter-20',
      title: 'Chapter 20. Amendments, Use, and Distribution'),
  ChapterTocEntry(sectionId: 'appendix', title: 'Appendix: SJC Member Vows'),
];

/// Corporate Bylaws Articles I through IX.
const bylawsToc = [
  ChapterTocEntry(
      sectionId: 'article-1', title: 'Article I. Name and Location'),
  ChapterTocEntry(
      sectionId: 'article-2',
      title: 'Article II. Members and Meetings of the Corporation'),
  ChapterTocEntry(
      sectionId: 'article-3', title: 'Article III. Board of Directors'),
  ChapterTocEntry(sectionId: 'article-4', title: 'Article IV. Officers'),
  ChapterTocEntry(
      sectionId: 'article-5',
      title: 'Article V. The Particular Permanent Committees'),
  ChapterTocEntry(
      sectionId: 'article-6',
      title: 'Article VI. Other Boards and Agencies'),
  ChapterTocEntry(
      sectionId: 'article-7', title: 'Article VII. Fiscal Matters'),
  ChapterTocEntry(
      sectionId: 'article-8', title: 'Article VIII. Ecclesiastical Matters'),
  ChapterTocEntry(
      sectionId: 'article-9',
      title: 'Article IX. Amendments to the Bylaws'),
];

/// Map from chapter ID to its TOC entries.
/// Only populated for chapters that have section-based TOC navigation.
const Map<String, List<ChapterTocEntry>> chapterTocEntries = {
  'rao': raoToc,
  'omsjc': omsjcToc,
  'bylaws': bylawsToc,
};
