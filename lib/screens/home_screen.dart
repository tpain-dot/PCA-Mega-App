import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../data/bco_structure.dart';
import '../data/studies_structure.dart';
import '../data/westminster_structure.dart';
import '../models/bco_models.dart';
import '../providers/app_state.dart';
import '../theme/bco_design.dart';
import 'part_screen.dart';
import 'search_screen.dart';
import 'bookmarks_screen.dart';
import 'settings_screen.dart';
import 'studies_screen.dart';
import 'westminster_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _staggerController;

  @override
  void initState() {
    super.initState();
    _staggerController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _staggerController.forward();
  }

  @override
  void dispose() {
    _staggerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = context.watch<AppState>();
    final totalItems = BcoStructure.sections.length + 2; // +1 westminster, +1 studies

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: _HomeHeaderDelegate(
              minHeight: MediaQuery.of(context).padding.top + kToolbarHeight,
              maxHeight: 300,
              theme: theme,
              isDarkMode: state.isDarkMode,
              onSearch: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SearchScreen()),
              ),
              onBookmarks: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const BookmarksScreen()),
              ),
              onToggleTheme: () => state.toggleDarkMode(),
              onSettings: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SettingsScreen()),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final delay = index / (totalItems + 1);
                  final animation = CurvedAnimation(
                    parent: _staggerController,
                    curve: Interval(
                      delay,
                      (delay + 0.5).clamp(0.0, 1.0),
                      curve: Curves.easeOutCubic,
                    ),
                  );

                  final section = BcoStructure.sections[index];
                  return AnimatedBuilder(
                    animation: animation,
                    builder: (context, child) {
                      return Transform.translate(
                        offset: Offset(0, 20 * (1 - animation.value)),
                        child: Opacity(
                          opacity: animation.value,
                          child: child,
                        ),
                      );
                    },
                    child: _SectionCard(
                      section: section,
                      icon: BcoDesign.sectionIcons[section.id] ??
                          Icons.article_rounded,
                      color: BcoDesign.sectionColors[section.id] ??
                          theme.colorScheme.primary,
                    ),
                  );
                },
                childCount: BcoStructure.sections.length,
              ),
            ),
          ),
          // Westminster Standards card
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(
              child: AnimatedBuilder(
                animation: CurvedAnimation(
                  parent: _staggerController,
                  curve: Interval(
                    BcoStructure.sections.length / (totalItems + 1),
                    ((BcoStructure.sections.length / (totalItems + 1)) + 0.5)
                        .clamp(0.0, 1.0),
                    curve: Curves.easeOutCubic,
                  ),
                ),
                builder: (context, child) {
                  final t = CurvedAnimation(
                    parent: _staggerController,
                    curve: Interval(
                      BcoStructure.sections.length / (totalItems + 1),
                      ((BcoStructure.sections.length / (totalItems + 1)) + 0.5)
                          .clamp(0.0, 1.0),
                      curve: Curves.easeOutCubic,
                    ),
                  ).value;
                  return Transform.translate(
                    offset: Offset(0, 20 * (1 - t)),
                    child: Opacity(opacity: t, child: child),
                  );
                },
                child: const _WestminsterCard(),
              ),
            ),
          ),
          // Studies & Reports card
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(
              child: AnimatedBuilder(
                animation: CurvedAnimation(
                  parent: _staggerController,
                  curve: Interval(
                    (BcoStructure.sections.length + 1) / (totalItems + 1),
                    1.0,
                    curve: Curves.easeOutCubic,
                  ),
                ),
                builder: (context, child) {
                  final t = CurvedAnimation(
                    parent: _staggerController,
                    curve: Interval(
                      (BcoStructure.sections.length + 1) / (totalItems + 1),
                      1.0,
                      curve: Curves.easeOutCubic,
                    ),
                  ).value;
                  return Transform.translate(
                    offset: Offset(0, 20 * (1 - t)),
                    child: Opacity(opacity: t, child: child),
                  );
                },
                child: const _StudiesCard(),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 40),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Content sourced from pcaac.org & pcahistory.org\nIncludes amendments through the 52nd General Assembly',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant.withAlpha(120),
                  fontSize: 11,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Custom collapsing header
// ---------------------------------------------------------------------------

class _HomeHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final ThemeData theme;
  final bool isDarkMode;
  final VoidCallback onSearch;
  final VoidCallback onBookmarks;
  final VoidCallback onToggleTheme;
  final VoidCallback onSettings;

  _HomeHeaderDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.theme,
    required this.isDarkMode,
    required this.onSearch,
    required this.onBookmarks,
    required this.onToggleTheme,
    required this.onSettings,
  });

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final t = (shrinkOffset / (maxExtent - minExtent)).clamp(0.0, 1.0);
    final expandedOpacity = (1.0 - t * 2.5).clamp(0.0, 1.0);
    final isDark = theme.brightness == Brightness.dark;

    final gradientStart =
        isDark ? const Color(0xFF0D1B2A) : const Color(0xFF1B3A5C);
    final gradientEnd =
        isDark ? const Color(0xFF141C28) : const Color(0xFF264D73);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [gradientStart, gradientEnd],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Action bar — always visible
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  const SizedBox(width: 12),
                  if (t > 0.5)
                    Expanded(
                      child: Opacity(
                        opacity: ((t - 0.5) * 2).clamp(0.0, 1.0),
                        child: Text(
                          'PCA Polity App',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            fontFamily:
                                GoogleFonts.merriweather().fontFamily,
                          ),
                        ),
                      ),
                    )
                  else
                    const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.search_rounded,
                        color: Colors.white70),
                    onPressed: onSearch,
                  ),
                  IconButton(
                    icon: const Icon(Icons.bookmark_rounded,
                        color: Colors.white70),
                    onPressed: onBookmarks,
                  ),
                  IconButton(
                    icon: Icon(
                      isDarkMode
                          ? Icons.light_mode_rounded
                          : Icons.dark_mode_rounded,
                      color: Colors.white70,
                    ),
                    onPressed: onToggleTheme,
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings_rounded,
                        color: Colors.white70),
                    onPressed: onSettings,
                  ),
                ],
              ),
            ),

            // Expanded content — fades on scroll
            if (expandedOpacity > 0) ...[
              const Spacer(),
              Opacity(
                opacity: expandedOpacity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PCA',
                        style: TextStyle(
                          color: Colors.white.withAlpha(190),
                          fontSize: 26,
                          fontWeight: FontWeight.w300,
                          fontFamily:
                              GoogleFonts.merriweather().fontFamily,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Polity App',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                          fontFamily:
                              GoogleFonts.merriweather().fontFamily,
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: 40,
                        height: 2,
                        decoration: BoxDecoration(
                          color: Colors.white.withAlpha(80),
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '(UNOFFICIAL)',
                        style: TextStyle(
                          color: Colors.white.withAlpha(140),
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2.5,
                          fontFamily:
                              GoogleFonts.merriweather().fontFamily,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant _HomeHeaderDelegate oldDelegate) => true;
}

// ---------------------------------------------------------------------------
// Section card
// ---------------------------------------------------------------------------

class _SectionCard extends StatelessWidget {
  final BcoSection section;
  final IconData icon;
  final Color color;

  const _SectionCard({
    required this.section,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final baseColor = isDark ? color.withAlpha(35) : color.withAlpha(10);
    final gradientEnd = isDark ? color.withAlpha(18) : color.withAlpha(5);
    final iconBgColor = isDark ? color.withAlpha(40) : color.withAlpha(18);
    final iconColor = isDark ? color.withAlpha(220) : color;
    final accentColor = isDark ? color.withAlpha(120) : color.withAlpha(160);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        elevation: isDark ? 0 : 1,
        shadowColor: theme.colorScheme.shadow.withAlpha(20),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PartScreen(section: section),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [baseColor, gradientEnd],
              ),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: isDark ? color.withAlpha(25) : color.withAlpha(15),
              ),
            ),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  // Left accent stripe
                  Container(
                    width: 4,
                    decoration: BoxDecoration(
                      color: accentColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                    ),
                  ),

                  // Icon
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    child: Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        color: iconBgColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Icon(icon, color: iconColor, size: 26),
                    ),
                  ),

                  // Text
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            section.title,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                          if (section.subtitle != null) ...[
                            const SizedBox(height: 4),
                            Text(
                              section.subtitle!,
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                                height: 1.3,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                          const SizedBox(height: 6),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: iconColor.withAlpha(isDark ? 25 : 12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              '${section.chapters.length} ${section.chapters.length == 1 ? 'chapter' : 'chapters'}',
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: iconColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.chevron_right_rounded,
                      color:
                          theme.colorScheme.onSurfaceVariant.withAlpha(100),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Westminster Standards card
// ---------------------------------------------------------------------------

class _WestminsterCard extends StatelessWidget {
  const _WestminsterCard();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    const color = BcoDesign.westminsterColor;

    final baseColor = isDark ? color.withAlpha(35) : color.withAlpha(10);
    final gradientEnd = isDark ? color.withAlpha(18) : color.withAlpha(5);
    final iconBgColor = isDark ? color.withAlpha(40) : color.withAlpha(18);
    final iconColor = isDark ? color.withAlpha(220) : color;
    final accentColor = isDark ? color.withAlpha(120) : color.withAlpha(160);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        elevation: isDark ? 0 : 1,
        shadowColor: theme.colorScheme.shadow.withAlpha(20),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const WestminsterScreen()),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [baseColor, gradientEnd],
              ),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: isDark ? color.withAlpha(25) : color.withAlpha(15),
              ),
            ),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Container(
                    width: 4,
                    decoration: BoxDecoration(
                      color: accentColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    child: Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        color: iconBgColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Icon(BcoDesign.westminsterIcon,
                          color: iconColor, size: 26),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Westminster Standards',
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Confession of Faith, Larger & Shorter Catechisms',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                              height: 1.3,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 6),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: iconColor.withAlpha(isDark ? 25 : 12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              '${WestminsterStructure.totalChapters} chapters',
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: iconColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.chevron_right_rounded,
                      color:
                          theme.colorScheme.onSurfaceVariant.withAlpha(100),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Studies card
// ---------------------------------------------------------------------------

class _StudiesCard extends StatelessWidget {
  const _StudiesCard();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    const color = BcoDesign.studiesColor;

    final baseColor = isDark ? color.withAlpha(35) : color.withAlpha(10);
    final gradientEnd = isDark ? color.withAlpha(18) : color.withAlpha(5);
    final iconBgColor = isDark ? color.withAlpha(40) : color.withAlpha(18);
    final iconColor = isDark ? color.withAlpha(220) : color;
    final accentColor = isDark ? color.withAlpha(120) : color.withAlpha(160);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        elevation: isDark ? 0 : 1,
        shadowColor: theme.colorScheme.shadow.withAlpha(20),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const StudiesScreen()),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [baseColor, gradientEnd],
              ),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: isDark ? color.withAlpha(25) : color.withAlpha(15),
              ),
            ),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Container(
                    width: 4,
                    decoration: BoxDecoration(
                      color: accentColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    child: Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        color: iconBgColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Icon(Icons.library_books_rounded,
                          color: iconColor, size: 26),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Studies & Reports',
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'GA study committee reports and position papers',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                              height: 1.3,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 6),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: iconColor.withAlpha(isDark ? 25 : 12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              '${StudiesStructure.totalDocuments} documents',
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: iconColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.chevron_right_rounded,
                      color:
                          theme.colorScheme.onSurfaceVariant.withAlpha(100),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
