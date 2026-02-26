import 'package:flutter/services.dart';
import 'package:html/parser.dart' as html_parser;
import '../models/bco_models.dart';
import 'bco_structure.dart';
import 'westminster_structure.dart';

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

  /// Search across all loaded content.
  List<SearchResult> search(String query) {
    final results = <SearchResult>[];
    final lowerQuery = query.toLowerCase();

    final allChapters = [
      ...BcoStructure.allChapters,
      ...WestminsterStructure.allChapters,
    ];

    for (final chapter in allChapters) {
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

        if (results.where((r) => r.chapter.id == chapter.id).length >= 3) break;
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
