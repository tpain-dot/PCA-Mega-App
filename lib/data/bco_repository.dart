import 'package:flutter/services.dart';
import 'package:html/parser.dart' as html_parser;
import '../models/bco_models.dart';
import 'bco_structure.dart';
import 'westminster_structure.dart';

/// Defines which document collection the global search should search.
enum SearchScope { all, bco, standards }

class BcoRepository {
  final Map<String, String> _contentCache = {};

  /// Load HTML content for a chapter from bundled assets.
  Future<String?> loadAsset(String chapterId) async {
    if (_contentCache.containsKey(chapterId)) {
      return _contentCache[chapterId];
    }

    try {
      final path = BcoStructure.assetPath(chapterId);
      final content = await rootBundle.loadString(path);
      _contentCache[chapterId] = content;
      return content;
    } catch (e) {
      return null;
    }
  }

  /// Load content for all chapters in a section.
  Future<void> loadSectionChapters(BcoSection section) async {
    for (final chapter in section.chapters) {
      if (chapter.htmlContent != null) continue;
      final content = await loadAsset(chapter.id);
      if (content != null) {
        chapter.htmlContent = content;
        chapter.plainText = _stripHtml(content);
      }
    }
  }

  /// Load content for a single chapter.
  Future<void> loadChapterContent(BcoChapter chapter) async {
    if (chapter.htmlContent != null) return;
    final content = await loadAsset(chapter.id);
    if (content != null) {
      chapter.htmlContent = content;
      chapter.plainText = _stripHtml(content);
    }
  }

  /// Search across loaded content, filtered by [scope].
  ///
  /// [scope] controls which collection is searched:
  ///   - all: BCO + Westminster Standards (default, existing behaviour)
  ///   - bco: BCO chapters only
  ///   - standards: Westminster Standards only
  List<SearchResult> search(String query, {SearchScope scope = SearchScope.all}) {
    final results = <SearchResult>[];
    final lowerQuery = query.toLowerCase();

    // Select chapters based on the requested scope.
    final List<BcoChapter> chaptersToSearch;
    switch (scope) {
      case SearchScope.all:
        chaptersToSearch = [
          ...BcoStructure.allChapters,
          ...WestminsterStructure.allChapters,
        ];
      case SearchScope.bco:
        chaptersToSearch = BcoStructure.allChapters;
      case SearchScope.standards:
        chaptersToSearch = WestminsterStructure.allChapters;
    }

    for (final chapter in chaptersToSearch) {
      final text = chapter.plainText;
      if (text == null) continue;

      final lowerText = text.toLowerCase();
      var searchFrom = 0;
      while (true) {
        final idx = lowerText.indexOf(lowerQuery, searchFrom);
        if (idx == -1) break;

        final snippetStart = (idx - 60).clamp(0, text.length);
        final snippetEnd = (idx + query.length + 60).clamp(0, text.length);
        var snippet = text.substring(snippetStart, snippetEnd).trim();
        if (snippetStart > 0) snippet = '...$snippet';
        if (snippetEnd < text.length) snippet = '$snippet...';

        results.add(SearchResult(
          chapter: chapter,
          snippet: snippet,
          matchIndex: idx,
        ));

        searchFrom = idx + query.length;

        if (results.where((r) => r.chapter.id == chapter.id).length >= 10) break;
      }
    }
    return results;
  }

  /// Load all content for search indexing (BCO + Westminster Standards).
  Future<void> loadAllContent() async {
    for (final section in BcoStructure.sections) {
      await loadSectionChapters(section);
    }
    for (final standard in WestminsterStructure.standards) {
      await loadSectionChapters(standard);
    }
  }

  String _stripHtml(String html) {
    final doc = html_parser.parse(html);
    return doc.body?.text ?? '';
  }
}
