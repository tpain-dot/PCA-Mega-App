import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/bco_models.dart';
import '../providers/app_state.dart';
import '../theme/bco_design.dart';
import '../widgets/shared_actions.dart';
import 'chapter_screen.dart';

class PartScreen extends StatefulWidget {
  final BcoSection section;

  const PartScreen({super.key, required this.section});

  @override
  State<PartScreen> createState() => _PartScreenState();
}

class _PartScreenState extends State<PartScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AppState>().loadSectionContent(widget.section);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = context.watch<AppState>();
    final isDark = theme.brightness == Brightness.dark;
    final sectionColor =
        BcoDesign.sectionColors[widget.section.id] ?? theme.colorScheme.primary;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            backgroundColor: isDark
                ? sectionColor.withAlpha(25)
                : sectionColor.withAlpha(12),
            foregroundColor: theme.colorScheme.onSurface,
            actions: sharedAppBarActions(context),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.section.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                if (widget.section.subtitle != null)
                  Text(
                    widget.section.subtitle!,
                    style: TextStyle(
                      fontSize: 13,
                      color: theme.colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
              ],
            ),
          ),
          if (state.isLoading)
            const SliverToBoxAdapter(
              child: LinearProgressIndicator(),
            ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
              child: Text(
                '${widget.section.chapters.length} chapters',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant.withAlpha(150),
                  letterSpacing: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final chapter = widget.section.chapters[index];
                  return _ChapterTile(
                    chapter: chapter,
                    isBookmarked: state.isBookmarked(chapter.id),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChapterScreen(
                          chapter: chapter,
                          section: widget.section,
                        ),
                      ),
                    ),
                    onBookmark: () => state.toggleBookmark(chapter.id),
                  );
                },
                childCount: widget.section.chapters.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ChapterTile extends StatelessWidget {
  final BcoChapter chapter;
  final bool isBookmarked;
  final VoidCallback onTap;
  final VoidCallback onBookmark;

  const _ChapterTile({
    required this.chapter,
    required this.isBookmarked,
    required this.onTap,
    required this.onBookmark,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasContent = chapter.htmlContent != null;

    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        leading: chapter.number != null
            ? Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withAlpha(80),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: theme.colorScheme.primary.withAlpha(25),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  '${chapter.number}',
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              )
            : null,
        title: Text(
          chapter.title,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!hasContent)
              Icon(
                Icons.cloud_download_outlined,
                size: 16,
                color: theme.colorScheme.onSurfaceVariant.withAlpha(80),
              ),
            IconButton(
              icon: Icon(
                isBookmarked
                    ? Icons.bookmark_rounded
                    : Icons.bookmark_border_rounded,
                color: isBookmarked
                    ? theme.colorScheme.primary
                    : theme.colorScheme.onSurfaceVariant.withAlpha(120),
                size: 20,
              ),
              onPressed: onBookmark,
              visualDensity: VisualDensity.compact,
            ),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
