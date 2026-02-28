import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html_table/flutter_html_table.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../providers/app_state.dart';
import '../widgets/shared_actions.dart';
import 'pdf_viewer_screen.dart';
import 'study_search_screen.dart';

/// A screen that renders a study/report as readable HTML text
/// with a table of contents drawer for section navigation.
class StudyTextScreen extends StatefulWidget {
  final String title;
  final String htmlAssetPath;
  final String pdfAssetPath;
  final String? footnotesAssetPath;
  final List<StudyTocEntry> toc;
  final String? initialSectionId;
  final String? initialSearchQuery;

  const StudyTextScreen({
    super.key,
    required this.title,
    required this.htmlAssetPath,
    required this.pdfAssetPath,
    this.footnotesAssetPath,
    required this.toc,
    this.initialSectionId,
    this.initialSearchQuery,
  });

  @override
  State<StudyTextScreen> createState() => _StudyTextScreenState();
}

class _StudyTextScreenState extends State<StudyTextScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _scrollController = ScrollController();
  String? _htmlContent;
  Map<String, String> _footnotes = {};
  bool _isLoading = true;
  String? _error;

  /// Active search query for highlighting matched text.
  String? _searchQuery;

  // Section positions for TOC navigation
  final Map<String, GlobalKey> _sectionKeys = {};

  /// Key for the paragraph containing the search match, for precise scrolling.
  final _matchParagraphKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _loadHtml();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _loadHtml() async {
    try {
      final html = await rootBundle.loadString(widget.htmlAssetPath);

      // Load footnotes JSON if available
      Map<String, String> footnotes = {};
      if (widget.footnotesAssetPath != null) {
        try {
          final jsonStr =
              await rootBundle.loadString(widget.footnotesAssetPath!);
          final Map<String, dynamic> parsed = json.decode(jsonStr);
          footnotes = parsed.map((k, v) => MapEntry(k, v.toString()));
        } catch (_) {
          // Footnotes are optional; continue without them
        }
      }

      if (mounted) {
        setState(() {
          _htmlContent = html;
          _footnotes = footnotes;
          _isLoading = false;
        });
        // Set search query if provided (for highlighting + precise scroll)
        if (widget.initialSearchQuery != null) {
          _searchQuery = widget.initialSearchQuery;
        }
        // Scroll to initial section/match if provided (e.g. from search result)
        if (widget.initialSectionId != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (_searchQuery != null) {
              _scrollToMatch(widget.initialSectionId!);
            } else {
              _scrollToSection(widget.initialSectionId!);
            }
          });
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
          _isLoading = false;
        });
      }
    }
  }

  void _scrollToSection(String sectionId) {
    final key = _sectionKeys[sectionId];
    if (key?.currentContext != null) {
      Scrollable.ensureVisible(
        key!.currentContext!,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOutCubic,
        alignment: 0.0,
      );
    }
    // Close the drawer
    _scaffoldKey.currentState?.closeEndDrawer();
  }

  /// Scroll to the paragraph containing the search match within a section.
  void _scrollToMatch(String sectionId) {
    // Try the precise match paragraph key first
    if (_matchParagraphKey.currentContext != null) {
      Scrollable.ensureVisible(
        _matchParagraphKey.currentContext!,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOutCubic,
        alignment: 0.15, // Position near top with some context above
      );
    } else {
      // Fall back to section-level scroll
      _scrollToSection(sectionId);
    }
    _scaffoldKey.currentState?.closeEndDrawer();
  }

  void _showFootnoteBottomSheet(BuildContext context, String footnoteNum) {
    final text = _footnotes[footnoteNum];
    if (text == null || text.isEmpty) return;

    final theme = Theme.of(context);
    const accentColor = Color(0xFF6B4C3B);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.3,
          minChildSize: 0.15,
          maxChildSize: 0.6,
          expand: false,
          builder: (context, scrollController) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Drag handle
                  Center(
                    child: Container(
                      width: 36,
                      height: 4,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onSurfaceVariant
                            .withAlpha(60),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Header
                  Row(
                    children: [
                      const Icon(Icons.format_quote_rounded,
                          color: accentColor, size: 22),
                      const SizedBox(width: 10),
                      Text(
                        'Footnote $footnoteNum',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 24,
                    color:
                        theme.colorScheme.outlineVariant.withAlpha(80),
                  ),
                  // Footnote text
                  Expanded(
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Text(
                        text,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          height: 1.6,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _openStudySearch() async {
    if (_htmlContent == null) return;

    final result = await Navigator.push<StudySearchReturnValue>(
      context,
      MaterialPageRoute(
        builder: (_) => StudySearchScreen(
          title: widget.title,
          htmlContent: _htmlContent!,
          toc: widget.toc,
        ),
      ),
    );

    if (result != null && mounted) {
      setState(() => _searchQuery = result.searchQuery);
      // Wait for rebuild with highlights, then scroll to match
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollToMatch(result.sectionId);
      });
    }
  }

  void _switchToPdf() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => PdfViewerScreen(
          title: widget.title,
          assetPath: widget.pdfAssetPath,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = context.watch<AppState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 16),
        ),
        actions: [
          // In-study search
          IconButton(
            icon: const Icon(Icons.search_rounded),
            tooltip: 'Search in study',
            onPressed: _openStudySearch,
          ),
          ...sharedAppBarActions(context, showSearch: false),
          // TOC button
          IconButton(
            icon: const Icon(Icons.toc_rounded),
            tooltip: 'Table of Contents',
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
          ),
          // PDF toggle
          IconButton(
            icon: const Icon(Icons.picture_as_pdf_rounded),
            tooltip: 'View as PDF',
            onPressed: _switchToPdf,
          ),
          // Text size/font menu
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'increase':
                  state.setFontSize(state.fontSize + 1);
                  break;
                case 'decrease':
                  state.setFontSize(state.fontSize - 1);
                  break;
                case 'serif':
                  state.toggleSerifFont();
                  break;
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'increase',
                child: Row(
                  children: [
                    const Icon(Icons.text_increase_rounded, size: 20),
                    const SizedBox(width: 12),
                    Text('Larger text (${state.fontSize.toInt()})'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'decrease',
                child: Row(
                  children: [
                    const Icon(Icons.text_decrease_rounded, size: 20),
                    const SizedBox(width: 12),
                    Text('Smaller text (${state.fontSize.toInt()})'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'serif',
                child: Row(
                  children: [
                    const Icon(Icons.font_download_rounded, size: 20),
                    const SizedBox(width: 12),
                    Text(state.isSerifFont ? 'Sans-serif font' : 'Serif font'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      endDrawer: Drawer(
        child: _buildTocPanel(theme),
      ),
      body: _buildBody(context, theme, state),
    );
  }

  Widget _buildTocPanel(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
            16,
            MediaQuery.of(context).padding.top + 16,
            16,
            12,
          ),
          child: Row(
            children: [
              Icon(
                Icons.toc_rounded,
                size: 20,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: 8),
              Text(
                'TABLE OF CONTENTS',
                style: theme.textTheme.labelMedium?.copyWith(
                  color: theme.colorScheme.primary,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: theme.colorScheme.outlineVariant.withAlpha(80),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: widget.toc.map((entry) {
              return _buildTocItem(theme, entry, 0);
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildTocItem(ThemeData theme, StudyTocEntry entry, int depth) {
    final children = entry.children;

    if (children.isEmpty) {
      return ListTile(
        contentPadding: EdgeInsets.only(
          left: 16.0 + (depth * 16.0),
          right: 16,
        ),
        title: Text(
          entry.title,
          style: theme.textTheme.bodyMedium?.copyWith(height: 1.3),
        ),
        dense: true,
        visualDensity: VisualDensity.compact,
        onTap: () => _scrollToSection(entry.sectionId),
      );
    }

    return ExpansionTile(
      tilePadding: EdgeInsets.only(
        left: 16.0 + (depth * 16.0),
        right: 16,
      ),
      title: Text(
        entry.title,
        style: theme.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
          height: 1.3,
        ),
      ),
      dense: true,
      visualDensity: VisualDensity.compact,
      initiallyExpanded: depth == 0,
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(
            left: 16.0 + ((depth + 1) * 16.0),
            right: 16,
          ),
          title: Text(
            'Go to section',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.primary,
              fontStyle: FontStyle.italic,
            ),
          ),
          dense: true,
          visualDensity: VisualDensity.compact,
          onTap: () => _scrollToSection(entry.sectionId),
        ),
        ...children.map((child) => _buildTocItem(theme, child, depth + 1)),
      ],
    );
  }

  Widget _buildBody(BuildContext context, ThemeData theme, AppState state) {
    if (_isLoading) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Loading content...'),
          ],
        ),
      );
    }

    if (_error != null || _htmlContent == null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.error_outline_rounded,
                size: 48,
                color: theme.colorScheme.error,
              ),
              const SizedBox(height: 16),
              Text(
                'Failed to load content',
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                _error ?? 'Unknown error',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    final fontFamily = state.isSerifFont ? 'serif' : 'sans-serif';

    // Pre-create GlobalKeys for section anchors
    for (final entry in _flattenToc(widget.toc)) {
      _sectionKeys.putIfAbsent(entry.sectionId, () => GlobalKey());
    }

    return SingleChildScrollView(
      controller: _scrollController,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title header
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                widget.title,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                  fontSize: 21,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: SizedBox(
              width: 80,
              child: Divider(
                color: theme.colorScheme.outlineVariant,
                thickness: 0.5,
              ),
            ),
          ),
          const SizedBox(height: 24),
          // Render the HTML, injecting GlobalKeys at section div anchors
          _buildHtmlWithAnchors(theme, state, fontFamily),
          const SizedBox(height: 60),
        ],
      ),
    );
  }

  Map<String, Style> _htmlStyles(ThemeData theme, AppState state, String fontFamily) => {
    'body': Style(
      fontSize: FontSize(state.fontSize),
      fontFamily: fontFamily,
      lineHeight: const LineHeight(1.7),
      color: theme.colorScheme.onSurface,
      padding: HtmlPaddings.zero,
      margin: Margins.zero,
    ),
    'p': Style(
      margin: Margins.only(bottom: 12),
    ),
    'h2': Style(
      fontSize: FontSize(state.fontSize + 5),
      fontWeight: FontWeight.bold,
      margin: Margins.only(top: 32, bottom: 14),
      color: theme.colorScheme.primary,
    ),
    'h3': Style(
      fontSize: FontSize(state.fontSize + 3),
      fontWeight: FontWeight.bold,
      margin: Margins.only(top: 24, bottom: 10),
      color: theme.colorScheme.primary.withAlpha(200),
    ),
    'h4': Style(
      fontSize: FontSize(state.fontSize + 1),
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
      margin: Margins.only(top: 20, bottom: 8),
    ),
    'strong': Style(
      fontWeight: FontWeight.bold,
    ),
    'em': Style(
      fontStyle: FontStyle.italic,
    ),
    'sup': Style(
      fontSize: FontSize(state.fontSize * 0.65),
      lineHeight: const LineHeight(1.0),
      verticalAlign: VerticalAlign.sup,
    ),
    'mark': Style(
      backgroundColor: const Color(0xFFFFF3B0),
      color: Colors.black87,
      padding: HtmlPaddings.symmetric(horizontal: 2),
    ),
    'table': Style(
      margin: Margins.only(top: 16, bottom: 16),
    ),
    'td': Style(
      padding: HtmlPaddings.only(top: 6, bottom: 6, right: 12),
      verticalAlign: VerticalAlign.top,
      fontSize: FontSize(state.fontSize - 1),
      lineHeight: const LineHeight(1.5),
    ),
  };

  void _onLinkTap(String? url, Map<String, String> attributes, dynamic element) {
    if (url != null && url.startsWith('footnote://')) {
      final fnNum = url.replaceFirst('footnote://', '');
      _showFootnoteBottomSheet(context, fnNum);
    } else if (url != null) {
      launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    }
  }

  Widget _buildHtmlWithAnchors(
      ThemeData theme, AppState state, String fontFamily) {
    final sections = _splitHtmlBySections(_htmlContent!);
    final styles = _htmlStyles(theme, state, fontFamily);
    // Track whether we've already assigned _matchParagraphKey to avoid
    // using the same GlobalKey on multiple widgets (which crashes Flutter).
    bool matchKeyUsed = false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: sections.map((section) {
        final key = _sectionKeys[section.id];
        var html = section.html;

        // If there's an active search query, inject <mark> highlights
        if (_searchQuery != null && _searchQuery!.isNotEmpty) {
          final highlighted = _injectHighlights(html, _searchQuery!);
          if (highlighted != html) {
            // This section contains a match
            if (!matchKeyUsed) {
              // First matching section: split for precise scroll positioning
              matchKeyUsed = true;
              return _buildSectionWithMatchParagraphs(
                key: key,
                html: highlighted,
                styles: styles,
              );
            }
            // Subsequent matching sections: just show highlights, no split
            html = highlighted;
          }
        }

        return Container(
          key: key,
          child: Html(
            data: html,
            extensions: const [TableHtmlExtension()],
            style: styles,
            onLinkTap: _onLinkTap,
          ),
        );
      }).toList(),
    );
  }

  /// Build a section that contains a search match, split into at most 3 parts
  /// (before match block, match block with GlobalKey, after match block)
  /// so we can scroll to the exact block element containing the first match.
  Widget _buildSectionWithMatchParagraphs({
    required GlobalKey? key,
    required String html,
    required Map<String, Style> styles,
  }) {
    final parts = _splitAtFirstMark(html);

    return Container(
      key: key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (parts.before.trim().isNotEmpty)
            Html(
              data: parts.before,
              extensions: const [TableHtmlExtension()],
              style: styles,
              onLinkTap: _onLinkTap,
            ),
          Container(
            key: _matchParagraphKey,
            child: Html(
              data: parts.matchBlock.isNotEmpty ? parts.matchBlock : html,
              extensions: const [TableHtmlExtension()],
              style: styles,
              onLinkTap: _onLinkTap,
            ),
          ),
          if (parts.after.trim().isNotEmpty)
            Html(
              data: parts.after,
              extensions: const [TableHtmlExtension()],
              style: styles,
              onLinkTap: _onLinkTap,
            ),
        ],
      ),
    );
  }

  /// Inject <mark> tags around all case-insensitive occurrences of [query] in [html],
  /// only in text content (not inside HTML tags).
  String _injectHighlights(String html, String query) {
    if (query.isEmpty) return html;
    final escaped = RegExp.escape(query);
    final pattern = RegExp('(?<=>)([^<]*?)($escaped)', caseSensitive: false);
    return html.replaceAllMapped(pattern, (m) {
      return '${m.group(1)}<mark>${m.group(2)}</mark>';
    });
  }

  /// Split HTML into 3 parts around the first <mark> tag:
  /// the content before the enclosing block element, the block element
  /// containing the mark, and the content after it.
  ({String before, String matchBlock, String after}) _splitAtFirstMark(String html) {
    final markIdx = html.indexOf('<mark>');
    if (markIdx == -1) return (before: html, matchBlock: '', after: '');

    // Search backwards from the mark to find the nearest block-level opening tag
    final openTagPattern = RegExp(r'<(p|h[1-6]|ul|ol|li|table|blockquote)[\s>]');
    int blockStart = 0;
    String? tagName;
    for (final m in openTagPattern.allMatches(html)) {
      if (m.start > markIdx) break;
      blockStart = m.start;
      tagName = m.group(1);
    }

    if (tagName == null) return (before: html, matchBlock: '', after: '');

    // Find the matching closing tag after the mark
    final closeTag = '</$tagName>';
    int blockEnd = html.indexOf(closeTag, markIdx);
    if (blockEnd == -1) {
      blockEnd = html.length;
    } else {
      blockEnd += closeTag.length;
    }

    return (
      before: html.substring(0, blockStart),
      matchBlock: html.substring(blockStart, blockEnd),
      after: html.substring(blockEnd),
    );
  }

  List<StudyTocEntry> _flattenToc(List<StudyTocEntry> entries) {
    final flat = <StudyTocEntry>[];
    for (final entry in entries) {
      flat.add(entry);
      flat.addAll(_flattenToc(entry.children));
    }
    return flat;
  }

  List<_HtmlSection> _splitHtmlBySections(String html) {
    // Split the HTML at <div id="..."> boundaries
    final divPattern = RegExp(r'<div id="([^"]+)">');
    final matches = divPattern.allMatches(html).toList();

    if (matches.isEmpty) {
      return [_HtmlSection(id: 'all', html: html)];
    }

    final sections = <_HtmlSection>[];
    for (int i = 0; i < matches.length; i++) {
      final match = matches[i];
      final id = match.group(1)!;
      final start = match.start;
      final end = i + 1 < matches.length ? matches[i + 1].start : html.length;
      var sectionHtml = html.substring(start, end);
      // Remove the wrapping <div> and </div>
      sectionHtml = sectionHtml.replaceFirst(RegExp(r'^<div id="[^"]+">'), '');
      sectionHtml = sectionHtml.replaceFirst(RegExp(r'</div>\s*$'), '');
      sections.add(_HtmlSection(id: id, html: sectionHtml.trim()));
    }

    return sections;
  }
}

class _HtmlSection {
  final String id;
  final String html;
  const _HtmlSection({required this.id, required this.html});
}

/// A table of contents entry for a study document's text view.
class StudyTocEntry {
  final String sectionId;
  final String title;
  final List<StudyTocEntry> children;

  const StudyTocEntry({
    required this.sectionId,
    required this.title,
    this.children = const [],
  });
}
