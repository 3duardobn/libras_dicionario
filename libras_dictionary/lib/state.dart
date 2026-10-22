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

import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart'
    show kIsWeb, visibleForTesting;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import 'api.dart' as api;
import 'database.dart';
import 'models.dart';
import 'platform/share_stub.dart'
    if (dart.library.js_interop) 'platform/share_web.dart'
    if (dart.library.io) 'platform/share_mobile.dart';
import 'strings.dart' as s;
import 'theme.dart';

const mobileSources = {
  'INES',
  'UFV',
  'RedeSurdos',
  'LibrasAcademicaUFF',
  'SpreadTheSign',
  'FESAI',
  'Economia',
  'PIBIC',
  'CCB',
};
const webSources = {
  'INES',
  'RedeSurdos',
  'LibrasAcademicaUFF',
  'FESAI',
  'Economia',
  'PIBIC',
  'CCB',
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
  AppThemeMode _themeMode = AppThemeMode.light;
  String _searchQuery = '';
  String? _lastSearched;
  int _searchToken = 0;
  bool _isSearching = false;
  List<DictItem> _searchResults = [];
  List<String> _failedSources = [];
  String? _errorMessage;
  List<String> _recentSearches = [];
  List<Folder> _folders = [];
  Set<String> _enabledSources = allSources;
  Set<String> _activeFilters = {'Ambos'};
  bool _isShareMinimal = false;
  bool _showYoutubeButton = true;

  AppThemeMode get appThemeMode => _themeMode;
  bool get isDark => _themeMode == AppThemeMode.dark;
  bool get isHighContrast => _themeMode == AppThemeMode.highContrast;
  String get searchQuery => _searchQuery;
  String? get lastSearched => _lastSearched;
  bool get isSearching => _isSearching;
  List<DictItem> get searchResults => _searchResults;
  List<String> get failedSources => _failedSources;
  String? get errorMessage => _errorMessage;
  List<String> get recentSearches => _recentSearches;
  List<Folder> get folders => _folders;
  Set<String> get enabledSources => _enabledSources;
  Set<String> get activeFilters => _activeFilters;
  bool get isShareMinimal => _isShareMinimal;
  bool get showYoutubeButton => _showYoutubeButton;

  set searchQuery(String value) {
    if (value == _searchQuery) return;
    _searchQuery = value;
    notifyListeners();
  }

  void clearSearch() {
    _searchQuery = '';
    _lastSearched = null;
    _searchResults = [];
    _failedSources = [];
    _errorMessage = null;
    notifyListeners();
  }

  // --- Folders ---

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

  String _folderToJson(Folder folder) => json.encode({
        'id': folder.id,
        'name': folder.name,
        'color': folder.colorValue,
        'items': folder.items.map(_itemToJson).toList(),
      });

  Folder? _jsonToFolder(String encoded) {
    try {
      final data = json.decode(encoded) as Map<String, dynamic>;
      final rawItems = (data['items'] as List? ?? [])
          .map((e) => _jsonToItem(e as String))
          .whereType<DictItem>()
          .toList();
      return Folder(
        id: data['id'] as String,
        name: data['name'] as String,
        colorValue: (data['color'] as num?)?.toInt() ?? 0xFFE57373,
        items: rawItems,
      );
    } catch (e) {
      api.log(['Could not decode folder:', e]);
      return null;
    }
  }

  Folder? folderById(String id) {
    for (final folder in _folders) {
      if (folder.id == id) return folder;
    }
    return null;
  }

  /// Pastas que contêm este sinal.
  List<Folder> foldersContaining(DictItem item) {
    final key = favoriteKey(item);
    return _folders
        .where((f) => f.items.any((i) => favoriteKey(i) == key))
        .toList();
  }

  bool isSaved(DictItem item) => foldersContaining(item).isNotEmpty;

  Future<String> createFolder(String name, int colorValue) async {
    final id = DateTime.now().microsecondsSinceEpoch.toString();
    final folder = Folder(id: id, name: name, colorValue: colorValue);
    _folders = [..._folders, folder];
    notifyListeners();
    await _persistFolders();
    return id;
  }

  void renameFolder(String id, String name) {
    _folders = [
      for (final folder in _folders)
        if (folder.id == id) Folder(
              id: folder.id,
              name: name,
              colorValue: folder.colorValue,
              items: folder.items,
            )
        else
          folder,
    ];
    notifyListeners();
    unawaited(_persistFolders());
  }

  void setFolderColor(String id, int colorValue) {
    _folders = [
      for (final folder in _folders)
        if (folder.id == id) Folder(
              id: folder.id,
              name: folder.name,
              colorValue: colorValue,
              items: folder.items,
            )
        else
          folder,
    ];
    notifyListeners();
    unawaited(_persistFolders());
  }

  void deleteFolder(String id) {
    _folders = _folders.where((f) => f.id != id).toList();
    notifyListeners();
    unawaited(_persistFolders());
  }

  /// Salva um sinal na pasta. Se já existe lá, é ignorado.
  Future<void> addToFolder(String id, DictItem item) async {
    final key = favoriteKey(item);
    _folders = [
      for (final folder in _folders)
        if (folder.id == id && !folder.items.any((i) => favoriteKey(i) == key))
          Folder(
            id: folder.id,
            name: folder.name,
            colorValue: folder.colorValue,
            items: [...folder.items, item],
          )
        else
          folder,
    ];
    notifyListeners();
    await _persistFolders();
  }

  /// Remove o sinal de todas as pastas onde ele aparece.
  Future<void> removeFromAllFolders(DictItem item) async {
    final key = favoriteKey(item);
    _folders = [
      for (final folder in _folders)
        if (folder.items.any((i) => favoriteKey(i) == key))
          Folder(
            id: folder.id,
            name: folder.name,
            colorValue: folder.colorValue,
            items: folder.items
                .where((i) => favoriteKey(i) != key)
                .toList(),
          )
        else
          folder,
    ];
    notifyListeners();
    await _persistFolders();
  }

  Future<void> _persistFolders() async {
    final p = await SharedPreferences.getInstance();
    await p.setStringList('folders', _folders.map(_folderToJson).toList());
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

  void removeRecentSearch(String query) {
    final updated = _recentSearches.where((q) => q != query).toList();
    _recentSearches = updated;
    notifyListeners();
    unawaited(_persistRecents(updated));
  }

  void clearRecentSearches() {
    _recentSearches = [];
    notifyListeners();
    unawaited(_persistRecents([]));
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
    _themeMode = AppThemeMode.light;
    _searchQuery = '';
    _lastSearched = null;
    _searchToken++;
    _isSearching = false;
    _searchResults = [];
    _failedSources = [];
    _errorMessage = null;
    _recentSearches = [];
    _folders = [];
    _enabledSources = allSources;
    _activeFilters = {'Ambos'};
    _isShareMinimal = false;
    _showYoutubeButton = true;
    notifyListeners();
  }

  Future<void> loadSettings() async {    final p = await SharedPreferences.getInstance();
    final themeName = p.getString('theme_mode');
    final isDark = p.getBool('isDark') ?? false;
    final enabledSources = p.getStringList('enabled_sources');
    final shareMin = p.getBool('is_share_minimal') ?? false;
    final showYt = p.getBool('show_youtube_button');
    final recents = p.getStringList('recent_searches') ?? [];
    final storedFolders = p.getStringList('folders') ?? [];

    _themeMode = AppThemeMode.values
            .firstWhere((m) => m.name == themeName,
                orElse: () => isDark
                    ? AppThemeMode.dark
                    : AppThemeMode.light);
    // Drop sources that don't exist on this platform (e.g. prefs saved
    // on mobile then hit from a web browser).
    final storedSources = enabledSources?.toSet().intersection(allSources) ?? {};
    _enabledSources = storedSources.isNotEmpty ? storedSources : allSources;
    _isShareMinimal = shareMin;
    _showYoutubeButton = showYt ?? true;
    _recentSearches = recents;
    _folders = storedFolders.map(_jsonToFolder).whereType<Folder>().toList();
    // Migra favoritos antigos (chave 'favorites') para uma pasta padrão.
    if (_folders.isEmpty) {
      final legacyFavorites = p.getStringList('favorites') ?? [];
      final legacyItems =
          legacyFavorites.map(_jsonToItem).whereType<DictItem>().toList();
      if (legacyItems.isNotEmpty) {
        _folders = [
          Folder(
            id: 'legacy-favorites',
            name: s.favoritesDefaultFolder,
            colorValue: 0xFFE57373,
            items: legacyItems,
          ),
        ];
        await p.remove('favorites');
        await _persistFolders();
      }
    }
    _activeFilters = {'Ambos'};
    notifyListeners();
  }

  void toggleTheme() {
    final next = switch (_themeMode) {
      AppThemeMode.light => AppThemeMode.dark,
      AppThemeMode.dark => AppThemeMode.highContrast,
      AppThemeMode.highContrast => AppThemeMode.light,
    };
    setAppTheme(next);
  }

  void setAppTheme(AppThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
    unawaited(() async {
      final p = await SharedPreferences.getInstance();
      await p.setString('theme_mode', mode.name);
      await p.setBool('isDark', mode == AppThemeMode.dark);
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

  /// Inicializa o banco de dados offline e aquece a lista de palavras para sugestões
  Future<void> preloadDatabase() async {
    try {
      await LibrasDatabase.instance.database;
      api.log(['Banco offline SQLite carregado com sucesso']);
    } catch (e) {
      api.log(['Erro ao carregar banco offline:', e]);
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

/// Autocomplete suggestions from the offline database word list: prefix matches
/// first, then substring matches, capped at `limit`.
List<String> suggestionsFor(String query, int limit) {
  if (query.length < 2) return [];
  final nq = api.normalize(query);
  final words = LibrasDatabase.instance.allWords;
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