import 'dart:io';

import 'package:flutter/material.dart';

import 'card.dart';
import 'models.dart';
import 'settings_screen.dart';
import 'state.dart' as st;
import 'strings.dart' as s;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = _MyHttpOverrides();
  await st.appState.loadSettings();
  // Fire-and-forget: warms autocomplete + offline cache in background.
  st.appState.preloadInes();
  runApp(const LibrasDictionaryApp());
}

class _MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (cert, host, port) => true;
  }
}

class LibrasDictionaryApp extends StatelessWidget {
  const LibrasDictionaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: st.appState,
      builder: (context, _) {
        return MaterialApp(
          title: s.appTitle,
          debugShowCheckedModeBanner: false,
          themeMode: st.appState.themeMode,
          theme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.light,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue,
              brightness: Brightness.dark,
            ),
          ),
          home: const HomePage(),
        );
      },
    );
  }
}

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(s.favoritesTitle)),
      body: ListenableBuilder(
        listenable: st.appState,
        builder: (context, _) {
          final favorites = st.appState.favorites;
          if (favorites.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star_border, size: 64, color: Colors.grey.shade400),
                    const SizedBox(height: 16),
                    Text(
                      s.favoritesEmpty,
                      style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          }
          return ListView.builder(
            itemCount: favorites.length,
            itemBuilder: (context, index) =>
                DictionaryItemCard(item: favorites[index]),
          );
        },
      ),
    );
  }
}

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
                !state.isSearching
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
                    MaterialPageRoute<void>(builder: (_) => const FavoritesScreen()),
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
                    MaterialPageRoute<void>(builder: (_) => const SettingsScreen()),
                  );
                },
              ),
            ],
          ),
          floatingActionButton: state.showYoutubeButton
              ? FloatingActionButton.extended(
                  onPressed: () => state.openYoutubeSearch(state.searchQuery),
                  backgroundColor: const Color(0xFF1565C0),
                  icon: const Icon(Icons.play_circle_filled, color: Colors.white),
                  label: const Text(
                    s.youtubeButton,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  tooltip: s.youtubeTooltip,
                )
              : null,
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
                _SuggestionList(suggestions: suggestions, controller: _searchController),
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
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        s.notFoundDictionaries,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    TextButton(
                      onPressed: () => state.openYoutubeSearch(state.searchQuery),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.play_circle_filled,
                            size: 18,
                            color: Color(0xFF1565C0),
                          ),
                          SizedBox(width: 6),
                          Text(
                            s.searchYoutube,
                            style: TextStyle(
                              color: Color(0xFF1565C0),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              if (blank && state.recentSearches.isNotEmpty)
                _RecentSearchesBlock(
                  recents: state.recentSearches,
                  controller: _searchController,
                ),
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: displayResults.length,
      itemBuilder: (context, index) => DictionaryItemCard(item: displayResults[index]),
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
  const _SuggestionList({required this.suggestions, required this.controller});

  final List<String> suggestions;
  final TextEditingController controller;

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
              onPressed: () {
                controller.text = word;
                st.appState.searchQuery = word;
                st.appState.performSearch(word);
              },
            ),
        ],
      ),
    );
  }
}

class _RecentSearchesBlock extends StatelessWidget {
  const _RecentSearchesBlock({required this.recents, required this.controller});

  final List<String> recents;
  final TextEditingController controller;

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
                onPressed: () {
                  controller.text = query;
                  st.appState.searchQuery = query;
                  st.appState.performSearch(query);
                },
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

  String _displayLabel(String source) {
    switch (source) {
      case 'RedeSurdos':
        return 'Rede Surdos';
      case 'LibrasAcademicaUFF':
        return 'Libras Acadêmica';
      default:
        return source;
    }
  }

  Widget _chip({
    required String source,
    required String label,
    required bool isSelected,
    required Color selectedColor,
    bool bold = false,
  }) {
    final labelColor = isSelected
        ? Colors.white
        : (isDark ? Colors.white : const Color(0xFF1C1B1F));
    return FilterChip(
      label: Text(
        label,
        style: TextStyle(
          fontSize: 13,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
          color: labelColor,
        ),
      ),
      selected: isSelected,
      onSelected: (value) => st.appState.onFilterChanged(source, value),
      showCheckmark: false,
      selectedColor: selectedColor,
      backgroundColor: Colors.grey.shade600.withValues(alpha: 0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 1,
      pressElevation: 2,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
    );
  }

  @override
  Widget build(BuildContext context) {
    final sortedSources = enabledSources.toList()..sort();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        alignment: WrapAlignment.center,
        children: [
          _chip(
            source: 'Ambos',
            label: s.filterAll,
            isSelected: activeFilters.contains('Ambos'),
            selectedColor: Colors.blue.shade600,
            bold: true,
          ),
          for (final source in sortedSources)
            _chip(
              source: source,
              label: _displayLabel(source),
              isSelected: activeFilters.contains(source),
              selectedColor: getSourceColor(source),
            ),
        ],
      ),
    );
  }
}