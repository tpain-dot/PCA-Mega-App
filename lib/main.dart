import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'providers/app_state.dart';
import 'screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppState(),
      child: const BcoApp(),
    ),
  );
}

class BcoApp extends StatelessWidget {
  const BcoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, state, _) {
        return MaterialApp(
          title: 'BCO - Book of Church Order',
          debugShowCheckedModeBanner: false,
          themeMode: state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          theme: _buildTheme(Brightness.light),
          darkTheme: _buildTheme(Brightness.dark),
          home: const HomeScreen(),
        );
      },
    );
  }

  ThemeData _buildTheme(Brightness brightness) {
    final isDark = brightness == Brightness.dark;

    final colorScheme = isDark
        ? const ColorScheme.dark(
            primary: Color(0xFF9FB8D4),
            onPrimary: Color(0xFF0A1E36),
            primaryContainer: Color(0xFF1B3A5C),
            onPrimaryContainer: Color(0xFFD4E3F5),
            secondary: Color(0xFFB0BEC5),
            onSecondary: Color(0xFF1A1C1E),
            secondaryContainer: Color(0xFF2A3038),
            onSecondaryContainer: Color(0xFFE0E4E8),
            tertiary: Color(0xFFD4B96A),
            onTertiary: Color(0xFF362D10),
            tertiaryContainer: Color(0xFF5C4A1B),
            onTertiaryContainer: Color(0xFFF5E8C0),
            surface: Color(0xFF111318),
            onSurface: Color(0xFFE2E2E8),
            surfaceContainerHighest: Color(0xFF1E2028),
            outline: Color(0xFF44464F),
            outlineVariant: Color(0xFF2E3038),
            error: Color(0xFFFFB4AB),
            onError: Color(0xFF690005),
          )
        : const ColorScheme.light(
            primary: Color(0xFF1B3A5C),
            onPrimary: Color(0xFFFFFFFF),
            primaryContainer: Color(0xFFD4E3F5),
            onPrimaryContainer: Color(0xFF0A1E36),
            secondary: Color(0xFF546E7A),
            onSecondary: Color(0xFFFFFFFF),
            secondaryContainer: Color(0xFFE8EEF2),
            onSecondaryContainer: Color(0xFF1A2C34),
            tertiary: Color(0xFF8B7332),
            onTertiary: Color(0xFFFFFFFF),
            tertiaryContainer: Color(0xFFF5E8C0),
            onTertiaryContainer: Color(0xFF362D10),
            surface: Color(0xFFFAFAF8),
            onSurface: Color(0xFF1A1C1E),
            surfaceContainerHighest: Color(0xFFF0EDE8),
            outline: Color(0xFF74777F),
            outlineVariant: Color(0xFFDDDAD4),
            error: Color(0xFFBA1A1A),
            onError: Color(0xFFFFFFFF),
          );

    final baseTextTheme = ThemeData(brightness: brightness).textTheme;
    final merriweatherTheme = GoogleFonts.merriweatherTextTheme(baseTextTheme);
    final textTheme = merriweatherTheme.copyWith(
      headlineLarge: merriweatherTheme.headlineLarge?.copyWith(
        fontWeight: FontWeight.w700,
        letterSpacing: -0.5,
      ),
      headlineMedium: merriweatherTheme.headlineMedium?.copyWith(
        fontWeight: FontWeight.w700,
      ),
      headlineSmall: merriweatherTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.w700,
      ),
      titleLarge: merriweatherTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w700,
        letterSpacing: 0.15,
      ),
      titleMedium: merriweatherTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w600,
      ),
      labelLarge: merriweatherTheme.labelLarge?.copyWith(
        letterSpacing: 1.0,
        fontWeight: FontWeight.w600,
      ),
      labelSmall: merriweatherTheme.labelSmall?.copyWith(
        letterSpacing: 1.2,
      ),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 2,
        backgroundColor: colorScheme.surface,
        surfaceTintColor: colorScheme.primary.withAlpha(20),
      ),
      cardTheme: CardThemeData(
        elevation: 1,
        shadowColor: colorScheme.shadow.withAlpha(30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        clipBehavior: Clip.antiAlias,
      ),
      dividerTheme: DividerThemeData(
        color: colorScheme.outlineVariant.withAlpha(80),
        thickness: 0.5,
      ),
      listTileTheme: ListTileThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }
}
