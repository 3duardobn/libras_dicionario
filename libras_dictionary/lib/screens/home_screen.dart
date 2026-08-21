import 'package:flutter/material.dart';

import '../card.dart';
import '../models.dart';
import '../settings_screen.dart' show SettingsScreen, sourceLabel;
import '../state.dart' as st;
import '../strings.dart' as s;
import '../theme.dart';
import 'favorites_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _runSearch(String query) {
    _searchController.text = query;
    st.appState.searchQuery = query;
    st.appState.performSearch(query);
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: st.appState,
      builder: (context, _) {
        final state = st.appState;
        final isDark = state.themeMode == ThemeMode.dark;
        final query = state.lastSearched ?? state.searchQuery;
        final ranked = st.rankResults(state.searchResults, query);
        final List<DictItem> displayResults;
        if (state.activeFilters.contains('Ambos')) {
          displayResults = ranked
              .where((item) => state.enabledSources.contains(item.source))
              .toList();
        } else {
          displayResults = ranked
              .where((item) => state.activeFilters.contains(item.source))
              .toList();
        }

        final suggestions =
            state.searchQuery.isNotEmpty &&
                state.searchQuery != state.lastSearched &&
                !state.isSearching &&
                state.isSourceActive('INES')
            ? st.suggestionsFor(state.searchQuery, 6)
            : const <String>[];

        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text(s.appTitle),
            actions: [
              IconButton(
                icon: const Icon(Icons.star),
                tooltip: s.favoritesTitle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (_) => const FavoritesScreen()),
                  );
                },
              ),
              IconButton(
                icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
                onPressed: state.toggleTheme,
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (_) => const SettingsScreen()),
                  );
                },
              ),
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          labelText: s.searchLabel,
                          border: const OutlineInputBorder(),
                          suffixIcon: state.searchQuery.isNotEmpty
                              ? IconButton(
                                  icon: const Icon(Icons.clear, size: 20),
                                  onPressed: () {
                                    _searchController.clear();
                                    state.searchQuery = '';
                                  },
                                )
                              : null,
                        ),
                        textInputAction: TextInputAction.search,
                        onChanged: (value) => state.searchQuery = value,
                        onSubmitted: state.performSearch,
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () => state.performSearch(state.searchQuery),
                      child: const Text(s.searchButton),
                    ),
                  ],
                ),
              ),
              if (suggestions.isNotEmpty)
                _SuggestionList(
                    suggestions: suggestions, onSelected: _runSearch),
              _FilterChips(
                activeFilters: state.activeFilters,
                enabledSources: state.enabledSources,
                isDark: isDark,
              ),
              if (state.failedSources.isNotEmpty)
                _FailedSourcesBanner(failedSources: state.failedSources),
              if (state.isSearching) const LinearProgressIndicator(),
              Expanded(
                child: _buildBody(state, displayResults),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildBody(st.AppState state, List<DictItem> displayResults) {
    final errorMessage = state.errorMessage;
    if (errorMessage != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.wifi_off, size: 56, color: Colors.red.shade400),
              const SizedBox(height: 16),
              Text(
                errorMessage,
                style: TextStyle(fontSize: 15, color: Colors.red.shade700),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => state.performSearch(state.searchQuery),
                child: const Text(s.tryAgain),
              ),
            ],
          ),
        ),
      );
    }

    if (displayResults.isEmpty && !state.isSearching) {
      final blank = state.searchQuery.trim().isEmpty;
      return Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                blank ? Icons.search : Icons.search_off,
                size: 64,
                color: Colors.grey.shade400,
              ),
              const SizedBox(height: 16),
              Text(
                blank ? s.typeToSearch : s.noResultsFor(state.searchQuery),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.center,
              ),
              if (!blank && state.showYoutubeButton)
                _YoutubeCard(query: state.searchQuery),
              if (blank && state.recentSearches.isNotEmpty)
                _RecentSearchesBlock(
                  recents: state.recentSearches,
                  onSelected: _runSearch,
                ),
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: displayResults.length,
      itemBuilder: (context, index) =>
          DictionaryItemCard(item: displayResults[index]),
    );
  }
}

class _YoutubeCard extends StatelessWidget {
  const _YoutubeCard({required this.query});

  final String query;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF2A292E) : const Color(0xFFF4F6FB),
        borderRadius: BorderRadius.circular(AppRadius.card),
        border: Border.all(
          color: AppColors.sourceYoutube.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.play_circle_filled,
                size: 28,
                color: AppColors.sourceYoutube,
              ),
              const SizedBox(width: 8),
              Text(
                s.searchYoutube,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            s.notFoundDictionaries,
            style: TextStyle(
              fontSize: 13,
              color: isDark ? Colors.grey.shade400 : AppColors.neutralMuted,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 14),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.sourceYoutube,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.input),
              ),
            ),
            onPressed: () => st.appState.openYoutubeSearch(query),
            icon: const Icon(Icons.open_in_new, size: 18),
            label: Text(
              s.searchYoutubeFor(query),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class _FailedSourcesBanner extends StatelessWidget {
  const _FailedSourcesBanner({required this.failedSources});

  final List<String> failedSources;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.amber.shade700.withValues(alpha: 0.15),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Icon(Icons.warning_amber, size: 18, color: Colors.amber.shade800),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              s.sourcesUnavailable(failedSources.join(', ')),
              style: TextStyle(fontSize: 13, color: Colors.amber.shade900),
            ),
          ),
        ],
      ),
    );
  }
}

class _SuggestionList extends StatelessWidget {
  const _SuggestionList({required this.suggestions, required this.onSelected});

  final List<String> suggestions;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        spacing: 8,
        runSpacing: 4,
        children: [
          for (final word in suggestions)
            ActionChip(
              label: Text(word, style: const TextStyle(fontSize: 13)),
              onPressed: () => onSelected(word),
            ),
        ],
      ),
    );
  }
}

class _RecentSearchesBlock extends StatelessWidget {
  const _RecentSearchesBlock({required this.recents, required this.onSelected});

  final List<String> recents;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 8),
          child: Text(
            s.recentSearches,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade600,
            ),
          ),
        ),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          alignment: WrapAlignment.center,
          children: [
            for (final query in recents)
              ActionChip(
                avatar: const Icon(Icons.history, size: 16),
                label: Text(query, style: const TextStyle(fontSize: 13)),
                onPressed: () => onSelected(query),
              ),
          ],
        ),
      ],
    );
  }
}

class _FilterChips extends StatelessWidget {
  const _FilterChips({
    required this.activeFilters,
    required this.enabledSources,
    required this.isDark,
  });

  final Set<String> activeFilters;
  final Set<String> enabledSources;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final sortedSources = enabledSources.toList()..sort();
    return SizedBox(
      height: 44,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Row(
          children: [
            _AnimatedFilterChip(
              source: 'Ambos',
              label: s.filterAll,
              isSelected: activeFilters.contains('Ambos'),
              selectedColor: AppColors.primary,
              isDark: isDark,
              bold: true,
            ),
            const SizedBox(width: 8),
            for (final source in sortedSources) ...[
              _AnimatedFilterChip(
                source: source,
                label: sourceLabel(source),
                isSelected: activeFilters.contains(source),
                selectedColor: AppColors.forSource(source),
                isDark: isDark,
              ),
              const SizedBox(width: 8),
            ],
          ],
        ),
      ),
    );
  }
}

class _AnimatedFilterChip extends StatelessWidget {
  const _AnimatedFilterChip({
    required this.source,
    required this.label,
    required this.isSelected,
    required this.selectedColor,
    required this.isDark,
    this.bold = false,
  });

  final String source;
  final String label;
  final bool isSelected;
  final Color selectedColor;
  final bool isDark;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    final unselectedBg =
        isDark ? const Color(0xFF2C2B30) : const Color(0xFFEFF1F5);
    final unselectedFg = isDark ? Colors.white70 : AppColors.neutralText;

    return AnimatedScale(
      scale: isSelected ? 1.04 : 1.0,
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOutCubic,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOutCubic,
        decoration: BoxDecoration(
          color: isSelected ? selectedColor : unselectedBg,
          borderRadius: BorderRadius.circular(AppRadius.chip),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: selectedColor.withValues(alpha: 0.35),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ]
              : null,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(AppRadius.chip),
            onTap: () {
              st.appState.onFilterChanged(source, !isSelected);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 220),
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: (bold || isSelected)
                      ? FontWeight.bold
                      : FontWeight.w500,
                  color: isSelected ? Colors.white : unselectedFg,
                ),
                child: Text(label),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
