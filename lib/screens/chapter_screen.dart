import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/bco_commentary.dart';
import '../data/sjc_references.dart';
import '../models/bco_models.dart';
import '../providers/app_state.dart';
import '../services/commentary_injection_service.dart';
import '../services/sjc_injection_service.dart';
import '../widgets/shared_actions.dart';

class ChapterScreen extends StatefulWidget {
  final BcoChapter chapter;
  final BcoSection section;

  const ChapterScreen({
    super.key,
    required this.chapter,
    required this.section,
  });

  @override
  State<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AppState>().loadChapterContent(widget.chapter);
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
      appBar: AppBar(
        title: Text(
          widget.chapter.number != null
              ? 'Chapter ${widget.chapter.number}'
              : widget.chapter.title,
          style: const TextStyle(fontSize: 16),
        ),
        actions: [
          ...sharedAppBarActions(context),
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

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
          Html(
            data: _prepareHtml(state),
            style: {
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
            },
            onLinkTap: (url, attributes, element) {
              if (url != null && url.startsWith('sjc://')) {
                final sectionKey = url.replaceFirst('sjc://', '');
                _showSjcBottomSheet(context, sectionKey);
              } else if (url != null && url.startsWith('commentary://')) {
                final sectionKey = url.replaceFirst('commentary://', '');
                _showCommentaryBottomSheet(context, sectionKey);
              } else if (url != null) {
                launchUrl(
                    Uri.parse(url), mode: LaunchMode.externalApplication);
              }
            },
          ),
          const SizedBox(height: 60),
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
