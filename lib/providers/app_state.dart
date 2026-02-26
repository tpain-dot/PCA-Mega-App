import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/bco_repository.dart';
import '../data/bco_structure.dart';
import '../data/westminster_structure.dart';
import '../models/bco_models.dart';

class AppState extends ChangeNotifier {
  final BcoRepository _repository = BcoRepository();
  final Set<String> _bookmarks = {};
  double _fontSize = 16.0;
  bool _isDarkMode = false;
  bool _isSerifFont = true;
  bool _showSjcReferences = false;
  bool _showBcoCommentary = false;
  bool _isLoading = false;
  String? _error;
  bool _contentLoaded = false;

  BcoRepository get repository => _repository;
  Set<String> get bookmarks => _bookmarks;
  double get fontSize => _fontSize;
  bool get isDarkMode => _isDarkMode;
  bool get isSerifFont => _isSerifFont;
  bool get showSjcReferences => _showSjcReferences;
  bool get showBcoCommentary => _showBcoCommentary;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get contentLoaded => _contentLoaded;

  AppState() {
    _loadPreferences();
  }

  Future<void> _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    _fontSize = prefs.getDouble('fontSize') ?? 16.0;
    _isDarkMode = prefs.getBool('isDarkMode') ?? false;
    _isSerifFont = prefs.getBool('isSerifFont') ?? true;
    _showSjcReferences = prefs.getBool('showSjcReferences') ?? false;
    _showBcoCommentary = prefs.getBool('showBcoCommentary') ?? false;

    final bookmarksJson = prefs.getStringList('bookmarks') ?? [];
    _bookmarks.addAll(bookmarksJson);

    notifyListeners();
  }

  Future<void> _savePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('fontSize', _fontSize);
    await prefs.setBool('isDarkMode', _isDarkMode);
    await prefs.setBool('isSerifFont', _isSerifFont);
    await prefs.setBool('showSjcReferences', _showSjcReferences);
    await prefs.setBool('showBcoCommentary', _showBcoCommentary);
    await prefs.setStringList('bookmarks', _bookmarks.toList());
  }

  void setFontSize(double size) {
    _fontSize = size.clamp(12.0, 28.0);
    _savePreferences();
    notifyListeners();
  }

  void toggleDarkMode() {
    _isDarkMode = !_isDarkMode;
    _savePreferences();
    notifyListeners();
  }

  void toggleSerifFont() {
    _isSerifFont = !_isSerifFont;
    _savePreferences();
    notifyListeners();
  }

  void toggleSjcReferences() {
    _showSjcReferences = !_showSjcReferences;
    _savePreferences();
    notifyListeners();
  }

  void toggleBcoCommentary() {
    _showBcoCommentary = !_showBcoCommentary;
    _savePreferences();
    notifyListeners();
  }

  void toggleBookmark(String chapterId) {
    if (_bookmarks.contains(chapterId)) {
      _bookmarks.remove(chapterId);
    } else {
      _bookmarks.add(chapterId);
    }
    _savePreferences();
    notifyListeners();
  }

  bool isBookmarked(String chapterId) => _bookmarks.contains(chapterId);

  List<BcoChapter> get bookmarkedChapters {
    return _bookmarks
        .map((id) {
          // Search BCO chapters first, then Westminster chapters
          return BcoStructure.findChapter(id) ??
              WestminsterStructure.allChapters
                  .cast<BcoChapter?>()
                  .firstWhere((ch) => ch?.id == id, orElse: () => null);
        })
        .where((ch) => ch != null)
        .cast<BcoChapter>()
        .toList();
  }

  Future<void> loadSectionContent(BcoSection section) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _repository.loadSectionChapters(section);
    } catch (e) {
      _error = 'Failed to load content.';
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> loadChapterContent(BcoChapter chapter) async {
    if (chapter.htmlContent != null) return;

    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _repository.loadChapterContent(chapter);
    } catch (e) {
      _error = 'Failed to load content.';
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> loadAllContent() async {
    if (_contentLoaded) return;

    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _repository.loadAllContent();
      _contentLoaded = true;
    } catch (e) {
      _error = 'Failed to load some content.';
    }

    _isLoading = false;
    notifyListeners();
  }

  List<SearchResult> search(String query) {
    return _repository.search(query);
  }

}
