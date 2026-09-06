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
import 'package:libras_dictionary/database.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  setUpAll(() {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });

  setUp(() {
    LibrasDatabase.instance.isEnabled = true;
  });

  group('LibrasDatabase tests', () {
    test('search finds exact match on offline test DB', () async {
      final db = await openDatabase(inMemoryDatabasePath, version: 1,
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
          'norm_word': 'agua',
          'title': 'Água',
          'source': 'INES',
          'video_url': 'https://ex.com/agua.mp4',
        });
        await db.execute("INSERT INTO signs_fts(signs_fts) VALUES('rebuild')");
      });

      LibrasDatabase.instance.setDatabaseForTest(db);
      addTearDown(() async {
        LibrasDatabase.instance.setDatabaseForTest(null);
        await db.close();
      });

      final items = await LibrasDatabase.instance.search('água');
      expect(items.length, 1);
      expect(items.first.title, 'Água');
      expect(items.first.videoUrl, 'https://ex.com/agua.mp4');
      expect(items.first.source, 'INES');
    });

    test('getSuggestions returns prefix matches', () async {
      final db = await openDatabase('suggestions_test.db', version: 1,
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
        await db.insert('signs', {'norm_word': 'comer', 'title': 'Comer', 'source': 'INES'});
        await db.insert('signs', {'norm_word': 'comida', 'title': 'Comida', 'source': 'INES'});
        await db.insert('signs', {'norm_word': 'casa', 'title': 'Casa', 'source': 'INES'});
      });

      LibrasDatabase.instance.setDatabaseForTest(db);
      addTearDown(() async {
        LibrasDatabase.instance.setDatabaseForTest(null);
        await db.close();
      });

      final suggestions = await LibrasDatabase.instance.getSuggestions('com');
      expect(suggestions, containsAll(['Comer', 'Comida']));
      expect(suggestions, isNot(contains('Casa')));
    });
  });
}
