import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/bco_structure.dart';
import '../data/westminster_structure.dart';
import '../models/bco_models.dart';
import '../providers/app_state.dart';
import '../theme/bco_design.dart';
import '../widgets/shared_actions.dart';
import 'chapter_screen.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = context.watch<AppState>();
    final bookmarked = state.bookmarkedChapters;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmarks'),
        actions: sharedAppBarActions(context),
      ),
      body: bookmarked.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.bookmark_border_rounded,
                    size: 56,
                    color: theme.colorScheme.primary.withAlpha(50),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'No Bookmarks Yet',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Tap the bookmark icon on any chapter\nto save it here for quick access.',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant.withAlpha(140),
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: bookmarked.length,
              itemBuilder: (context, index) {
                final chapter = bookmarked[index];
                final section = BcoStructure.findSection(chapter.sectionId) ??
                    WestminsterStructure.standards
                        .cast<BcoSection?>()
                        .firstWhere((s) => s?.id == chapter.sectionId,
                            orElse: () => null);
                final sectionColor =
                    BcoDesign.sectionColors[chapter.sectionId] ??
                        theme.colorScheme.primary;

                return Dismissible(
                  key: Key(chapter.id),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.error,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(
                      Icons.delete_rounded,
                      color: theme.colorScheme.onError,
                    ),
                  ),
                  onDismissed: (_) => state.toggleBookmark(chapter.id),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Card(
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Container(
                              width: 4,
                              decoration: BoxDecoration(
                                color: sectionColor.withAlpha(150),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                leading: chapter.number != null
                                    ? Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.primaryContainer
                                              .withAlpha(80),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          '${chapter.number}',
                                          style: theme.textTheme.titleSmall
                                              ?.copyWith(
                                            color:
                                                theme.colorScheme.primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    : null,
                                title: Text(
                                  chapter.title,
                                  style:
                                      theme.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                subtitle: section != null
                                    ? Text(
                                        section.title,
                                        style: theme.textTheme.bodySmall
                                            ?.copyWith(
                                          color: theme.colorScheme
                                              .onSurfaceVariant,
                                        ),
                                      )
                                    : null,
                                trailing: IconButton(
                                  icon: Icon(
                                    Icons.bookmark_rounded,
                                    color: theme.colorScheme.primary,
                                  ),
                                  onPressed: () =>
                                      state.toggleBookmark(chapter.id),
                                ),
                                onTap: () {
                                  if (section != null) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => ChapterScreen(
                                          chapter: chapter,
                                          section: section,
                                        ),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
