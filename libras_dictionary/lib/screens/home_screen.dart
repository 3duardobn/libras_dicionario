// Copyright (C) 2026 Eduardo Barroso Nunes
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

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
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchTextChanged);
  }

  void _onSearchTextChanged() {
    setState(() {});
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchTextChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _runSearch(String query) {
    final trimmed = query.trim();
    if (trimmed.isEmpty) return;
    _searchController.text = trimmed;
    st.appState.performSearch(trimmed);
  }

  void _clearSearch() {
    _searchController.clear();
    st.appState.clearSearch();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: st.appState,
      builder: (context, _) {
        final state = st.appState;
        final isDark = state.isDark;
        final query = state.lastSearched ?? '';
        final ranked = query.isNotEmpty
            ? st.rankResults(state.searchResults, query)
            : <DictItem>[];
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
                icon: Icon(
                  state.isHighContrast
                      ? Icons.contrast
                      : (isDark ? Icons.light_mode : Icons.dark_mode),
                ),
                tooltip: state.isHighContrast
                    ? s.themeHighContrast
                    : (isDark ? s.themeLight : s.themeDark),
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
                          suffixIcon: _searchController.text.isNotEmpty
                              ? IconButton(
                                  icon: const Icon(Icons.clear, size: 20),
                                  onPressed: _clearSearch,
                                )
                              : null,
                        ),
                        textInputAction: TextInputAction.search,
                        onChanged: (value) {
                          state.searchQuery = value;
                          if (value.trim().isEmpty && state.lastSearched != null) {
                            state.clearSearch();
                          }
                        },
                        onSubmitted: _runSearch,
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () => _runSearch(_searchController.text),
                      child: const Text(s.searchButton),
                    ),
                  ],
                ),
              ),
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
                onPressed: () => state.performSearch(state.lastSearched ?? state.searchQuery),
                child: const Text(s.tryAgain),
              ),
            ],
          ),
        ),
      );
    }

    final searched = state.lastSearched;
    if (searched == null) {
      return Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
                size: 64,
                color: Colors.grey.shade400,
              ),
              const SizedBox(height: 16),
              Text(
                s.typeToSearch,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.center,
              ),
              if (state.recentSearches.isNotEmpty)
                _RecentSearchesBlock(
                  recents: state.recentSearches,
                  onSelected: _runSearch,
                  onDelete: state.removeRecentSearch,
                  onClearAll: state.clearRecentSearches,
                ),
            ],
          ),
        ),
      );
    }

    if (displayResults.isEmpty && !state.isSearching) {
      return Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.search_off,
                size: 64,
                color: Colors.grey.shade400,
              ),
              const SizedBox(height: 16),
              Text(
                s.noResultsFor(searched),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.center,
              ),
              if (state.showYoutubeButton)
                _YoutubeCard(query: searched),
            ],
          ),
        ),
      );
    }

    final disambiguations = _computeDisambiguations(displayResults);

    return ListView.builder(
      itemCount: displayResults.length,
      itemBuilder: (context, index) => DictionaryItemCard(
        item: displayResults[index],
        disambiguation: disambiguations[index],
        folio: index + 1,
      ),
    );
  }

  Map<int, DisambiguationInfo> _computeDisambiguations(List<DictItem> items) {
    final counts = <String, int>{};
    for (final item in items) {
      final key = '${item.source?.toUpperCase()}_${item.title?.toUpperCase()}';
      counts[key] = (counts[key] ?? 0) + 1;
    }

    final currentIndices = <String, int>{};
    final result = <int, DisambiguationInfo>{};
    for (var i = 0; i < items.length; i++) {
      final item = items[i];
      final key = '${item.source?.toUpperCase()}_${item.title?.toUpperCase()}';
      final total = counts[key] ?? 1;
      if (total > 1) {
        final cur = (currentIndices[key] ?? 0) + 1;
        currentIndices[key] = cur;
        result[i] = DisambiguationInfo(index: cur, total: total);
      }
    }
    return result;
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
              color: isDark
                  ? Colors.grey.shade400
                  : Theme.of(context).colorScheme.onSurfaceVariant,
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

class _RecentSearchesBlock extends StatelessWidget {
  const _RecentSearchesBlock({
    required this.recents,
    required this.onSelected,
    required this.onDelete,
    required this.onClearAll,
  });

  final List<String> recents;
  final ValueChanged<String> onSelected;
  final ValueChanged<String> onDelete;
  final VoidCallback onClearAll;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                s.recentSearches,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(width: 8),
              TextButton(
                onPressed: onClearAll,
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
                child: Text(
                  s.clearHistory,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.red.shade400,
                  ),
                ),
              ),
            ],
          ),
        ),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          alignment: WrapAlignment.center,
          children: [
            for (final query in recents)
              InputChip(
                avatar: const Icon(Icons.history, size: 16),
                label: Text(query, style: const TextStyle(fontSize: 13)),
                onPressed: () => onSelected(query),
                onDeleted: () => onDelete(query),
                deleteIcon: const Icon(Icons.close, size: 16),
                deleteButtonTooltipMessage: 'Remover $query',
                deleteIconColor: Colors.grey.shade500,
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
    return Container(
      height: 48,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.outline,
            width: 1,
          ),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _SteppedTab(
              source: 'Ambos',
              label: s.filterAll,
              isSelected: activeFilters.contains('Ambos'),
              isDark: isDark,
            ),
            const SizedBox(width: 4),
            for (final source in sortedSources) ...[
              _SteppedTab(
                source: source,
                label: sourceLabel(source),
                isSelected: activeFilters.contains(source),
                isDark: isDark,
              ),
              const SizedBox(width: 4),
            ],
          ],
        ),
      ),
    );
  }
}

/// One tab on the source rail. The active tab is the extended divider board
/// (full colour, taller); the others are recessed leaves. Height is the
/// fold, not a colour — so the selection reads even in High Contrast.
class _SteppedTab extends StatelessWidget {
  const _SteppedTab({
    required this.source,
    required this.label,
    required this.isSelected,
    required this.isDark,
  });

  final String source;
  final String label;
  final bool isSelected;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isHighContrast = st.appState.isHighContrast;
    final board = source == 'Ambos'
        ? scheme.primary
        : AppColors.forSource(source);
    final recessedBg =
        isDark ? const Color(0xFF2A2620) : const Color(0xFFE9E2D6);
    final recessedFg = isDark ? Colors.white70 : scheme.onSurfaceVariant;
    final height = isSelected ? 56.0 : 34.0;

    return GestureDetector(
      onTap: () {
        st.appState.onFilterChanged(source, !isSelected);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 90),
        curve: Curves.linear,
        height: height,
        constraints: BoxConstraints(minWidth: isSelected ? 96 : 72),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? board : recessedBg,
          border: isHighContrast
              ? Border.all(color: scheme.outline, width: 2)
              : null,
        ),
        child: isSelected
            ? FittedBox(
                fit: BoxFit.scaleDown,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      label.toUpperCase(),
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: isHighContrast ? 14 : 12,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.3,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      (source == 'Ambos' ? 'TODOS' : source).toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 8,
                        fontWeight: FontWeight.w700,
                        color: Colors.white.withValues(alpha: 0.85),
                      ),
                    ),
                  ],
                ),
              )
            : Text(
                label.toUpperCase(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: isHighContrast ? 14 : 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.3,
                  color: recessedFg,
                ),
              ),
      ),
    );
  }
}
