import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart'
    show kIsWeb, visibleForTesting;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import 'api.dart' as api;
import 'models.dart';
import 'platform/share_stub.dart'
    if (dart.library.js_interop) 'platform/share_web.dart'
    if (dart.library.io) 'platform/share_mobile.dart';
import 'strings.dart' as s;

const mobileSources = {
  'INES',
  'UFV',
  'RedeSurdos',
  'LibrasAcademicaUFF',
  'SpreadTheSign',
};
const webSources = {
  'INES',
  'RedeSurdos',
  'LibrasAcademicaUFF',
};

/// Sources available on the current platform. Browsers cannot reach
/// UFV or SpreadTheSign (no CORS headers), so web builds hide them.
final Set<String> allSources = kIsWeb ? webSources : mobileSources;

final GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

const maxRecentSearches = 10;

/// Global app state. Widgets rebuild via `ListenableBuilder`.
final AppState appState = AppState();

typedef FavoriteKey = ({String? title, String? link, String? source});

FavoriteKey favoriteKey(DictItem item) =>
    (title: item.title, link: item.link, source: item.source);

// --- Playback Coordination ---
// Only one video plays at a time: starting any player pauses the previous one.

class _ActivePlayer {
  _ActivePlayer(this.id, this.pause);

  final Object id;
  final VoidCallback pause;
}

_ActivePlayer? _activePlayer;

void claimPlayback(Object id, VoidCallback pause) {
  final prev = _activePlayer;
  if (prev != null && !identical(prev.id, id)) {
    try {
      prev.pause();
    } catch (e) {
      api.log(['Error pausing previous player:', e]);
    }
  }
  _activePlayer = _ActivePlayer(id, pause);
}

void releasePlayback(Object id) {
  final prev = _activePlayer;
  if (prev != null && identical(prev.id, id)) {
    _activePlayer = null;
  }
}

class AppState extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  String _searchQuery = '';
  String? _lastSearched;
  int _searchToken = 0;
  bool _isSearching = false;
  List<DictItem> _searchResults = [];
  List<String> _failedSources = [];
  String? _errorMessage;
  List<String> _recentSearches = [];
  List<DictItem> _favorites = [];
  Set<String> _enabledSources = allSources;
  Set<String> _activeFilters = {'Ambos'};
  bool _isShareMinimal = false;
  bool _showYoutubeButton = true;

  ThemeMode get themeMode => _themeMode;
  String get searchQuery => _searchQuery;
  String? get lastSearched => _lastSearched;
  bool get isSearching => _isSearching;
  List<DictItem> get searchResults => _searchResults;
  List<String> get failedSources => _failedSources;
  String? get errorMessage => _errorMessage;
  List<String> get recentSearches => _recentSearches;
  List<DictItem> get favorites => _favorites;
  Set<String> get enabledSources => _enabledSources;
  Set<String> get activeFilters => _activeFilters;
  bool get isShareMinimal => _isShareMinimal;
  bool get showYoutubeButton => _showYoutubeButton;

  set searchQuery(String value) {
    if (value == _searchQuery) return;
    _searchQuery = value;
    notifyListeners();
  }

  // --- Favorites ---

  String _itemToJson(DictItem item) => json.encode({
        'title': item.title,
        'description': item.description,
        'exemplo': item.exemplo,
        'libras': item.libras,
        'video_url': item.videoUrl,
        'image_url': item.imageUrl,
        'youtube_id': item.youtubeId,
        'link': item.link,
        'source': item.source,
      });

  DictItem? _jsonToItem(String encoded) {
    try {
      final data = json.decode(encoded) as Map<String, dynamic>;
      return DictItem(
        title: data['title'] as String?,
        description: data['description'] as String?,
        exemplo: data['exemplo'] as String?,
        libras: data['libras'] as String?,
        videoUrl: data['video_url'] as String?,
        imageUrl: data['image_url'] as String?,
        youtubeId: data['youtube_id'] as String?,
        link: data['link'] as String?,
        source: data['source'] as String?,
      );
    } catch (e) {
      api.log(['Could not decode favorite:', e]);
      return null;
    }
  }

  bool isFavorite(DictItem item) {
    final key = favoriteKey(item);
    return _favorites.any((f) => favoriteKey(f) == key);
  }

  void toggleFavorite(DictItem item) {
    final key = favoriteKey(item);
    final updated = isFavorite(item)
        ? _favorites.where((f) => favoriteKey(f) != key).toList()
        : [..._favorites, item];
    _favorites = updated;
    notifyListeners();
    unawaited(_persistFavorites(updated));
  }

  Future<void> _persistFavorites(List<DictItem> favorites) async {
    final p = await SharedPreferences.getInstance();
    await p.setStringList('favorites', favorites.map(_itemToJson).toList());
  }

  // --- Recent searches ---

  void _rememberSearch(String query) {
    final updated = [
      query,
      ..._recentSearches.where((q) => q != query),
    ].take(maxRecentSearches).toList();
    _recentSearches = updated;
    notifyListeners();
    unawaited(_persistRecents(updated));
  }

  Future<void> _persistRecents(List<String> recents) async {
    final p = await SharedPreferences.getInstance();
    await p.setStringList('recent_searches', recents);
  }

  // --- Settings ---

  /// Restores the initial state between widget tests (the singleton
  /// survives across tests in the same process).
  @visibleForTesting
  void resetForTest() {
    _themeMode = ThemeMode.light;
    _searchQuery = '';
    _lastSearched = null;
    _searchToken++;
    _isSearching = false;
    _searchResults = [];
    _failedSources = [];
    _errorMessage = null;
    _recentSearches = [];
    _favorites = [];
    _enabledSources = allSources;
    _activeFilters = {'Ambos'};
    _isShareMinimal = false;
    _showYoutubeButton = true;
    notifyListeners();
  }

  Future<void> loadSettings() async {    final p = await SharedPreferences.getInstance();
    final isDark = p.getBool('isDark') ?? false;
    final enabledSources = p.getStringList('enabled_sources');
    final shareMin = p.getBool('is_share_minimal') ?? false;
    final showYt = p.getBool('show_youtube_button');
    final recents = p.getStringList('recent_searches') ?? [];
    final favorites = p.getStringList('favorites') ?? [];

    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    // Drop sources that don't exist on this platform (e.g. prefs saved
    // on mobile then hit from a web browser).
    final storedSources = enabledSources?.toSet().intersection(allSources) ?? {};
    _enabledSources = storedSources.isNotEmpty ? storedSources : allSources;
    _isShareMinimal = shareMin;
    _showYoutubeButton = showYt ?? true;
    _recentSearches = recents;
    _favorites = favorites.map(_jsonToItem).whereType<DictItem>().toList();
    _activeFilters = {'Ambos'};
    notifyListeners();
  }

  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
    unawaited(() async {
      final p = await SharedPreferences.getInstance();
      await p.setBool('isDark', _themeMode == ThemeMode.dark);
    }());
  }

  void setShareMinimal(bool value) {
    _isShareMinimal = value;
    notifyListeners();
    unawaited(() async {
      final p = await SharedPreferences.getInstance();
      await p.setBool('is_share_minimal', value);
    }());
  }

  void setShowYoutubeButton(bool value) {
    _showYoutubeButton = value;
    notifyListeners();
    unawaited(() async {
      final p = await SharedPreferences.getInstance();
      await p.setBool('show_youtube_button', value);
    }());
  }

  void setSourceEnabled(String source, bool value) {
    if (value) {
      _enabledSources.add(source);
    } else {
      _enabledSources.remove(source);
    }
    notifyListeners();
    unawaited(() async {
      final p = await SharedPreferences.getInstance();
      await p.setStringList('enabled_sources', _enabledSources.toList());
    }());
  }

  // --- Search ---

  Future<void> performSearch(String query) async {
    if (query.trim().isEmpty) return;
    final token = ++_searchToken;
    _isSearching = true;
    _searchResults = [];
    _failedSources = [];
    _errorMessage = null;
    _lastSearched = query;
    _rememberSearch(query);
    notifyListeners();
    try {
      api.log(['=== START DICTIONARY SEARCH ===', query]);
      final result = await api.searchAll(query, sources: _enabledSources.toList());
      // Drop stale responses: only the latest search may write results.
      if (token != _searchToken) return;
      api.log([
        '=== DICTIONARY SEARCH RESULTS ===',
        result.items.length,
        'failed:',
        result.failed,
      ]);
      _searchResults = result.items;
      _failedSources = result.failed;
      _isSearching = false;
      notifyListeners();
    } catch (e) {
      api.log(['Error performing search:', e]);
      if (token != _searchToken) return;
      _isSearching = false;
      _errorMessage = s.searchError;
      notifyListeners();
    }
  }

  /// Warms the INES word list (autocomplete + offline cache). Failures
  /// are logged, never surfaced — the list loads again on first search.
  Future<void> preloadInes() async {
    try {
      await api.loadInesData();
      api.log(['INES preload OK:', api.inesWords().length, 'words']);
    } catch (e) {
      api.log(['INES preload failed:', e]);
    }
  }

  // --- Filters ---

  bool isSourceActive(String source) {
    if (!_enabledSources.contains(source)) return false;
    if (_activeFilters.contains('Ambos')) return true;
    return _activeFilters.contains(source);
  }

  void onFilterChanged(String filterName, bool selected) {
    if (filterName == 'Ambos') {
      _activeFilters = {'Ambos'};
    } else {
      final current = Set<String>.from(_activeFilters);
      current.remove('Ambos');
      if (selected) {
        current.add(filterName);
      } else {
        current.remove(filterName);
      }
      if (current.isEmpty ||
          _enabledSources.every((source) => current.contains(source))) {
        _activeFilters = {'Ambos'};
      } else {
        _activeFilters = current;
      }
    }
    notifyListeners();
  }

  // --- Share / external links ---

  Future<void> share(String text, String subject) =>
      shareText(text, subject);

  void shareItem(DictItem item) {
    final text = _isShareMinimal
        ? s.shareTextMinimal(item.title, item.link)
        : s.shareTextFull(item.title, item.link);
    unawaited(share(text, s.shareSubject(item.title)));
  }

  Future<void> launchUrlString(String urlStr) async {
    final uri = Uri.parse(urlStr);
    try {
      final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
      if (!ok) api.log(['Failed to launch URL:', urlStr]);
    } catch (e) {
      api.log(['Failed to launch URL:', e]);
    }
  }

  /// Opens a YouTube search for the query in the YouTube app/browser.
  /// In-app YouTube search was removed for YouTube ToS compliance.
  void openYoutubeSearch(String query) {
    if (query.trim().isEmpty) return;
    unawaited(launchUrlString(api.youtubeSearchUrl(query)));
  }
}

// --- Autocomplete ---

/// Autocomplete suggestions from the INES word list: prefix matches
/// first, then substring matches, capped at `limit`.
List<String> suggestionsFor(String query, int limit) {
  if (query.length < 2) return [];
  final nq = api.normalize(query);
  final words = api.inesWords();
  final scored = <(int, String)>[];
  for (final word in words) {
    final nw = api.normalize(word);
    if (nw == nq) continue; // already typed exactly
    if (nw.startsWith(nq)) {
      scored.add((0, word));
    } else if (nw.contains(nq)) {
      scored.add((1, word));
    }
  }
  scored.sort((a, b) {
    final byBand = a.$1.compareTo(b.$1);
    return byBand != 0 ? byBand : a.$2.compareTo(b.$2);
  });
  final seen = <String>{};
  final result = <String>[];
  for (final (_, word) in scored) {
    if (seen.add(word)) result.add(word);
    if (result.length >= limit) break;
  }
  return result;
}

// --- Ranking ---

/// Exact title matches first, then title-prefix matches, then the rest;
/// alphabetical within each band.
List<DictItem> rankResults(List<DictItem> results, String query) {
  final nq = api.normalize(query);
  final sorted = [...results];
  sorted.sort((a, b) {
    final na = api.normalize(a.title ?? '');
    final nb = api.normalize(b.title ?? '');
    final bandA = _rankBand(na, nq);
    final bandB = _rankBand(nb, nq);
    if (bandA != bandB) return bandA.compareTo(bandB);
    return na.compareTo(nb);
  });
  return sorted;
}

int _rankBand(String title, String normalizedQuery) {
  if (title == normalizedQuery) return 0;
  if (title.startsWith(normalizedQuery)) return 1;
  return 2;
}