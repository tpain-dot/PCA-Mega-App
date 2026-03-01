// Central registry of all flt-semantics-identifier values used in tests.
// Each entry maps a test-friendly constant to the identifier string used
// in the Flutter Semantics widget.
//
// When adding a new Semantics(identifier: '...') in Dart, add it here too.
export const IDS = {
  // Icon tap target identifiers (improve-icon-tap-targets feature)
  // Defined in lib/widgets/icon_tap_target_extension.dart
  SJC_ICON: 'sjc-icon',
  COMMENTARY_ICON: 'commentary-icon',
} as const;
