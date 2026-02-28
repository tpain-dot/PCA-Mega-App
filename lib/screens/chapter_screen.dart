import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/bco_commentary.dart';
import '../data/chapter_toc.dart';
import '../data/sjc_references.dart';
import '../models/bco_models.dart';
import '../providers/app_state.dart';
import '../services/commentary_injection_service.dart';
import '../services/sjc_injection_service.dart';
import '../widgets/icon_tap_target_extension.dart';
import '../widgets/shared_actions.dart';

class ChapterScreen extends StatefulWidget {
  final BcoChapter chapter;
  final BcoSection section;
  final String? searchQuery;

  const ChapterScreen({
    super.key,
    required this.chapter,
    required this.section,
    this.searchQuery,
  });

  @override
  State<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final Map<String, GlobalKey> _sectionKeys = {};

  /// Key for the paragraph containing the search match, for precise scrolling.
  final _matchParagraphKey = GlobalKey();

  List<ChapterTocEntry>? get _tocEntries =>
      chapterTocEntries[widget.chapter.id];
  bool get _hasToc => _tocEntries != null && _tocEntries!.isNotEmpty;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AppState>().loadChapterContent(widget.chapter);
      // Scroll to search match after content loads
      if (widget.searchQuery != null) {
        _waitAndScrollToMatch();
      }
    });
  }

  /// Wait for content to load, then scroll to the matching paragraph.
  void _waitAndScrollToMatch() {
    // Schedule a post-frame callback to let the HTML render
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_matchParagraphKey.currentContext != null) {
        Scrollable.ensureVisible(
          _matchParagraphKey.currentContext!,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          alignment: 0.15,
        );
      } else if (widget.chapter.htmlContent == null) {
        // Content still loading — try again
        _waitAndScrollToMatch();
      }
    });
  }

  int get _currentIndex =>
      widget.section.chapters.indexOf(widget.chapter);

  BcoChapter? get _previousChapter {
    final idx = _currentIndex;
    return idx > 0 ? widget.section.chapters[idx - 1] : null;
  }

  BcoChapter? get _nextChapter {
    final idx = _currentIndex;
    return idx < widget.section.chapters.length - 1
        ? widget.section.chapters[idx + 1]
        : null;
  }

  void _navigateToChapter(BcoChapter chapter) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => ChapterScreen(
          chapter: chapter,
          section: widget.section,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            ),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.02, 0),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: animation,
                curve: Curves.easeOutCubic,
              )),
              child: child,
            ),
          );
        },
        transitionDuration: const Duration(milliseconds: 300),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = context.watch<AppState>();
    final isBookmarked = state.isBookmarked(widget.chapter.id);

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: _hasToc ? Drawer(child: _buildTocPanel(theme)) : null,
      appBar: AppBar(
        title: Text(
          widget.chapter.number != null
              ? 'Chapter ${widget.chapter.number}'
              : widget.chapter.title,
          style: const TextStyle(fontSize: 16),
        ),
        actions: [
          ...sharedAppBarActions(context),
          if (_hasToc)
            IconButton(
              icon: const Icon(Icons.toc_rounded),
              tooltip: 'Table of Contents',
              onPressed: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
            ),
          IconButton(
            icon: Icon(
              isBookmarked
                  ? Icons.bookmark_rounded
                  : Icons.bookmark_border_rounded,
            ),
            onPressed: () => state.toggleBookmark(widget.chapter.id),
          ),
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
      body: _buildBody(context, theme, state),
      bottomNavigationBar: _buildNavBar(context, theme),
    );
  }

  Widget _buildBody(BuildContext context, ThemeData theme, AppState state) {
    if (state.isLoading && widget.chapter.htmlContent == null) {
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

    if (widget.chapter.htmlContent == null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.cloud_off_rounded,
                size: 48,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              const SizedBox(height: 16),
              Text(
                'Content not available',
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                'Please check your internet connection and try again.',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              FilledButton.icon(
                onPressed: () {
                  context.read<AppState>().loadChapterContent(widget.chapter);
                },
                icon: const Icon(Icons.refresh_rounded),
                label: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }

    final fontFamily = state.isSerifFont ? 'serif' : 'sans-serif';

    Map<String, Style> htmlStyles() => {
          'body': Style(
            fontSize: FontSize(state.fontSize),
            fontFamily: fontFamily,
            lineHeight: const LineHeight(1.7),
            color: theme.colorScheme.onSurface,
          ),
          'p': Style(
            margin: Margins.only(bottom: 12),
          ),
          'h2': Style(
            fontSize: FontSize(state.fontSize + 4),
            fontWeight: FontWeight.bold,
            margin: Margins.only(top: 24, bottom: 12),
          ),
          'h3': Style(
            fontSize: FontSize(state.fontSize + 2),
            fontWeight: FontWeight.bold,
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
        };

    void onLinkTap(String? url, Map<String, String> attributes, dynamic element) {
      // Note: sjc:// and commentary:// URLs are no longer injected into HTML.
      // Those icons are now rendered via IconTapTargetExtension (custom tags),
      // which fires its own callbacks directly. These branches are kept as a
      // defensive fallback in case any legacy HTML still uses the old scheme.
      if (url != null && url.startsWith('sjc://')) {
        final sectionKey = url.replaceFirst('sjc://', '');
        _showSjcBottomSheet(context, sectionKey);
      } else if (url != null && url.startsWith('commentary://')) {
        final sectionKey = url.replaceFirst('commentary://', '');
        _showCommentaryBottomSheet(context, sectionKey);
      } else if (url != null) {
        launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
      }
    }

    // Extension that renders <sjc-icon> and <commentary-icon> custom tags
    // as 44×44 tap targets. Injection services now emit these tags instead
    // of raw <a><sup> links so we can control the hit area via a Flutter
    // widget rather than a TextSpan.recognizer (which is bounded by text size).
    final iconExtension = IconTapTargetExtension(
      onSjcTap: (key) => _showSjcBottomSheet(context, key),
      onCommentaryTap: (key) => _showCommentaryBottomSheet(context, key),
      fontSize: state.fontSize,
    );

    Widget buildChapterHeader() => Column(
          children: [
            if (widget.chapter.number != null) ...[
              const SizedBox(height: 8),
              Text(
                'CHAPTER',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.primary.withAlpha(140),
                  letterSpacing: 4.0,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                '${widget.chapter.number}',
                style: theme.textTheme.displayMedium?.copyWith(
                  color: theme.colorScheme.primary.withAlpha(70),
                  fontWeight: FontWeight.w300,
                  fontSize: 52,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: 40,
                child: Divider(
                  color: theme.colorScheme.primary.withAlpha(50),
                  thickness: 1.5,
                ),
              ),
              const SizedBox(height: 16),
            ],
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                widget.chapter.title,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                  fontSize: 21,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 80,
              child: Divider(
                color: theme.colorScheme.outlineVariant,
                thickness: 0.5,
              ),
            ),
            const SizedBox(height: 24),
          ],
        );

    final query = widget.searchQuery;
    final styles = htmlStyles();

    if (_hasToc) {
      // Pre-create GlobalKeys for section anchors
      for (final entry in _flattenToc(_tocEntries!)) {
        _sectionKeys.putIfAbsent(entry.sectionId, () => GlobalKey());
      }
      final sections = _splitHtmlBySections(_prepareHtml(state));
      // Track whether _matchParagraphKey has been used to avoid duplicate GlobalKey crash
      bool matchKeyUsed = false;

      return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildChapterHeader(),
            ...sections.map((section) {
              final key = _sectionKeys[section.id];
              var html = section.html;

              // Inject highlights and split for precise scrolling
              if (query != null && query.isNotEmpty) {
                final highlighted = _injectHighlights(html, query);
                if (highlighted != html) {
                  if (!matchKeyUsed) {
                    matchKeyUsed = true;
                    return _buildParagraphsWithMatchKey(
                      key: key,
                      html: highlighted,
                      styles: styles,
                      onLinkTap: onLinkTap,
                      extensions: [iconExtension],
                    );
                  }
                  // Subsequent matches: highlight but don't split
                  html = highlighted;
                }
              }

              return Container(
                key: key,
                child: Html(
                  data: html,
                  style: styles,
                  onLinkTap: onLinkTap,
                  extensions: [iconExtension],
                ),
              );
            }),
            const SizedBox(height: 60),
          ],
        ),
      );
    }

    // Non-TOC path: single HTML block, split into paragraphs if searching
    var html = _prepareHtml(state);
    if (query != null && query.isNotEmpty) {
      html = _injectHighlights(html, query);
    }
    final hasMark = html.contains('<mark>');

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildChapterHeader(),
          if (hasMark)
            _buildParagraphsWithMatchKey(
              key: null,
              html: html,
              styles: styles,
              onLinkTap: onLinkTap,
              extensions: [iconExtension],
            )
          else
            Html(
              data: html,
              style: styles,
              onLinkTap: onLinkTap,
              extensions: [iconExtension],
            ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }

  // --- TOC navigation ---

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
            children: _tocEntries!.map((entry) {
              return _buildTocItem(theme, entry, 0);
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildTocItem(ThemeData theme, ChapterTocEntry entry, int depth) {
    if (entry.children.isEmpty) {
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
        ...entry.children.map(
          (child) => _buildTocItem(theme, child, depth + 1),
        ),
      ],
    );
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
    _scaffoldKey.currentState?.closeEndDrawer();
  }

  List<ChapterTocEntry> _flattenToc(List<ChapterTocEntry> entries) {
    final flat = <ChapterTocEntry>[];
    for (final entry in entries) {
      flat.add(entry);
      flat.addAll(_flattenToc(entry.children));
    }
    return flat;
  }

  List<_HtmlSection> _splitHtmlBySections(String html) {
    final divPattern = RegExp(r'<div id="([^"]+)">');
    final matches = divPattern.allMatches(html).toList();
    if (matches.isEmpty) return [_HtmlSection(id: 'all', html: html)];

    final sections = <_HtmlSection>[];
    // Include any preamble content before the first section
    if (matches.first.start > 0) {
      sections.add(
        _HtmlSection(id: 'preamble', html: html.substring(0, matches.first.start)),
      );
    }
    for (int i = 0; i < matches.length; i++) {
      final match = matches[i];
      final id = match.group(1)!;
      final start = match.end;
      final end = i + 1 < matches.length ? matches[i + 1].start : html.length;
      var sectionHtml = html.substring(start, end);
      // Remove trailing </div> from each section
      sectionHtml = sectionHtml.replaceFirst(RegExp(r'</div>\s*$'), '');
      sections.add(_HtmlSection(id: id, html: sectionHtml.trim()));
    }
    return sections;
  }

  /// Inject <mark> tags around case-insensitive occurrences of [query] in [html],
  /// only within text content (not inside HTML tags).
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

    final openTagPattern = RegExp(r'<(p|h[1-6]|ul|ol|li|table|blockquote)[\s>]');
    int blockStart = 0;
    String? tagName;
    for (final m in openTagPattern.allMatches(html)) {
      if (m.start > markIdx) break;
      blockStart = m.start;
      tagName = m.group(1);
    }

    if (tagName == null) return (before: html, matchBlock: '', after: '');

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

  /// Build HTML split into at most 3 parts around the first <mark> tag,
  /// attaching [_matchParagraphKey] to the block element containing the match.
  Widget _buildParagraphsWithMatchKey({
    required GlobalKey? key,
    required String html,
    required Map<String, Style> styles,
    required void Function(String?, Map<String, String>, dynamic) onLinkTap,
    required List<HtmlExtension> extensions,
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
              style: styles,
              onLinkTap: onLinkTap,
              extensions: extensions,
            ),
          Container(
            key: _matchParagraphKey,
            child: Html(
              data: parts.matchBlock.isNotEmpty ? parts.matchBlock : html,
              style: styles,
              onLinkTap: onLinkTap,
              extensions: extensions,
            ),
          ),
          if (parts.after.trim().isNotEmpty)
            Html(
              data: parts.after,
              style: styles,
              onLinkTap: onLinkTap,
              extensions: extensions,
            ),
        ],
      ),
    );
  }

  void _showSjcBottomSheet(BuildContext context, String sectionKey) {
    final refs = SjcData.forSection(sectionKey);
    if (refs.isEmpty) return;

    final theme = Theme.of(context);

    // Format the section label for display
    String sectionLabel = sectionKey;
    if (sectionKey.startsWith('bco_')) {
      sectionLabel = 'BCO ${sectionKey.replaceFirst('bco_', '')}';
    } else if (sectionKey.startsWith('wcf_')) {
      sectionLabel = 'WCF ${sectionKey.replaceFirst('wcf_', '')}';
    } else if (sectionKey.startsWith('wlc_')) {
      sectionLabel = 'WLC Q. ${sectionKey.replaceFirst('wlc_', '')}';
    } else if (sectionKey.startsWith('wsc_')) {
      sectionLabel = 'WSC Q. ${sectionKey.replaceFirst('wsc_', '')}';
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: refs.length == 1 ? 0.35 : 0.45,
          minChildSize: 0.25,
          maxChildSize: 0.85,
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
                        color: theme.colorScheme.onSurfaceVariant.withAlpha(60),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Header
                  Row(
                    children: [
                      Icon(Icons.gavel_rounded,
                          color: const Color(0xFF8B5E3C), size: 22),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'SJC Decisions (${refs.length})',
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    sectionLabel,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const Divider(height: 24),
                  // Case list
                  Expanded(
                    child: ListView.separated(
                      controller: scrollController,
                      itemCount: refs.length,
                      separatorBuilder: (context, index) => const Divider(height: 20),
                      itemBuilder: (context, index) {
                        final ref = refs[index];
                        return _buildSjcCaseCard(context, theme, ref);
                      },
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

  Widget _buildSjcCaseCard(
      BuildContext context, ThemeData theme, SjcReference ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Case header row
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                color: const Color(0xFF8B5E3C).withAlpha(20),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                ref.caseNumber,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: const Color(0xFF8B5E3C),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: _sjcOutcomeColor(ref.outcome).withAlpha(20),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                ref.outcome,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: _sjcOutcomeColor(ref.outcome),
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        // Case title
        Text(
          ref.caseTitle,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        // Summary
        Text(
          ref.summary,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 10),
        // Link to PDF
        SizedBox(
          height: 32,
          child: OutlinedButton.icon(
            onPressed: () {
              launchUrl(
                Uri.parse(ref.pdfUrl),
                mode: LaunchMode.externalApplication,
              );
            },
            icon: const Icon(Icons.open_in_new_rounded, size: 14),
            label: const Text('View Full Decision'),
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 12),
              padding: const EdgeInsets.symmetric(horizontal: 12),
            ),
          ),
        ),
      ],
    );
  }

  String _prepareHtml(AppState state) {
    var html = widget.chapter.htmlContent!;
    if (state.showBcoCommentary) {
      html = CommentaryInjectionService.injectCommentary(
          html, widget.chapter.id);
    }
    if (state.showSjcReferences) {
      html = SjcInjectionService.injectReferences(html, widget.chapter.id);
    }
    return html;
  }

  void _showCommentaryBottomSheet(BuildContext context, String sectionKey) {
    final entries = BcoCommentaryData.forSection(sectionKey);
    if (entries.isEmpty) return;

    final theme = Theme.of(context);

    // Format the section label for display
    String sectionLabel = sectionKey;
    if (sectionKey.startsWith('bco_')) {
      sectionLabel = 'BCO ${sectionKey.replaceFirst('bco_', '')}';
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.45,
          minChildSize: 0.25,
          maxChildSize: 0.85,
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
                      Icon(Icons.history_edu_rounded,
                          color: const Color(0xFF5C7A8A), size: 22),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Historical Commentary',
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    sectionLabel,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const Divider(height: 24),
                  // Commentary entries
                  Expanded(
                    child: ListView.separated(
                      controller: scrollController,
                      itemCount: entries.length,
                      separatorBuilder: (context, index) =>
                          const Divider(height: 24),
                      itemBuilder: (context, index) {
                        final entry = entries[index];
                        return _buildCommentaryEntry(
                            context, theme, entry);
                      },
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

  Widget _buildCommentaryEntry(
      BuildContext context, ThemeData theme, BcoCommentary entry) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Source attribution
        Text(
          '${entry.source} (${entry.year}), ${entry.pageRef}',
          style: theme.textTheme.bodySmall?.copyWith(
            fontStyle: FontStyle.italic,
            color: const Color(0xFF5C7A8A),
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        // Commentary text
        Text(
          entry.text,
          style: theme.textTheme.bodyMedium?.copyWith(
            height: 1.6,
            color: theme.colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 14),
        // Link to full page
        SizedBox(
          height: 32,
          child: OutlinedButton.icon(
            onPressed: () {
              launchUrl(
                Uri.parse(entry.webUrl),
                mode: LaunchMode.externalApplication,
              );
            },
            icon: const Icon(Icons.open_in_new_rounded, size: 14),
            label: const Text('View full page on pcahistory.org'),
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 12),
              padding: const EdgeInsets.symmetric(horizontal: 12),
            ),
          ),
        ),
      ],
    );
  }

  Color _sjcOutcomeColor(String outcome) {
    final lower = outcome.toLowerCase();
    if (lower.contains('sustained') && !lower.contains('not')) {
      return const Color(0xFF2E5C3A); // green
    } else if (lower.contains('not sustained')) {
      return const Color(0xFF7A3333); // red
    } else if (lower.contains('partial')) {
      return const Color(0xFF8B7332); // amber
    }
    return const Color(0xFF5C6B7A); // grey
  }

  Widget _buildNavBar(BuildContext context, ThemeData theme) {
    final prev = _previousChapter;
    final next = _nextChapter;

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          border: Border(
            top: BorderSide(
              color: theme.colorScheme.outlineVariant.withAlpha(80),
              width: 0.5,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.shadow.withAlpha(8),
              blurRadius: 8,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Row(
          children: [
            if (prev != null)
              Expanded(
                child: TextButton.icon(
                  onPressed: () => _navigateToChapter(prev),
                  icon: const Icon(Icons.chevron_left_rounded, size: 20),
                  label: Text(
                    prev.number != null ? 'Ch. ${prev.number}' : 'Previous',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            else
              const Spacer(),
            Text(
              '${_currentIndex + 1} / ${widget.section.chapters.length}',
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            if (next != null)
              Expanded(
                child: TextButton.icon(
                  onPressed: () => _navigateToChapter(next),
                  icon: Text(
                    next.number != null ? 'Ch. ${next.number}' : 'Next',
                    overflow: TextOverflow.ellipsis,
                  ),
                  label: const Icon(Icons.chevron_right_rounded, size: 20),
                ),
              )
            else
              const Spacer(),
          ],
        ),
      ),
    );
  }
}

class _HtmlSection {
  final String id;
  final String html;
  const _HtmlSection({required this.id, required this.html});
}
