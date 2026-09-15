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

import 'dart:async' show unawaited;
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb, visibleForTesting;
import 'package:flutter/services.dart' show rootBundle;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'api.dart' show normalize;
import 'models.dart';

class LibrasDatabase {
  LibrasDatabase._();
  static final LibrasDatabase instance = LibrasDatabase._();

  Database? _db;
  bool isEnabled = true;

  @visibleForTesting
  void setDatabaseForTest(Database? db) {
    _db = db;
  }

  Future<Database?> get database async {
    if (_db != null) return _db!;
    if (!isEnabled || kIsWeb) return null;
    _db = await _initDatabase();
    return _db;
  }

  Future<Database> _initDatabase() async {
    final docsDir = await getApplicationDocumentsDirectory();
    final dbPath = p.join(docsDir.path, 'libras.db');
    const dbVersion = 3;

    // Se o banco ainda não foi copiado do asset para a pasta local ou precisa de atualização
    final file = File(dbPath);
    bool shouldCopy = !await file.exists();

    if (!shouldCopy) {
      try {
        final existingDb = await openDatabase(dbPath, readOnly: true);
        final v = await existingDb.getVersion();
        await existingDb.close();
        if (v < dbVersion) {
          shouldCopy = true;
        }
      } catch (_) {
        shouldCopy = true;
      }
    }

    if (shouldCopy) {
      final byteData = await rootBundle.load('assets/libras.db');
      final bytes = byteData.buffer.asUint8List(
        byteData.offsetInBytes,
        byteData.lengthInBytes,
      );
      await file.writeAsBytes(bytes, flush: true);
    }

    final db = await openDatabase(
      dbPath,
      readOnly: true,
    );
    unawaited(_loadWords(db));
    return db;
  }

  List<String> _cachedWords = [];

  List<String> get allWords => _cachedWords;

  @visibleForTesting
  void setCachedWordsForTest(List<String> words) {
    _cachedWords = words;
  }

  Future<void> _loadWords(Database db) async {
    try {
      final rows = await db.rawQuery('SELECT DISTINCT title FROM signs ORDER BY title ASC');
      _cachedWords = rows
          .map((r) => r['title'] as String?)
          .where((w) => w != null && w.isNotEmpty)
          .cast<String>()
          .toList();
    } catch (_) {}
  }

  /// Busca sinais diretamente no SQLite local usando correspondência exata, prefixo e FTS5.
  Future<List<DictItem>> search(String query, {List<String>? sources}) async {
    final db = await database;
    if (db == null) return [];

    final norm = normalize(query);
    if (norm.isEmpty) return [];

    final sourceFilter = sources != null && sources.isNotEmpty
        ? 'AND source IN (${sources.map((s) => "'$s'").join(', ')})'
        : '';

    // 1. Busca exata na tabela signs
    final exactRows = await db.rawQuery('''
      SELECT DISTINCT title, source, description, exemplo, libras, video_url, image_url, youtube_id, link
      FROM signs
      WHERE norm_word = ? $sourceFilter
      ORDER BY title ASC
      LIMIT 100
    ''', [norm]);

    if (exactRows.isNotEmpty) {
      return _deduplicateItems(exactRows.map(_rowToDictItem).toList());
    }

    // 2. Busca por prefixo na tabela signs
    final prefixRows = await db.rawQuery('''
      SELECT DISTINCT title, source, description, exemplo, libras, video_url, image_url, youtube_id, link
      FROM signs
      WHERE norm_word LIKE ? $sourceFilter
      ORDER BY LENGTH(title) ASC, title ASC
      LIMIT 100
    ''', ['$norm%']);

    if (prefixRows.isNotEmpty) {
      return _deduplicateItems(prefixRows.map(_rowToDictItem).toList());
    }

    // 3. Se não encontrar exato/prefixo, usa o FTS5 (busca aproximada/tolerante)
    try {
      final ftsQuery = '$norm*';
      final ftsRows = await db.rawQuery('''
        SELECT DISTINCT s.title, s.source, s.description, s.exemplo, s.libras, s.video_url, s.image_url, s.youtube_id, s.link
        FROM signs_fts f
        JOIN signs s ON f.rowid = s.id
        WHERE signs_fts MATCH ? $sourceFilter
        LIMIT 100
      ''', [ftsQuery]);

      return _deduplicateItems(ftsRows.map(_rowToDictItem).toList());
    } catch (_) {
      return [];
    }
  }

  List<DictItem> _deduplicateItems(List<DictItem> items) {
    final seen = <String>{};
    final unique = <DictItem>[];
    for (final item in items) {
      final key =
          '${item.source}|${item.title}|${item.videoUrl}|${item.youtubeId}|${item.imageUrl}|${item.description}';
      if (seen.add(key)) {
        unique.add(item);
      }
    }
    return unique;
  }

  /// Autocomplete instantâneo: busca palavras únicas para sugestão
  Future<List<String>> getSuggestions(String prefix, {int limit = 6, List<String>? sources}) async {
    final db = await database;
    if (db == null) return [];

    final norm = normalize(prefix);
    if (norm.length < 2) return [];

    final pattern = '$norm%';
    final sourceFilter = sources != null && sources.isNotEmpty
        ? 'AND source IN (${sources.map((s) => "'$s'").join(', ')})'
        : '';

    final rows = await db.rawQuery('''
      SELECT DISTINCT title
      FROM signs
      WHERE norm_word LIKE ? $sourceFilter
      ORDER BY LENGTH(title) ASC, title ASC
      LIMIT ?
    ''', [pattern, limit]);

    return rows.map((r) => r['title'] as String).toList();
  }

  DictItem _rowToDictItem(Map<String, Object?> row) {
    return DictItem(
      title: row['title'] as String?,
      source: row['source'] as String?,
      description: row['description'] as String?,
      exemplo: row['exemplo'] as String?,
      libras: row['libras'] as String?,
      videoUrl: row['video_url'] as String?,
      imageUrl: row['image_url'] as String?,
      youtubeId: row['youtube_id'] as String?,
      link: row['link'] as String?,
    );
  }
}
