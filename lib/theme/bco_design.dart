import 'package:flutter/material.dart';

/// Centralized design constants for the BCO app.
class BcoDesign {
  BcoDesign._();

  // Section color palette
  static const sectionColors = <String, Color>{
    'preface': Color(0xFF5C6B7A),
    'part1': Color(0xFF1B3A5C),
    'part2': Color(0xFF7A3333),
    'part3': Color(0xFF2E5C3A),
    'appendices': Color(0xFF6B5520),
    'supplemental': Color(0xFF4A3A6B),
    'wcf': Color(0xFF8B5E3C),
    'wlc': Color(0xFF8B5E3C),
    'wsc': Color(0xFF8B5E3C),
  };

  // Section icons
  static const sectionIcons = <String, IconData>{
    'preface': Icons.menu_book_rounded,
    'part1': Icons.account_balance_rounded,
    'part2': Icons.gavel_rounded,
    'part3': Icons.church_rounded,
    'appendices': Icons.attach_file_rounded,
    'supplemental': Icons.description_rounded,
    'wcf': Icons.auto_stories_rounded,
    'wlc': Icons.quiz_rounded,
    'wsc': Icons.question_answer_rounded,
  };

  // Westminster Standards color & icon
  static const westminsterColor = Color(0xFF8B5E3C);
  static const westminsterIcon = Icons.auto_stories_rounded;

  // Studies color
  static const studiesColor = Color(0xFF2E5C3A);

  // Commentary color
  static const commentaryColor = Color(0xFF5C7A8A);

  // Surface colors
  static const surfaceLight = Color(0xFFFAFAF8);
  static const surfaceDark = Color(0xFF111318);
}
