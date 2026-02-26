import '../data/bco_commentary.dart';

/// Service that injects historical commentary superscript markers into BCO HTML.
///
/// When the user enables historical commentary in settings, this service scans
/// BCO chapter HTML for section markers (e.g., `<b>1-1</b>`) and appends a
/// small tappable superscript (📝) for sections that have commentary data.
class CommentaryInjectionService {
  CommentaryInjectionService._();

  /// Inject commentary superscripts into chapter HTML content.
  ///
  /// [html] is the raw HTML content from the bundled asset.
  /// [chapterId] identifies which chapter this is (e.g., "ch1", "ch34").
  ///
  /// Returns modified HTML with `<a>` superscript tags appended after
  /// section markers that have commentary entries.
  static String injectCommentary(String html, String chapterId) {
    if (!_isBcoChapter(chapterId)) return html;
    return _injectBcoCommentary(html, chapterId);
  }

  static bool _isBcoChapter(String id) {
    return RegExp(r'^ch\d+$').hasMatch(id) ||
        id == 'preface' ||
        id.startsWith('app');
  }

  /// Build the commentary superscript HTML snippet.
  static String _buildSup(String key) {
    return '<a href="commentary://$key">'
        '<sup style="color: #5C7A8A; font-size: 0.7em; '
        'font-weight: bold;">'
        '\u2009\uD83D\uDCDD</sup></a>';
  }

  /// BCO section markers appear in three HTML format variants
  /// (same patterns as SjcInjectionService).
  static String _injectBcoCommentary(String html, String chapterId) {
    final chapterNum = chapterId.replaceFirst('ch', '');

    // Pattern 1 & 2: <b>XX-YY</b>. or <b>XX-YY.</b>
    final boldPattern = RegExp(
      r'(<b>' +
          RegExp.escape(chapterNum) +
          r'-(\d+(?:\.\d+)?)\.?\s*</b>\.?)',
    );

    var result = html.replaceAllMapped(boldPattern, (match) {
      final fullMatch = match.group(1)!;
      final sectionNum = match.group(2)!;
      final key = 'bco_$chapterNum-$sectionNum';
      final refs = BcoCommentaryData.forSection(key);
      if (refs.isEmpty) return fullMatch;
      // Avoid injecting if commentary marker already present
      if (fullMatch.contains('commentary://')) return fullMatch;
      return '$fullMatch${_buildSup(key)}';
    });

    // Pattern 3: <strong>XX-YY.</strong> (sometimes inside <span>)
    final strongPattern = RegExp(
      r'(<strong>' +
          RegExp.escape(chapterNum) +
          r'-(\d+(?:\.\d+)?)\.?\s*</strong>)',
    );

    result = result.replaceAllMapped(strongPattern, (match) {
      final fullMatch = match.group(1)!;
      final sectionNum = match.group(2)!;
      final key = 'bco_$chapterNum-$sectionNum';
      final refs = BcoCommentaryData.forSection(key);
      if (refs.isEmpty) return fullMatch;
      if (fullMatch.contains('commentary://')) return fullMatch;
      return '$fullMatch${_buildSup(key)}';
    });

    return result;
  }
}
