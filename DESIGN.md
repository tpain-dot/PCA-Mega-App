# Design: Search Scope Filter

## Approach

Add a `SearchScope` enum with three values (`all`, `bco`, `standards`) and thread it through three layers: the repository (filtering which chapter lists to search), the app state (persistence via SharedPreferences and reactive notification), and the search screen UI (a compact dropdown in the AppBar).

The enum lives in `bco_repository.dart` — it's one line and consumed by two files that already import it. `AppState` follows the established preference pattern: private field, getter, setter calling `notifyListeners()` + `_savePreferences()`. The search screen AppBar wraps the existing TextField in a `Row` with the dropdown to its left. Scope changes trigger an immediate re-search if there's an active query. All content continues to be loaded regardless of scope — scope only affects which pre-loaded chapters are iterated during search.

## Changes by File

### `lib/data/bco_repository.dart`
- **What:** Add `SearchScope` enum at file top. Update `search()` to accept `{SearchScope scope = SearchScope.all}`.
- **Why:** The repository assembles the chapter list — this is the natural filtering point.
- **How:** Replace the hardcoded `allChapters` list with a switch on `scope`:
  ```dart
  enum SearchScope { all, bco, standards }
  ```
  ```dart
  List<SearchResult> search(String query, {SearchScope scope = SearchScope.all}) {
    final List<BcoChapter> chaptersToSearch;
    switch (scope) {
      case SearchScope.all:
        chaptersToSearch = [...BcoStructure.allChapters, ...WestminsterStructure.allChapters];
      case SearchScope.bco:
        chaptersToSearch = BcoStructure.allChapters;
      case SearchScope.standards:
        chaptersToSearch = WestminsterStructure.allChapters;
    }
    // ... rest unchanged, iterate chaptersToSearch instead of allChapters
  ```

### `lib/providers/app_state.dart`
- **What:** Add `_searchScope` field, getter, `setSearchScope()` setter, and SharedPreferences persistence.
- **Why:** Follows the identical pattern used for `_isDarkMode`, `_isSerifFont`, etc.
- **How:**
  ```dart
  SearchScope _searchScope = SearchScope.all;
  SearchScope get searchScope => _searchScope;

  void setSearchScope(SearchScope scope) {
    _searchScope = scope;
    _savePreferences();
    notifyListeners();
  }
  ```
  In `_loadPreferences()`:
  ```dart
  final scopeStr = prefs.getString('searchScope') ?? 'all';
  _searchScope = SearchScope.values.firstWhere(
    (s) => s.name == scopeStr,
    orElse: () => SearchScope.all,
  );
  ```
  In `_savePreferences()`:
  ```dart
  await prefs.setString('searchScope', _searchScope.name);
  ```
  Update `search()` to forward the scope:
  ```dart
  List<SearchResult> search(String query) {
    return _repository.search(query, scope: _searchScope);
  }
  ```

### `lib/screens/search_screen.dart`
- **What:** Add `DropdownButton<SearchScope>` in AppBar, dynamic hint/empty-state text, re-search on scope change.
- **Why:** This is the only screen using global search.
- **How — AppBar layout:**
  ```dart
  title: Row(
    children: [
      _buildScopeDropdown(theme),
      const SizedBox(width: 8),
      Expanded(child: TextField(/* existing, with dynamic hintText */)),
    ],
  ),
  ```
- **How — dropdown:**
  ```dart
  Widget _buildScopeDropdown(ThemeData theme) {
    final state = context.watch<AppState>();
    return DropdownButton<SearchScope>(
      value: state.searchScope,
      underline: const SizedBox.shrink(),
      isDense: true,
      style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurface),
      dropdownColor: theme.colorScheme.surface,
      items: const [
        DropdownMenuItem(value: SearchScope.all, child: Text('All')),
        DropdownMenuItem(value: SearchScope.bco, child: Text('BCO')),
        DropdownMenuItem(value: SearchScope.standards, child: Text('Standards')),
      ],
      onChanged: (scope) {
        if (scope != null) {
          state.setSearchScope(scope);
          if (_controller.text.trim().length >= 2) {
            _performSearch(_controller.text);
          }
        }
      },
    );
  }
  ```
- **How — dynamic text:** Local getters `_hintText`, `_emptyStateTitle`, `_emptyStateSubtitle` that switch on `context.read<AppState>().searchScope`.
- **How — reactivity:** Use `context.watch<AppState>()` in `build()` so the widget rebuilds when scope changes.

## Alternatives Considered

- **Separate `lib/models/search_scope.dart` file** — Rejected: 1-line enum, consumed by 2 files that already share an import. No value in a separate file.
- **`SegmentedButton` instead of `DropdownButton`** — Rejected: three segments consume too much horizontal space in the AppBar on narrow screens. Dropdown collapses to current selection only.
- **Below-AppBar placement** — Rejected as primary: spec recommends inline. Dropdown with short labels ("All", "BCO", "Standards") fits. Available as fallback if needed.
- **Scope as parameter to `AppState.search()`** — Rejected: scope is a persistent user preference, not transient per-call data. Reading the field internally is consistent with how other preferences work.

## Edge Cases

- **Invalid/missing SharedPreferences value** → `firstWhere(..., orElse: () => SearchScope.all)` provides safe fallback.
- **Scope change with active results** → `onChanged` calls `setSearchScope()` then `_performSearch()`, which re-runs the query synchronously with the new scope.
- **Scope change with empty query** → `_performSearch` guard clears results. Empty-state text updates via rebuild from `notifyListeners()`.
- **First launch** → `prefs.getString('searchScope')` returns null, `?? 'all'` fallback maps to `SearchScope.all`.
- **Dark mode** → Explicit `dropdownColor: theme.colorScheme.surface` and `style` with `theme.colorScheme.onSurface` ensure correct appearance.
- **Small screens** → "Standards" (~100px with arrow) + TextField in `Expanded` leaves adequate room. If too tight, `AppBar.bottom` with `PreferredSize` is the fallback.
- **Rapid scope switching** → Search is synchronous (in-memory plaintext iteration). No async operations, no race conditions.

## Open Questions

None — the feature spec is detailed and unambiguous. Minor styling decisions (dropdown icon color) will be resolved during implementation based on visual testing.
