import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:pdfrx/pdfrx.dart';
import '../data/study_text_toc.dart';
import '../data/study_toc_overrides.dart';
import '../widgets/pdf_toc_panel.dart';
import 'study_search_screen.dart';
import 'study_text_screen.dart';

class PdfViewerScreen extends StatefulWidget {
  final String title;
  final String assetPath;

  const PdfViewerScreen({
    super.key,
    required this.title,
    required this.assetPath,
  });

  @override
  State<PdfViewerScreen> createState() => _PdfViewerScreenState();
}

class _PdfViewerScreenState extends State<PdfViewerScreen> {
  final _controller = PdfViewerController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isLoading = true;
  String? _error;
  List<PdfOutlineNode>? _outline;
  bool _hasOutline = false;

  /// HTML content loaded in background for in-study search.
  String? _studyHtml;

  /// Extract the bare filename from the asset path (e.g. 'women_ministry_2017.pdf').
  String get _filename => widget.assetPath.split('/').last;

  /// Look up the text-view config for this study, if one exists.
  StudyTextConfig? get _textConfig => studyTextVersions[_filename];

  @override
  void initState() {
    super.initState();
    _loadStudyHtmlIfAvailable();
  }

  /// Pre-load the study HTML in the background so in-study search is ready.
  Future<void> _loadStudyHtmlIfAvailable() async {
    final config = _textConfig;
    if (config == null) return;
    try {
      final html = await rootBundle.loadString(config.htmlAssetPath);
      if (mounted) setState(() => _studyHtml = html);
    } catch (_) {
      // Non-critical — search just won't be available
    }
  }

  void _switchToText() {
    final config = _textConfig;
    if (config == null) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => StudyTextScreen(
          title: widget.title,
          htmlAssetPath: config.htmlAssetPath,
          pdfAssetPath: widget.assetPath,
          footnotesAssetPath: config.footnotesAssetPath,
          toc: config.toc,
        ),
      ),
    );
  }

  Future<void> _openStudySearch() async {
    final config = _textConfig;
    if (config == null || _studyHtml == null) return;

    final result = await Navigator.push<StudySearchReturnValue>(
      context,
      MaterialPageRoute(
        builder: (_) => StudySearchScreen(
          title: widget.title,
          htmlContent: _studyHtml!,
          toc: config.toc,
        ),
      ),
    );

    if (result != null && mounted) {
      // Switch to text view and scroll to the matched position
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => StudyTextScreen(
            title: widget.title,
            htmlAssetPath: config.htmlAssetPath,
            pdfAssetPath: widget.assetPath,
            footnotesAssetPath: config.footnotesAssetPath,
            toc: config.toc,
            initialSectionId: result.sectionId,
            initialSearchQuery: result.searchQuery,
          ),
        ),
      );
    }
  }

  Future<void> _loadOutline(PdfDocument document) async {
    // Check for a hand-crafted override first.
    final override = studyTocOverrides[_filename];
    if (override != null && override.isNotEmpty) {
      if (mounted) {
        setState(() {
          _outline = override;
          _hasOutline = true;
        });
      }
      return;
    }

    // Fall back to the outline embedded in the PDF.
    try {
      final outline = await document.loadOutline();
      if (mounted && outline.isNotEmpty) {
        setState(() {
          _outline = outline;
          _hasOutline = true;
        });
      }
    } catch (e) {
      // Silently fail — some PDFs have no outline
      debugPrint('Failed to load PDF outline: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 16),
        ),
        actions: [
          // In-study search (only when HTML is loaded)
          if (_studyHtml != null)
            IconButton(
              icon: const Icon(Icons.search_rounded),
              tooltip: 'Search in study',
              onPressed: _openStudySearch,
            ),
          // Text view toggle (only for studies with text versions)
          if (_textConfig != null)
            IconButton(
              icon: const Icon(Icons.article_rounded),
              tooltip: 'View as text',
              onPressed: _switchToText,
            ),
          if (_hasOutline)
            IconButton(
              icon: const Icon(Icons.toc_rounded),
              tooltip: 'Table of Contents',
              onPressed: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
            ),
        ],
      ),
      endDrawer: _hasOutline
          ? Drawer(
              child: PdfTocPanel(
                outline: _outline!,
                onDestinationTap: (dest) {
                  _controller.goToDest(dest);
                  _scaffoldKey.currentState?.closeEndDrawer();
                },
              ),
            )
          : null,
      body: _error != null
          ? Center(
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
                      'Failed to load PDF',
                      style: theme.textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _error!,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )
          : Stack(
              children: [
                PdfViewer.asset(
                  widget.assetPath,
                  controller: _controller,
                  params: PdfViewerParams(
                    enableTextSelection: true,
                    onViewerReady: (document, controller) {
                      setState(() => _isLoading = false);
                      _loadOutline(document);
                    },
                    // Visible scrollbar thumb for fast-scrolling through long documents
                    viewerOverlayBuilder: (context, size, handleLinkTap) => [
                      PdfViewerScrollThumb(
                        controller: _controller,
                        orientation: ScrollbarOrientation.right,
                      ),
                    ],
                  ),
                ),
                if (_isLoading)
                  const Center(child: CircularProgressIndicator()),
              ],
            ),
    );
  }
}
