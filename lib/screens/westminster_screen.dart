import 'package:flutter/material.dart';
import '../data/westminster_structure.dart';
import '../models/bco_models.dart';
import '../theme/bco_design.dart';
import '../widgets/shared_actions.dart';
import 'part_screen.dart';

class WestminsterScreen extends StatelessWidget {
  const WestminsterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    const color = BcoDesign.westminsterColor;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            backgroundColor: Color.lerp(
              theme.colorScheme.surface,
              color,
              isDark ? 0.10 : 0.05,
            ),
            foregroundColor: theme.colorScheme.onSurface,
            actions: sharedAppBarActions(context),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Westminster Standards',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                Text(
                  'Confession of Faith, Larger & Shorter Catechisms',
                  style: TextStyle(
                    fontSize: 13,
                    color: theme.colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final standard = WestminsterStructure.standards[index];
                  return _StandardTile(standard: standard);
                },
                childCount: WestminsterStructure.standards.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StandardTile extends StatelessWidget {
  final BcoSection standard;

  const _StandardTile({required this.standard});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    const color = BcoDesign.westminsterColor;
    final hasContent = standard.chapters.isNotEmpty;

    final iconColor = isDark ? color.withAlpha(220) : color;
    final iconBgColor = isDark ? color.withAlpha(40) : color.withAlpha(18);

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(14),
        clipBehavior: Clip.antiAlias,
        elevation: isDark ? 0 : 0.5,
        shadowColor: theme.colorScheme.shadow.withAlpha(15),
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: hasContent
              ? () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PartScreen(section: standard),
                    ),
                  )
              : null,
          child: Container(
            decoration: BoxDecoration(
              color: isDark
                  ? theme.colorScheme.surfaceContainerHighest.withAlpha(60)
                  : theme.colorScheme.surfaceContainerLowest,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: isDark
                    ? color.withAlpha(20)
                    : theme.colorScheme.outlineVariant.withAlpha(80),
              ),
            ),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: iconBgColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  _iconForStandard(standard.id),
                  color: iconColor,
                  size: 24,
                ),
              ),
              title: Text(
                standard.title,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: hasContent
                      ? theme.colorScheme.onSurface
                      : theme.colorScheme.onSurface.withAlpha(120),
                ),
              ),
              subtitle: Text(
                hasContent
                    ? '${standard.chapters.length} chapters'
                    : 'Coming soon',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              trailing: hasContent
                  ? Icon(
                      Icons.chevron_right_rounded,
                      color:
                          theme.colorScheme.onSurfaceVariant.withAlpha(100),
                    )
                  : Icon(
                      Icons.hourglass_empty_rounded,
                      size: 18,
                      color:
                          theme.colorScheme.onSurfaceVariant.withAlpha(80),
                    ),
            ),
          ),
        ),
      ),
    );
  }

  IconData _iconForStandard(String id) {
    switch (id) {
      case 'wcf':
        return Icons.auto_stories_rounded;
      case 'wlc':
        return Icons.quiz_rounded;
      case 'wsc':
        return Icons.question_answer_rounded;
      default:
        return Icons.article_rounded;
    }
  }
}
