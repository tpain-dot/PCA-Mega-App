import '../data/sjc_references.dart';

/// Service that injects SJC case law superscript markers into chapter HTML.
///
/// When the user enables SJC references in settings, this service scans
/// the HTML content for section markers (e.g., `<b>34-10</b>`) and appends
/// a small tappable superscript showing how many SJC decisions reference
/// that section.
class SjcInjectionService {
  SjcInjectionService._();

  /// Inject SJC reference superscripts into chapter HTML content.
  ///
  /// [html] is the raw HTML content from the bundled asset.
  /// [chapterId] identifies which chapter this is (e.g., "ch34", "wcf_ch24").
  ///
  /// Returns modified HTML with `<a>` superscript tags appended after
  /// section markers that have SJC references.
  static String injectReferences(String html, String chapterId) {
    if (_isBcoChapter(chapterId)) {
      return _injectBcoReferences(html, chapterId);
    } else if (chapterId.startsWith('wcf_')) {
      return _injectWcfReferences(html, chapterId);
    } else if (chapterId.startsWith('wlc_')) {
      return _injectCatechismReferences(html, 'wlc');
    } else if (chapterId.startsWith('wsc_')) {
      return _injectCatechismReferences(html, 'wsc');
    }
    return html;
  }

  static bool _isBcoChapter(String id) {
    // BCO chapters: ch1, ch2, ..., ch63, also preface, appA-appJ
    return RegExp(r'^ch\d+$').hasMatch(id) ||
        id == 'preface' ||
        id.startsWith('app');
  }

  /// Build the superscript HTML snippet.
  static String _buildSup(String key, int count) {
    return '<a href="sjc://$key">'
        '<sup style="color: #8B5E3C; font-size: 0.7em; '
        'font-weight: bold;">'
        '\u2009\u2696$count</sup></a>';
  }

  // ─────────────────────────────────────────────────────────────
  // BCO chapters
  // ─────────────────────────────────────────────────────────────

  /// BCO section markers appear in three HTML format variants:
  ///
  /// 1. `<b>34-10</b>.`  — dot outside bold
  /// 2. `<b>34-2.</b>`   — dot inside bold
  /// 3. `<strong>38-3.</strong>` — strong variant (sometimes wrapped in spans)
  static String _injectBcoReferences(String html, String chapterId) {
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
      final refs = SjcData.forSection(key);
      if (refs.isEmpty) return fullMatch;
      return '$fullMatch${_buildSup(key, refs.length)}';
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
      final refs = SjcData.forSection(key);
      if (refs.isEmpty) return fullMatch;
      // Avoid double-injection if already matched by bold pattern
      if (fullMatch.contains('sjc://')) return fullMatch;
      return '$fullMatch${_buildSup(key, refs.length)}';
    });

    // Pattern 3b: <span...><strong>XX-YY.</strong>...</span>
    final spanStrongPattern = RegExp(
      r'(<span[^>]*><strong>' +
          RegExp.escape(chapterNum) +
          r'-(\d+(?:\.\d+)?)\.?\s*</strong>\s*</span>)',
    );

    result = result.replaceAllMapped(spanStrongPattern, (match) {
      final fullMatch = match.group(1)!;
      final sectionNum = match.group(2)!;
      final key = 'bco_$chapterNum-$sectionNum';
      final refs = SjcData.forSection(key);
      if (refs.isEmpty) return fullMatch;
      if (fullMatch.contains('sjc://')) return fullMatch;
      return '$fullMatch${_buildSup(key, refs.length)}';
    });

    return result;
  }

  // ─────────────────────────────────────────────────────────────
  // Westminster Confession of Faith
  // ─────────────────────────────────────────────────────────────

  /// WCF section markers: `<b>5.</b>` within wcf_ch24 → key "wcf_24.5"
  static String _injectWcfReferences(String html, String chapterId) {
    final chapterNum = chapterId.replaceFirst('wcf_ch', '');

    // Match numbered sections: <b>1.</b>, <b>2.</b>, etc.
    final pattern = RegExp(r'(<b>(\d+)\.</b>)');
    return html.replaceAllMapped(pattern, (match) {
      final fullMatch = match.group(1)!;
      final sectionNum = match.group(2)!;

      // Try section-specific key first, then chapter-level key
      final sectionKey = 'wcf_$chapterNum.$sectionNum';
      final chapterKey = 'wcf_$chapterNum';

      final refs = <SjcReference>{
        ...SjcData.forSection(sectionKey),
        ...SjcData.forSection(chapterKey),
      }.toList();

      if (refs.isEmpty) return fullMatch;
      return '$fullMatch${_buildSup(sectionKey, refs.length)}';
    });
  }

  // ─────────────────────────────────────────────────────────────
  // Larger & Shorter Catechisms
  // ─────────────────────────────────────────────────────────────

  /// Catechism question markers: `<b>Q. 45.</b>` → key "wlc_45" or "wsc_45"
  static String _injectCatechismReferences(String html, String prefix) {
    final pattern = RegExp(r'(<b>Q\.\s*(\d+)\.</b>)');
    return html.replaceAllMapped(pattern, (match) {
      final fullMatch = match.group(1)!;
      final questionNum = match.group(2)!;
      final key = '${prefix}_$questionNum';
      final refs = SjcData.forSection(key);
      if (refs.isEmpty) return fullMatch;
      return '$fullMatch${_buildSup(key, refs.length)}';
    });
  }
}
