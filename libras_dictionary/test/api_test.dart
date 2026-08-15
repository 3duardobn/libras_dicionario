import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:libras_dictionary/api.dart' as api;
import 'package:libras_dictionary/models.dart';
import 'package:libras_dictionary/state.dart' as st;

void main() {
  group('normalize', () {
    test('lowercases and strips diacritics', () {
      expect(api.normalize('Ação'), 'acao');
      expect(api.normalize('VÍDEO'), 'video');
      expect(api.normalize('já'), 'ja');
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

    test('query is normalized', () {
      expect(api.wordBoundRegex('Ação').hasMatch('acao urgente'), isTrue);
    });
  });

  group('extractVideoAndYoutubeId', () {
    test('video tag wins', () {
      final r = api.extractVideoAndYoutubeId(
        '<p>x</p><video controls src="https://ex.com/sinal.mp4"></video>',
      );
      expect(r.videoUrl, 'https://ex.com/sinal.mp4');
      expect(r.youtubeId, isNull);
    });

    test('youtube embed iframe', () {
      final r = api.extractVideoAndYoutubeId(
        '<iframe src="https://www.youtube.com/embed/abc123XYZ?feature=oembed"></iframe>',
      );
      expect(r.videoUrl, isNull);
      expect(r.youtubeId, 'abc123XYZ');
    });

    test('youtube watch url', () {
      final r = api.extractVideoAndYoutubeId(
        'veja https://www.youtube.com/watch?v=qwe456 no site',
      );
      expect(r.youtubeId, 'qwe456');
    });

    test('youtu.be short url', () {
      final r = api.extractVideoAndYoutubeId(
        '<a href="https://youtu.be/short789">video</a>',
      );
      expect(r.youtubeId, 'short789');
    });

    test('bare mp4 src fallback', () {
      final r = api.extractVideoAndYoutubeId(
        '<source src="http://ex.com/media/palavra.mp4" type="video/mp4">',
      );
      expect(r.videoUrl, 'http://ex.com/media/palavra.mp4');
    });

    test('video tag has precedence over youtube', () {
      final r = api.extractVideoAndYoutubeId(
        '<video src="https://ex.com/a.mp4"></video>'
        '<iframe src="https://www.youtube.com/embed/zzz"></iframe>',
      );
      expect(r.videoUrl, 'https://ex.com/a.mp4');
      expect(r.youtubeId, isNull);
    });

    test('nothing found', () {
      final r = api.extractVideoAndYoutubeId('<p>apenas texto</p>');
      expect(r.videoUrl, isNull);
      expect(r.youtubeId, isNull);
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

  group('parseInesBody', () {
    test('extracts the JSON array from the JS wrapper', () {
      final body = 'var palavras = [{"palavra": "CASA", "video": "casa.mp4"}];';
      final data = api.parseInesBody(body);
      expect(data!.length, 1);
      expect(data.first['palavra'], 'CASA');
    });

    test('returns null for garbage', () {
      expect(api.parseInesBody('not js at all'), isNull);
    });
  });

  group('inesWords', () {
    test('extracts headwords and skips missing ones', () {
      api.setInesCacheForTest([
        {'palavra': 'CASA'},
        {'palavra': 'CACHORRO'},
        {'outro': 1},
      ]);
      expect(api.inesWords(), ['CASA', 'CACHORRO']);
      api.setInesCacheForTest(null);
      expect(api.inesWords(), isEmpty);
    });
  });

  group('suggestionsFor', () {
    setUp(() {
      api.setInesCacheForTest([
        {'palavra': 'CASA'},
        {'palavra': 'CASACO'},
        {'palavra': 'MACACO'},
        {'palavra': 'BOLA'},
      ]);
    });
    tearDown(() => api.setInesCacheForTest(null));

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

  group('rankResults', () {
    test('exact title first, then prefix, then rest', () {
      DictItem mk(String title) => DictItem(title: title, source: 'INES');
      final results = [mk('Casamento'), mk('Zebra casa'), mk('Casa')];
      final ranked = st.rankResults(results, 'casa');
      expect(ranked.map((e) => e.title).toList(), ['Casa', 'Casamento', 'Zebra casa']);
    });
  });

  group('fetchInes', () {
    test('filters and maps matching words', () async {
      api.setInesCacheForTest([
        {
          'palavra': 'CASA',
          'video': 'casa.mp4',
          'image': 'casa.jpg',
          'descricao': 'desc',
          'exemplo': 'ex',
          'libras': 'glosa',
        },
        {'palavra': 'BOLA'},
      ]);
      addTearDown(() => api.setInesCacheForTest(null));

      final items = await api.fetchInes('casa');
      expect(items.length, 1);
      expect(items.first.title, 'CASA');
      expect(
        items.first.videoUrl,
        'https://dicionario.ines.gov.br/public/media/palavras/videos/casa.mp4',
      );
      expect(
        items.first.imageUrl,
        'https://dicionario.ines.gov.br/public/media/palavras/images/casa.jpg',
      );
      expect(items.first.source, 'INES');
    });
  });

  group('fetch sources', () {
    test('fetchRedeSurdos maps matching posts', () async {
      api.httpClient = MockClient((request) async {
        return http.Response(
          json.encode([
            {
              'title': {'rendered': 'Casa'},
              'content': {
                'rendered': '<video src="https://ex.com/a.mp4"></video>',
              },
              'excerpt': {'rendered': 'Onde morar'},
              'link': 'https://redesurdosce.ufc.br/casa',
            },
            {
              'title': {'rendered': 'Outra coisa'},
              'content': {'rendered': '<p>x</p>'},
              'excerpt': {'rendered': 'y'},
              'link': 'https://redesurdosce.ufc.br/outra',
            },
          ]),
          200,
        );
      });

      final items = await api.fetchRedeSurdos('casa');
      expect(items.length, 1);
      expect(items.first.title, 'Casa');
      expect(items.first.videoUrl, 'https://ex.com/a.mp4');
      expect(items.first.source, 'RedeSurdos');
      expect(items.first.link, 'https://redesurdosce.ufc.br/casa');
    });

    test('fetchUfv returns empty when the list has no matches', () async {
      api.httpClient = MockClient(
        (request) async => http.Response('<html>sem resultados</html>', 200),
      );

      final items = await api.fetchUfv('casa');
      expect(items, isEmpty);
    });

    test('searchAll collects items and reports failed sources', () async {
      api.httpClient = MockClient((request) async {
        final url = request.url.toString();
        if (url.contains('ines.gov.br')) {
          return http.Response('var palavras = [{"palavra": "CASA"}]', 200);
        }
        if (url.contains('redesurdosce.ufc.br')) {
          return http.Response(
            json.encode([
              {
                'title': {'rendered': 'Casa'},
                'content': {'rendered': ''},
                'excerpt': {'rendered': ''},
                'link': 'https://redesurdosce.ufc.br/casa',
              },
            ]),
            200,
          );
        }
        if (url.contains('ufv.br')) {
          return http.Response(
            '<a href="https://ufv.br/casa"><h4>Casa</h4></a>',
            200,
          );
        }
        return http.Response('[]', 200);
      });

      final result = await api.searchAll(
        'casa',
        sources: ['INES', 'RedeSurdos', 'UFV', 'LibrasAcademicaUFF'],
      );
      expect(result.items.length, 2);
      expect(result.failed, isEmpty);
    });

    test('searchAll isolates failing sources', () async {
      api.httpClient = MockClient(
        (request) async => http.Response('garbage not json', 500),
      );
      api.setInesCacheForTest(null);

      final result = await api.searchAll('casa', sources: ['INES', 'RedeSurdos']);
      expect(result.items, isEmpty);
      expect(result.failed, containsAll(['INES', 'RedeSurdos']));
    });
  });
}