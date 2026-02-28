import 'dart:async';

import 'package:flutter/material.dart';
import 'package:html/parser.dart' as html_parser;
import '../widgets/shared_actions.dart';
import 'study_text_screen.dart';

/// A search screen that searches within a single study's HTML content.
/// Returns the section ID of the selected result via Navigator.pop.
class StudySearchScreen extends StatefulWidget {
  final String title;
  final String htmlContent;
  final List<StudyTocEntry> toc;

  const StudySearchScreen({
    super.key,
    required this.title,
    required this.htmlContent,
    required this.toc,
  });

  @override
  State<StudySearchScreen> createState() => _StudySearchScreenState();
}

class _StudySearchScreenState extends State<StudySearchScreen> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  List<_StudySearchResult> _results = [];
  bool _isSearching = false;
  Timer? _debounce;

  /// Parsed sections: each has an id, title, and plain text.
  late final List<_SearchableSection> _sections;

  @override
  void initState() {
    super.initState();
    _sections = _buildSearchableSections();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  /// Split the HTML by <div id="sec-X"> boundaries and strip each to plain text.
  List<_SearchableSection> _buildSearchableSections() {
    final divPattern = RegExp(r'<div id="([^"]+)">');
    final matches = divPattern.allMatches(widget.htmlContent).toList();

    if (matches.isEmpty) {
      return [
        _SearchableSection(
          id: 'all',
          title: widget.title,
          plainText: _stripHtml(widget.htmlContent),
        ),
      ];
    }

    // Build a map from section id → title from the TOC
    final tocTitles = <String, String>{};
    for (final entry in _flattenToc(widget.toc)) {
      tocTitles[entry.sectionId] = entry.title;
    }

    final sections = <_SearchableSection>[];
    for (int i = 0; i < matches.length; i++) {
      final match = matches[i];
      final id = match.group(1)!;
      final start = match.start;
      final end =
          i + 1 < matches.length ? matches[i + 1].start : widget.htmlContent.length;
      final sectionHtml = widget.htmlContent.substring(start, end);
      sections.add(_SearchableSection(
        id: id,
        title: tocTitles[id] ?? id,
        plainText: _stripHtml(sectionHtml),
      ));
    }
    return sections;
  }

  List<StudyTocEntry> _flattenToc(List<StudyTocEntry> entries) {
    final flat = <StudyTocEntry>[];
    for (final entry in entries) {
      flat.add(entry);
      flat.addAll(_flattenToc(entry.children));
    }
    return flat;
  }

  String _stripHtml(String html) {
    final doc = html_parser.parse(html);
    return doc.body?.text ?? '';
  }

  void _onSearchChanged(String query) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      _performSearch(query);
    });
  }

  void _performSearch(String query) {
    if (query.trim().length < 2) {
      setState(() {
        _results = [];
        _isSearching = false;
      });
      return;
    }

    setState(() => _isSearching = true);

    final results = <_StudySearchResult>[];
    final lowerQuery = query.trim().toLowerCase();

    for (final section in _sections) {
      final lowerText = section.plainText.toLowerCase();
      var searchFrom = 0;
      var matchCount = 0;

      while (matchCount < 3) {
        final idx = lowerText.indexOf(lowerQuery, searchFrom);
        if (idx == -1) break;

        final snippetStart = (idx - 60).clamp(0, section.plainText.length);
        final snippetEnd =
            (idx + query.trim().length + 60).clamp(0, section.plainText.length);
        var snippet =
            section.plainText.substring(snippetStart, snippetEnd).trim();
        if (snippetStart > 0) snippet = '...$snippet';
        if (snippetEnd < section.plainText.length) snippet = '$snippet...';

        results.add(_StudySearchResult(
          sectionId: section.id,
          sectionTitle: section.title,
          snippet: snippet,
        ));

        searchFrom = idx + query.trim().length;
        matchCount++;
      }
    }

    setState(() {
      _results = results;
      _isSearching = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _controller,
          focusNode: _focusNode,
          onChanged: _onSearchChanged,
          decoration: InputDecoration(
            hintText: 'Search in study...',
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: theme.colorScheme.onSurfaceVariant.withAlpha(150),
            ),
          ),
          style: theme.textTheme.bodyLarge,
        ),
        actions: [
          if (_controller.text.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.clear_rounded),
              onPressed: () {
                _controller.clear();
                _performSearch('');
                _focusNode.requestFocus();
              },
            ),
          ...sharedAppBarActions(context, showSearch: false),
        ],
      ),
      body: _buildBody(theme),
    );
  }

  Widget _buildBody(ThemeData theme) {
    if (_controller.text.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.description_rounded,
                  size: 64,
                  color: theme.colorScheme.primary.withAlpha(35),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.search_rounded,
                      size: 24,
                      color: theme.colorScheme.primary.withAlpha(80),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Search in Study',
              style: theme.textTheme.titleSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                widget.title,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant.withAlpha(140),
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      );
    }

    if (_isSearching) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_results.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off_rounded,
              size: 48,
              color: theme.colorScheme.onSurfaceVariant.withAlpha(80),
            ),
            const SizedBox(height: 16),
            Text(
              'No results found',
              style: theme.textTheme.titleSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: _results.length,
      separatorBuilder: (context, index) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final result = _results[index];

        return ListTile(
          leading: Container(
            width: 4,
            height: 40,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withAlpha(150),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          title: Text(
            result.sectionTitle,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: _buildHighlightedSnippet(
              result.snippet,
              _controller.text.trim(),
              theme,
            ),
          ),
          onTap: () {
            Navigator.pop(
              context,
              StudySearchReturnValue(
                sectionId: result.sectionId,
                searchQuery: _controller.text.trim(),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildHighlightedSnippet(
      String snippet, String query, ThemeData theme) {
    final lowerSnippet = snippet.toLowerCase();
    final lowerQuery = query.toLowerCase();
    final idx = lowerSnippet.indexOf(lowerQuery);

    if (idx == -1) {
      return Text(
        snippet,
        style: theme.textTheme.bodySmall?.copyWith(
          color: theme.colorScheme.onSurfaceVariant,
        ),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      );
    }

    return RichText(
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        style: theme.textTheme.bodySmall?.copyWith(
          color: theme.colorScheme.onSurfaceVariant,
        ),
        children: [
          TextSpan(text: snippet.substring(0, idx)),
          TextSpan(
            text: snippet.substring(idx, idx + query.length),
            style: TextStyle(
              backgroundColor: theme.colorScheme.primaryContainer,
              color: theme.colorScheme.onPrimaryContainer,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: snippet.substring(idx + query.length)),
        ],
      ),
    );
  }
}

class _SearchableSection {
  final String id;
  final String title;
  final String plainText;
  const _SearchableSection({
    required this.id,
    required this.title,
    required this.plainText,
  });
}

class _StudySearchResult {
  final String sectionId;
  final String sectionTitle;
  final String snippet;
  const _StudySearchResult({
    required this.sectionId,
    required this.sectionTitle,
    required this.snippet,
  });
}

/// Result returned from StudySearchScreen to the caller,
/// containing both the section ID and the search query for precise scrolling.
class StudySearchReturnValue {
  final String sectionId;
  final String searchQuery;
  const StudySearchReturnValue({
    required this.sectionId,
    required this.searchQuery,
  });
}
