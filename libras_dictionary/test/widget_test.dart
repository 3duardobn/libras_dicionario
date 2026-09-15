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
import 'package:flutter_test/flutter_test.dart';
import 'package:libras_dictionary/database.dart';
import 'package:libras_dictionary/main.dart';
import 'package:libras_dictionary/state.dart' as st;
import 'package:libras_dictionary/strings.dart' as s;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

Future<Database> _createTestDatabase() async {
  final db = await databaseFactoryFfi.openDatabase(
    inMemoryDatabasePath,
    options: OpenDatabaseOptions(
      version: 1,
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
          'title': 'casa',
          'source': 'INES',
          'video_url': 'https://ex.com/casa_ines.mp4',
          'description': 'Moradia, habitação.',
          'exemplo': 'Minha casa é grande.',
          'libras': 'C@SA',
        });
        await db.insert('signs', {
          'norm_word': 'casa',
          'title': 'casa',
          'source': 'RedeSurdos',
          'video_url': 'https://ex.com/casa_rs.mp4',
          'description': 'Sinal de casa.',
        });
        await db.insert('signs', {
          'norm_word': 'casaco',
          'title': 'casaco',
          'source': 'INES',
          'video_url': 'https://ex.com/casaco.mp4',
        });

        await db.execute("INSERT INTO signs_fts(signs_fts) VALUES('rebuild')");
      },
    ),
  );
  return db;
}

Future<void> _pumpHome(WidgetTester tester) async {
  SharedPreferences.setMockInitialValues({});
  await st.appState.loadSettings();
  await tester.pumpWidget(const LibrasDictionaryApp(showSplash: false));
  await tester.pump();
}

Future<void> _search(WidgetTester tester, String query) async {
  await tester.enterText(find.byType(TextField), query);
  await tester.pump();
  await tester.runAsync(() async {
    await st.appState.performSearch(query);
  });
  await tester.pump();
}

void main() {
  setUpAll(() {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });

  late Database testDb;

  setUp(() async {
    testDb = await _createTestDatabase();
    LibrasDatabase.instance.setDatabaseForTest(testDb);
    LibrasDatabase.instance.isEnabled = true;
    LibrasDatabase.instance.setCachedWordsForTest(['casa', 'casaco']);
    st.appState.resetForTest();
  });

  tearDown(() async {
    LibrasDatabase.instance.setDatabaseForTest(null);
    await testDb.close();
  });

  testWidgets('app renders the home page', (tester) async {
    await _pumpHome(tester);

    expect(find.text(s.appTitle), findsOneWidget);
    expect(find.text(s.searchLabel), findsOneWidget);
    expect(find.text(s.searchButton), findsOneWidget);
    expect(find.text(s.filterAll), findsOneWidget);
  });

  testWidgets('search shows results from enabled sources', (tester) async {
    await _pumpHome(tester);
    await _search(tester, 'casa');

    expect(find.text('casa (INES)'), findsOneWidget);
    expect(find.text('casa (RedeSurdos)'), findsOneWidget);
    // Exact word matching must not match "casaco".
    expect(find.text('casaco (INES)'), findsNothing);
  });

  testWidgets('filter chips narrow results to the selected source',
      (tester) async {
    await _pumpHome(tester);
    await _search(tester, 'casa');

    await tester.tap(find.text('Rede Surdos'));
    await tester.pumpAndSettle();

    expect(find.text('casa (RedeSurdos)'), findsOneWidget);
    expect(find.text('casa (INES)'), findsNothing);

    // Back to all sources.
    await tester.tap(find.text(s.filterAll));
    await tester.pumpAndSettle();

    expect(find.text('casa (INES)'), findsOneWidget);
    expect(find.text('casa (RedeSurdos)'), findsOneWidget);
  });

  testWidgets('favorites can be added and are listed', (tester) async {
    await _pumpHome(tester);
    await _search(tester, 'casa');

    await tester.tap(find.byTooltip(s.favoriteAdd).first);
    await tester.pump();

    await tester.tap(find.byTooltip(s.favoritesTitle));
    await tester.pumpAndSettle();

    expect(find.text('casa (INES)'), findsOneWidget);
  });

  testWidgets('failed sources show a warning banner when database fails',
      (tester) async {
    // Delete the table so rawQuery throws SqfliteDatabaseException
    await tester.runAsync(() async {
      await testDb.execute('DROP TABLE signs');
    });

    await _pumpHome(tester);
    await _search(tester, 'casa');

    expect(
      find.textContaining(s.sourcesUnavailable('')),
      findsOneWidget,
    );
  });

  testWidgets('disambiguation badges and preview display for multiple entries',
      (tester) async {
    await tester.runAsync(() async {
      await testDb.insert('signs', {
        'norm_word': 'bola',
        'title': 'bola',
        'source': 'INES',
        'video_url': 'https://ex.com/bola1.mp4',
        'description': 'Bola de futebol.',
      });
      await testDb.insert('signs', {
        'norm_word': 'bola',
        'title': 'bola',
        'source': 'INES',
        'video_url': 'https://ex.com/bola2.mp4',
        'description': 'Bola de gude.',
      });
    });

    await _pumpHome(tester);
    await _search(tester, 'bola');

    expect(find.text(s.variationBadge(1, 2)), findsOneWidget);
    expect(find.text(s.variationBadge(2, 2)), findsOneWidget);
    expect(find.text('Bola de futebol.'), findsOneWidget);
    expect(find.text('Bola de gude.'), findsOneWidget);
  });

  testWidgets('clearing search with clear button resets results and shows history',
      (tester) async {
    await _pumpHome(tester);
    await _search(tester, 'casa');

    expect(find.text('casa (INES)'), findsOneWidget);

    // Tap clear button
    await tester.tap(find.byIcon(Icons.clear));
    await tester.pumpAndSettle();

    // Results are cleared
    expect(find.text('casa (INES)'), findsNothing);
    // Recent searches are shown
    expect(find.text(s.recentSearches), findsOneWidget);
    expect(find.widgetWithText(InputChip, 'casa'), findsOneWidget);

    // Delete recent search
    await tester.tap(find.byIcon(Icons.close));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(InputChip, 'casa'), findsNothing);
  });
}
