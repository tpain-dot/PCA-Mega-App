import 'package:flutter/material.dart';
import '../data/studies_structure.dart';
import '../data/study_text_toc.dart';
import '../widgets/shared_actions.dart';
import 'pdf_viewer_screen.dart';
import 'study_text_screen.dart';

class StudiesScreen extends StatelessWidget {
  const StudiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Studies & Reports'),
        actions: sharedAppBarActions(context),
      ),
      body: ListView(
        children: [
          _buildSectionHeader(theme, 'Studies & Reports'),
          ...StudiesStructure.categories.map(
            (cat) => _buildCategoryTile(context, theme, cat),
          ),
          const SizedBox(height: 32),
          Center(
            child: Text(
              'Content sourced from pcahistory.org',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant.withAlpha(120),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(ThemeData theme, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: theme.textTheme.labelMedium?.copyWith(
              color: theme.colorScheme.primary,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 6),
          Container(
            width: 32,
            height: 2,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withAlpha(60),
              borderRadius: BorderRadius.circular(1),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToStudy(BuildContext context, StudyDocument doc) {
    // Check if this document has a text version available
    final textConfig = studyTextVersions[doc.filename];
    if (textConfig != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => StudyTextScreen(
            title: doc.title,
            htmlAssetPath: textConfig.htmlAssetPath,
            pdfAssetPath: doc.assetPath,
            toc: textConfig.toc,
          ),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => PdfViewerScreen(
            title: doc.title,
            assetPath: doc.assetPath,
          ),
        ),
      );
    }
  }

  Widget _buildCategoryTile(
    BuildContext context,
    ThemeData theme,
    StudyCategory category,
  ) {
    // If only one document, navigate directly to it
    if (category.documents.length == 1) {
      final doc = category.documents.first;
      final hasText = studyTextVersions.containsKey(doc.filename);
      return ListTile(
        leading: Icon(
          hasText ? Icons.article_rounded : Icons.picture_as_pdf_rounded,
          size: 20,
        ),
        title: Text(category.title),
        trailing: const Icon(Icons.chevron_right_rounded),
        onTap: () => _navigateToStudy(context, doc),
      );
    }

    // Multiple documents — use an expansion tile
    return ExpansionTile(
      leading: const Icon(Icons.folder_rounded, size: 20),
      title: Text(category.title),
      children: category.documents.map((doc) {
        final hasText = studyTextVersions.containsKey(doc.filename);
        return ListTile(
          contentPadding: const EdgeInsets.only(left: 56, right: 16),
          leading: Icon(
            hasText ? Icons.article_rounded : Icons.picture_as_pdf_rounded,
            size: 18,
          ),
          title: Text(
            doc.title,
            style: theme.textTheme.bodyMedium,
          ),
          trailing: const Icon(Icons.chevron_right_rounded, size: 20),
          onTap: () => _navigateToStudy(context, doc),
        );
      }).toList(),
    );
  }
}
