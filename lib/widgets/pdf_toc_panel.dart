import 'package:flutter/material.dart';
import 'package:pdfrx/pdfrx.dart';

/// A panel that displays a PDF's outline (table of contents) as an
/// expandable tree. Intended for use inside a Drawer or side panel.
class PdfTocPanel extends StatelessWidget {
  final List<PdfOutlineNode> outline;
  final void Function(PdfDest dest) onDestinationTap;

  const PdfTocPanel({
    super.key,
    required this.outline,
    required this.onDestinationTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
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
        // Scrollable outline tree
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: _buildNodes(context, outline, 0),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildNodes(
    BuildContext context,
    List<PdfOutlineNode> nodes,
    int depth,
  ) {
    final theme = Theme.of(context);
    final widgets = <Widget>[];

    for (final node in nodes) {
      if (node.children.isEmpty) {
        // Leaf node — simple tappable tile
        widgets.add(
          ListTile(
            contentPadding: EdgeInsets.only(
              left: 16.0 + (depth * 16.0),
              right: 16,
            ),
            title: Text(
              node.title,
              style: theme.textTheme.bodyMedium?.copyWith(
                height: 1.3,
              ),
            ),
            dense: true,
            visualDensity: VisualDensity.compact,
            onTap: node.dest != null
                ? () => onDestinationTap(node.dest!)
                : null,
          ),
        );
      } else {
        // Branch node — expandable with children
        widgets.add(
          ExpansionTile(
            tilePadding: EdgeInsets.only(
              left: 16.0 + (depth * 16.0),
              right: 16,
            ),
            title: Text(
              node.title,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                height: 1.3,
              ),
            ),
            dense: true,
            visualDensity: VisualDensity.compact,
            initiallyExpanded: depth == 0,
            // If the parent node itself has a destination, allow tapping
            // the title area to navigate (in addition to expand/collapse).
            children: [
              if (node.dest != null)
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
                  onTap: () => onDestinationTap(node.dest!),
                ),
              ..._buildNodes(context, node.children, depth + 1),
            ],
          ),
        );
      }
    }

    return widgets;
  }
}
