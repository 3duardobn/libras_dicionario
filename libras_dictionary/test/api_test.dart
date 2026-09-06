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

import 'package:flutter_test/flutter_test.dart';
import 'package:libras_dictionary/api.dart' as api;
import 'package:libras_dictionary/database.dart';
import 'package:libras_dictionary/models.dart';
import 'package:libras_dictionary/state.dart' as st;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  setUpAll(() {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });

  group('normalize', () {
    test('lowercases and strips diacritics', () {
      expect(api.normalize('Ação'), 'acao');
      expect(api.normalize('VÍDEO'), 'video');
      expect(api.normalize('já'), 'ja');
    });

    test('normalizes @ to o for gender neutrality', () {
      expect(api.normalize('amig@'), 'amigo');
      expect(api.normalize('alun@'), 'aluno');
    });
  });

  group('wordBoundRegex', () {
    test('matches the whole word', () {
      final r = api.wordBoundRegex('casa');
      expect(r.hasMatch('casa'), isTrue);
      expect(r.hasMatch('minha casa nova'), isTrue);
    });

    test('does not match inside another word', () {
      final r = api.wordBoundRegex('casa');
      expect(r.hasMatch('casarao'), isFalse);
      expect(r.hasMatch('carcasa'), isFalse);
    });

    test('matches numbered variants (diferente1, diferente2)', () {
      final r = api.wordBoundRegex('diferente');
      expect(r.hasMatch('diferente1'), isTrue);
      expect(r.hasMatch('diferente2'), isTrue);
      expect(r.hasMatch('diferente12'), isTrue);
      expect(r.hasMatch('diferentemente'), isFalse);
    });

    test('query is normalized', () {
      expect(api.wordBoundRegex('Ação').hasMatch('acao urgente'), isTrue);
    });
  });

  group('youtubeSearchUrl', () {
    test('builds the query URL', () {
      final url = api.youtubeSearchUrl('bom dia');
      expect(url, startsWith('https://www.youtube.com/results?search_query='));
      expect(url, contains('em+libras'));
      expect(url, contains('bom+dia'));
    });
  });

  group('suggestionsFor', () {
    setUp(() {
      LibrasDatabase.instance.setCachedWordsForTest([
        'CASA',
        'CASACO',
        'MACACO',
        'BOLA',
      ]);
    });
    tearDown(() => LibrasDatabase.instance.setCachedWordsForTest([]));

    test('prefix matches come before substring matches', () {
      expect(st.suggestionsFor('cas', 6), ['CASA', 'CASACO']);
    });

    test('substring matches included', () {
      expect(st.suggestionsFor('aca', 6), ['MACACO']);
    });

    test('short queries yield nothing', () {
      expect(st.suggestionsFor('c', 6), isEmpty);
    });

    test('limit respected', () {
      expect(st.suggestionsFor('cas', 1).length, 1);
    });
  });

  group('onFilterChanged', () {
    test('selecting a specific source removes Ambos', () {
      st.appState.onFilterChanged('Ambos', true);
      expect(st.appState.activeFilters, equals({'Ambos'}));

      st.appState.onFilterChanged('INES', true);
      expect(st.appState.activeFilters, equals({'INES'}));
    });

    test('selecting all sources resets to Ambos', () {
      st.appState.onFilterChanged('Ambos', true);
      for (final src in st.allSources) {
        st.appState.onFilterChanged(src, true);
      }
      expect(st.appState.activeFilters, equals({'Ambos'}));
    });

    test('deselecting last source resets to Ambos', () {
      st.appState.onFilterChanged('INES', true);
      st.appState.onFilterChanged('INES', false);
      expect(st.appState.activeFilters, equals({'Ambos'}));
    });

    test('isSourceActive checks if source is active under filter', () {
      st.appState.onFilterChanged('Ambos', true);
      expect(st.appState.isSourceActive('INES'), isTrue);
      expect(st.appState.isSourceActive('UFV'), isTrue);

      st.appState.onFilterChanged('RedeSurdos', true);
      expect(st.appState.isSourceActive('INES'), isFalse);
      expect(st.appState.isSourceActive('RedeSurdos'), isTrue);
    });
  });

  group('rankResults', () {
    test('exact title first, then prefix, then rest', () {
      DictItem mk(String title) => DictItem(title: title, source: 'INES');
      final results = [mk('Casamento'), mk('Zebra casa'), mk('Casa')];
      final ranked = st.rankResults(results, 'casa');
      expect(ranked.map((e) => e.title).toList(), ['Casa', 'Casamento', 'Zebra casa']);
    });
  });

  group('offline searchAll', () {
    test('searchAll queries local database and returns items', () async {
      final db = await openDatabase('search_all_test.db', version: 1,
          onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE signs (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            norm_word TEXT NOT NULL,
            title TEXT NOT NULL,
            source TEXT NOT NULL,
            description TEXT,
            exemplo TEXT,
            libras TEXT,
            video_url TEXT,
            image_url TEXT,
            youtube_id TEXT,
            link TEXT
          )
        ''');
        await db.execute('''
          CREATE VIRTUAL TABLE signs_fts USING fts5(
            norm_word,
            title,
            content='signs',
            content_rowid='id'
          )
        ''');
        await db.insert('signs', {
          'norm_word': 'casa',
          'title': 'Casa',
          'source': 'INES',
          'video_url': 'https://ex.com/casa.mp4',
        });
        await db.insert('signs', {
          'norm_word': 'casa',
          'title': 'Casa',
          'source': 'RedeSurdos',
          'youtube_id': 'abc123YT',
        });
        await db.execute("INSERT INTO signs_fts(signs_fts) VALUES('rebuild')");
      });

      LibrasDatabase.instance.setDatabaseForTest(db);
      addTearDown(() async {
        LibrasDatabase.instance.setDatabaseForTest(null);
        await db.close();
      });

      final result = await api.searchAll('casa');
      expect(result.items.length, 2);
      expect(result.failed, isEmpty);
      expect(result.items.map((i) => i.source).toSet(), {'INES', 'RedeSurdos'});
    });
  });
}
