import 'package:flutter/material.dart';
import '../screens/search_screen.dart';
import '../screens/settings_screen.dart';

/// Shared AppBar action buttons for search and settings.
///
/// Set [showSearch] or [showSettings] to false on the respective
/// screens to avoid circular navigation.
List<Widget> sharedAppBarActions(
  BuildContext context, {
  bool showSearch = true,
  bool showSettings = true,
}) {
  return [
    if (showSearch)
      IconButton(
        icon: const Icon(Icons.search_rounded),
        tooltip: 'Search',
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const SearchScreen()),
        ),
      ),
    if (showSettings)
      IconButton(
        icon: const Icon(Icons.settings_rounded),
        tooltip: 'Settings',
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const SettingsScreen()),
        ),
      ),
  ];
}
