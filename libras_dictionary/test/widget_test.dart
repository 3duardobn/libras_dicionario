import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:libras_dictionary/api.dart' as api;
import 'package:libras_dictionary/main.dart';
import 'package:libras_dictionary/state.dart' as st;
import 'package:libras_dictionary/strings.dart' as s;
import 'package:shared_preferences/shared_preferences.dart';

http.Client? _originalClient;

/// Canned responses for every source the app queries.
Future<http.Response> _respond(http.Request request) async {
  final url = request.url.toString();
  if (url.startsWith('${api.inesBaseUrl}/public/site/js/palavras.js')) {
    final data = json.encode([
      {
        'palavra': 'casa',
        'video': 'casa.mp4',
        'image': '',
        'descricao': 'Moradia, habitação.',
        'exemplo': 'Minha casa é grande.',
        'libras': 'C@SA',
      },
      {'palavra': 'casaco', 'video': '', 'image': ''},
    ]);
    return http.Response(data, 200, headers: {
      'content-type': 'application/json; charset=utf-8',
    });
  }
  if (url.startsWith(api.redesurdosSearchUrl)) {
    return http.Response(
      json.encode([
        {
          'title': {'rendered': 'casa'},
          'content': {'rendered': '<p>Sinal de casa.</p>'},
          'excerpt': {'rendered': '<p>Sinal de casa.</p>'},
          'link': 'https://redesurdosce.ufc.br/casa',
        }
      ]),
      200,
      headers: {'content-type': 'application/json; charset=utf-8'},
    );
  }
  if (url.startsWith(api.uffSearchUrl)) {
    return http.Response('[]', 200,
        headers: {'content-type': 'application/json; charset=utf-8'});
  }
  // UFV search page / detail and SpreadTheSign: no matches.
  return http.Response('<html></html>', 200);
}

Future<void> _pumpHome(WidgetTester tester) async {
  SharedPreferences.setMockInitialValues({});
  await st.appState.loadSettings();
  await tester.pumpWidget(const LibrasDictionaryApp(showSplash: false));
  await tester.pump();
}

Future<void> _search(WidgetTester tester, String query) async {
  await tester.enterText(find.byType(TextField), query);
  await tester.tap(find.widgetWithText(ElevatedButton, s.searchButton));
  await tester.pumpAndSettle();
}

void main() {
  setUp(() {
    _originalClient = api.httpClient;
    api.httpClient = MockClient(_respond);
    api.setInesCacheForTest(null);
    st.appState.resetForTest();
  });

  tearDown(() {
    api.httpClient = _originalClient!;
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
    // \bcasa\b must not match "casaco".
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

  testWidgets('failed sources show a warning banner', (tester) async {
    api.httpClient = MockClient((request) async {
      if (request.url.toString().startsWith(api.redesurdosSearchUrl)) {
        return http.Response('server error', 500);
      }
      return _respond(request);
    });

    await _pumpHome(tester);
    await _search(tester, 'casa');

    expect(
      find.textContaining(s.sourcesUnavailable('')),
      findsOneWidget,
    );
    // The failed source contributes no cards; the others still do.
    expect(find.text('casa (RedeSurdos)'), findsNothing);
    expect(find.text('casa (INES)'), findsOneWidget);
  });
}
