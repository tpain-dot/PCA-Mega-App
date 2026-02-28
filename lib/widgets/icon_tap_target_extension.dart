import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

/// flutter_html extension that renders `<sjc-icon>` and `<commentary-icon>`
/// custom tags as widgets with a 44×44 minimum tap target.
///
/// ## Why this exists
///
/// The icons were previously injected as `<a href="sjc://..."><sup>...</sup></a>`.
/// flutter_html's built-in <a> handler attaches a TapGestureRecognizer directly
/// to the TextSpan, so the tap target equals the visual text bounds (~12–15 px).
/// There is no way to expand this via CSS styles or HTML attributes.
///
/// The fix: injection services now emit custom tags (`<sjc-icon>`, `<commentary-icon>`)
/// which this extension renders as WidgetSpans with a GestureDetector constrained
/// to at least 44×44 logical pixels — the Apple HIG minimum for comfortable tapping.
///
/// ## Usage
///
/// Instantiate with tap callbacks and the current font size (so the icon scales
/// with the user's preferred font size setting), then pass as an extension:
///
/// ```dart
/// Html(
///   data: html,
///   extensions: [
///     IconTapTargetExtension(
///       onSjcTap: (key) => _showSjcBottomSheet(context, key),
///       onCommentaryTap: (key) => _showCommentaryBottomSheet(context, key),
///       fontSize: state.fontSize,
///     ),
///   ],
/// )
/// ```
class IconTapTargetExtension extends HtmlExtension {
  /// Called when an SJC icon is tapped. [key] is the section key
  /// (e.g. "bco_34-10") used to look up cases from SjcData.
  final void Function(String key) onSjcTap;

  /// Called when a commentary icon is tapped. [key] is the section key
  /// (e.g. "bco_1-1") used to look up entries from BcoCommentaryData.
  final void Function(String key) onCommentaryTap;

  /// The base font size from AppState. The icon text is rendered at 65% of
  /// this value, matching the existing <sup> style in chapter_screen.dart.
  final double fontSize;

  const IconTapTargetExtension({
    required this.onSjcTap,
    required this.onCommentaryTap,
    required this.fontSize,
  });

  // ─── HtmlExtension API ────────────────────────────────────────────────────

  @override
  Set<String> get supportedTags => const {'sjc-icon', 'commentary-icon'};

  @override
  InlineSpan build(ExtensionContext context) {
    final isSjc = context.elementName == 'sjc-icon';
    final key = context.attributes['key'] ?? '';
    final count = context.attributes['count'] ?? '';

    // Visual style — matches what the old <sup> used.
    const sjcColor = Color(0xFF8B5E3C);      // leather brown
    const commentaryColor = Color(0xFF5C7A8A); // slate blue
    final iconColor = isSjc ? sjcColor : commentaryColor;
    final iconFontSize = fontSize * 0.65;

    // Icon text: thin-space + glyph (+ count for SJC).
    // \u2009 = thin space; \u2696 = scales of justice; \uD83D\uDCDD = 📝
    final iconText = isSjc
        ? '\u2009\u2696$count'
        : '\u2009\uD83D\uDCDD';

    // Superscript vertical offset: shift the visual icon upward so it sits
    // at superscript height. Mirrors flutter_html's VerticalAlignBuiltIn
    // which uses fontSize / -2.5.
    final verticalOffset = iconFontSize / -2.5;

    // Minimum tap target: 44×44 logical pixels (Apple HIG minimum).
    // The GestureDetector covers the full 44×44 area even though the icon
    // is visually much smaller.
    //
    // We use SizedBox (not ConstrainedBox with only min constraints) because
    // inside a WidgetSpan the incoming maxWidth is the full line width. A bare
    // ConstrainedBox(minWidth: 44) + Center would let Center expand to fill
    // the entire line, pushing the icon onto its own centered line rather than
    // staying inline. SizedBox enforces an exact 44×44, keeping it inline.
    const double tapSize = 44.0;

    return WidgetSpan(
      // PlaceholderAlignment.middle centers the 44-px-tall box on the text
      // line. The visual icon is then shifted upward by Transform.translate,
      // landing at superscript height without displacing the text baseline.
      alignment: PlaceholderAlignment.middle,
      child: Semantics(
        identifier: isSjc ? 'sjc-icon' : 'commentary-icon',
        label: isSjc ? 'SJC reference' : 'Commentary reference',
        button: true,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque, // whole 44×44 area is tappable
          onTap: () {
            if (isSjc) {
              onSjcTap(key);
            } else {
              onCommentaryTap(key);
            }
          },
          child: SizedBox(
            width: tapSize,
            height: tapSize,
            child: Center(
              child: Transform.translate(
                offset: Offset(0, verticalOffset),
                child: Text(
                  iconText,
                  style: TextStyle(
                    color: iconColor,
                    fontSize: iconFontSize,
                    fontWeight: FontWeight.bold,
                    // Suppress any inherited text decoration (underline from <a>).
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
