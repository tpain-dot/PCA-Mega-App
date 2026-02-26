import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../providers/app_state.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = context.watch<AppState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          // App identity header
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer.withAlpha(80),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Icon(
                      Icons.menu_book_rounded,
                      color: theme.colorScheme.primary,
                      size: 28,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'BCO Reader',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Version 1.0.0',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant.withAlpha(140),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: 60,
                    child: Divider(
                      color: theme.colorScheme.outlineVariant.withAlpha(120),
                      thickness: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildSectionHeader(theme, 'Appearance'),
          SwitchListTile(
            title: const Text('Dark Mode'),
            subtitle: const Text('Use dark color scheme'),
            secondary: Icon(
              state.isDarkMode
                  ? Icons.dark_mode_rounded
                  : Icons.light_mode_rounded,
            ),
            value: state.isDarkMode,
            onChanged: (_) => state.toggleDarkMode(),
          ),
          SwitchListTile(
            title: const Text('Serif Font'),
            subtitle: Text(
              state.isSerifFont ? 'Using serif typeface' : 'Using sans-serif typeface',
            ),
            secondary: const Icon(Icons.font_download_rounded),
            value: state.isSerifFont,
            onChanged: (_) => state.toggleSerifFont(),
          ),
          ListTile(
            leading: const Icon(Icons.text_fields_rounded),
            title: const Text('Font Size'),
            subtitle: Text('${state.fontSize.toInt()} pt'),
            trailing: SizedBox(
              width: 200,
              child: Slider(
                value: state.fontSize,
                min: 12,
                max: 28,
                divisions: 16,
                label: '${state.fontSize.toInt()}',
                onChanged: (v) => state.setFontSize(v),
              ),
            ),
          ),
          const Divider(),
          _buildSectionHeader(theme, 'References'),
          SwitchListTile(
            title: const Text('SJC Case References'),
            subtitle: const Text(
              'Show judicial decision markers in BCO and Westminster Standards',
            ),
            secondary: const Icon(Icons.gavel_rounded),
            value: state.showSjcReferences,
            onChanged: (_) => state.toggleSjcReferences(),
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline_rounded,
              color: theme.colorScheme.onSurfaceVariant.withAlpha(140),
            ),
            title: Text(
              'Curated references to Standing Judicial Commission decisions '
              'that interpret specific provisions. Tap markers in the text '
              'to see case summaries and links to full decisions.\n\n'
              'Case summaries are computer-generated and may contain '
              'errors. Each entry links to the original decision for '
              'verification.',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          const SizedBox(height: 8),
          SwitchListTile(
            title: const Text('Historical Commentary'),
            subtitle: const Text(
              'Show commentary markers from historical BCO expositions',
            ),
            secondary: const Icon(Icons.history_edu_rounded),
            value: state.showBcoCommentary,
            onChanged: (_) => state.toggleBcoCommentary(),
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline_rounded,
              color: theme.colorScheme.onSurfaceVariant.withAlpha(140),
            ),
            title: Text(
              'Scholarly commentary sourced from pcahistory.org, primarily '
              'F.P. Ramsay\'s Exposition of the Book of Church Order (1898) '
              'and Morton H. Smith\'s Commentary (2007). '
              'Tap markers in the text to read commentary with links to '
              'the full source pages.',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          const Divider(),
          _buildSectionHeader(theme, 'About'),
          ListTile(
            leading: const Icon(Icons.info_outline_rounded),
            title: const Text('About'),
            subtitle: const Text(
              'Content from the PCA Book of Church Order, '
              'sourced from pcaac.org. Includes amendments '
              'through the 52nd General Assembly.',
            ),
          ),
          ListTile(
            leading: const Icon(Icons.open_in_new_rounded),
            title: const Text('Visit pcaac.org'),
            subtitle: const Text('Official PCA Administrative Committee website'),
            onTap: () {
              launchUrl(
                Uri.parse('https://www.pcaac.org/book-of-church-order/'),
                mode: LaunchMode.externalApplication,
              );
            },
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(ThemeData theme, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
      child: Text(
        title.toUpperCase(),
        style: theme.textTheme.labelMedium?.copyWith(
          color: theme.colorScheme.primary,
          letterSpacing: 1.5,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
