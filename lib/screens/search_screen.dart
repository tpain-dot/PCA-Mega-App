import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/bco_structure.dart';
import '../data/westminster_structure.dart';
import '../models/bco_models.dart';
import '../providers/app_state.dart';
import '../theme/bco_design.dart';
import '../widgets/shared_actions.dart';
import 'chapter_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  List<SearchResult> _results = [];
  bool _isSearching = false;
  bool _contentLoading = false;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
      _loadContent();
    });
  }

  Future<void> _loadContent() async {
    final state = context.read<AppState>();
    if (!state.contentLoaded) {
      setState(() => _contentLoading = true);
      await state.loadAllContent();
      if (mounted) setState(() => _contentLoading = false);
    }
  }

  void _onSearchChanged(String query) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      _performSearch(query);
    });
  }

  void _performSearch(String query) {
    if (query.trim().length < 2) {
      setState(() {
        _results = [];
        _isSearching = false;
      });
      return;
    }

    setState(() => _isSearching = true);

    final state = context.read<AppState>();
    final results = state.search(query.trim());

    setState(() {
      _results = results;
      _isSearching = false;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _controller,
          focusNode: _focusNode,
          onChanged: _onSearchChanged,
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: theme.colorScheme.onSurfaceVariant.withAlpha(150),
            ),
          ),
          style: theme.textTheme.bodyLarge,
        ),
        actions: [
          if (_controller.text.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.clear_rounded),
              onPressed: () {
                _controller.clear();
                _performSearch('');
                _focusNode.requestFocus();
              },
            ),
          ...sharedAppBarActions(context, showSearch: false),
        ],
      ),
      body: _buildBody(theme),
    );
  }

  Widget _buildBody(ThemeData theme) {
    if (_contentLoading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(
              'Loading content for search...',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    if (_controller.text.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.menu_book_rounded,
                  size: 64,
                  color: theme.colorScheme.primary.withAlpha(35),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.search_rounded,
                      size: 24,
                      color: theme.colorScheme.primary.withAlpha(80),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Search All Content',
              style: theme.textTheme.titleSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'Find text across the BCO and Westminster Standards',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant.withAlpha(140),
              ),
            ),
          ],
        ),
      );
    }

    if (_isSearching) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_results.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off_rounded,
              size: 48,
              color: theme.colorScheme.onSurfaceVariant.withAlpha(80),
            ),
            const SizedBox(height: 16),
            Text(
              'No results found',
              style: theme.textTheme.titleSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: _results.length,
      separatorBuilder: (context, index) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final result = _results[index];
        final chapter = result.chapter;
        final section = BcoStructure.findSection(chapter.sectionId) ??
            WestminsterStructure.standards
                .cast<BcoSection?>()
                .firstWhere((s) => s?.id == chapter.sectionId,
                    orElse: () => null);
        final sectionColor =
            BcoDesign.sectionColors[chapter.sectionId] ??
                theme.colorScheme.primary;

        return ListTile(
          leading: Container(
            width: 4,
            height: 40,
            decoration: BoxDecoration(
              color: sectionColor.withAlpha(150),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          title: Text(
            chapter.number != null
                ? 'Chapter ${chapter.number}: ${chapter.title}'
                : chapter.title,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: _buildHighlightedSnippet(
              result.snippet,
              _controller.text.trim(),
              theme,
            ),
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
        );
      },
    );
  }

  Widget _buildHighlightedSnippet(
      String snippet, String query, ThemeData theme) {
    final lowerSnippet = snippet.toLowerCase();
    final lowerQuery = query.toLowerCase();
    final idx = lowerSnippet.indexOf(lowerQuery);

    if (idx == -1) {
      return Text(
        snippet,
        style: theme.textTheme.bodySmall?.copyWith(
          color: theme.colorScheme.onSurfaceVariant,
        ),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      );
    }

    return RichText(
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        style: theme.textTheme.bodySmall?.copyWith(
          color: theme.colorScheme.onSurfaceVariant,
        ),
        children: [
          TextSpan(text: snippet.substring(0, idx)),
          TextSpan(
            text: snippet.substring(idx, idx + query.length),
            style: TextStyle(
              backgroundColor: theme.colorScheme.primaryContainer,
              color: theme.colorScheme.onPrimaryContainer,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: snippet.substring(idx + query.length)),
        ],
      ),
    );
  }
}
