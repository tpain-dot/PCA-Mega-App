import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../providers/app_state.dart';
import '../widgets/shared_actions.dart';
import 'pdf_viewer_screen.dart';

/// A screen that renders a study/report as readable HTML text
/// with a table of contents drawer for section navigation.
class StudyTextScreen extends StatefulWidget {
  final String title;
  final String htmlAssetPath;
  final String pdfAssetPath;
  final List<StudyTocEntry> toc;

  const StudyTextScreen({
    super.key,
    required this.title,
    required this.htmlAssetPath,
    required this.pdfAssetPath,
    required this.toc,
  });

  @override
  State<StudyTextScreen> createState() => _StudyTextScreenState();
}

class _StudyTextScreenState extends State<StudyTextScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _scrollController = ScrollController();
  String? _htmlContent;
  bool _isLoading = true;
  String? _error;

  // Section positions for TOC navigation
  final Map<String, GlobalKey> _sectionKeys = {};

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
      if (mounted) {
        setState(() {
          _htmlContent = html;
          _isLoading = false;
        });
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
          ...sharedAppBarActions(context),
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

  Widget _buildHtmlWithAnchors(
      ThemeData theme, AppState state, String fontFamily) {
    // Parse the HTML into sections and render each with a key
    // so we can scroll to them via the TOC
    final sections = _splitHtmlBySections(_htmlContent!);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: sections.map((section) {
        final key = _sectionKeys[section.id];
        return Container(
          key: key,
          child: Html(
            data: section.html,
            style: {
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
            },
            onLinkTap: (url, attributes, element) {
              if (url != null) {
                launchUrl(
                    Uri.parse(url), mode: LaunchMode.externalApplication);
              }
            },
          ),
        );
      }).toList(),
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
