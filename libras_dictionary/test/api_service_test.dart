import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:libras_dictionary/api_service.dart';
import 'package:libras_dictionary/models.dart';
import 'dart:convert';

void main() {
  group('ApiService Search Tests', () {
    test('search returns data from RedeSurdos successfully', () async {
      final mockClient = MockClient((request) async {
        if (request.url.toString().contains('redesurdosce.ufc.br')) {
          return http.Response(jsonEncode([
            {
              'title': {'rendered': 'casa'},
              'content': {'rendered': '<p>Casa content</p>'},
              'excerpt': {'rendered': 'Casa excerpt'},
            }
          ]), 200);
        }
        return http.Response('[]', 404);
      });

      final apiService = ApiService(client: mockClient);
      final results = await apiService.search('casa', source: 'RedeSurdos');

      expect(results, isNotEmpty);
      expect(results.length, 1);
      expect(results[0].title, 'casa');
      expect(results[0].source, 'RedeSurdos');
      expect(results[0].description, 'Casa excerpt');
    });

    test('search with source Ambos aggregates data from all sources', () async {
      final mockClient = MockClient((request) async {
        final urlStr = request.url.toString();

        if (urlStr.contains('redesurdosce.ufc.br')) {
          return http.Response(jsonEncode([
            {
              'title': {'rendered': 'casa'},
              'content': {'rendered': '<p>Casa content RS</p>'},
              'excerpt': {'rendered': 'Casa excerpt RS'},
            }
          ]), 200);
        } else if (urlStr.contains('dicionario.ines.gov.br')) {
          return http.Response('var palavras = [{"palavra": "casa", "descricao": "desc INES", "exemplo": "ex INES", "libras": "libras INES"}];', 200);
        } else if (urlStr.contains('sistemas.cead.ufv.br/capes/dicionario/?s=')) {
          // UFV search page
          return http.Response('<a href="https://sistemas.cead.ufv.br/capes/dicionario/casa"><h4>casa</h4></a>', 200);
        } else if (urlStr.contains('sistemas.cead.ufv.br/capes/dicionario/casa')) {
           // UFV detail page
           return http.Response('<video src="casa.mp4"></video>', 200);
        } else if (urlStr.contains('librasacademica.uff.br')) {
          return http.Response(jsonEncode([
            {
              'title': {'rendered': 'casa'},
              'content': {'rendered': '<p>Casa content UFF</p>'},
              'excerpt': {'rendered': 'Casa excerpt UFF'},
            }
          ]), 200);
        } else if (urlStr.contains('spreadthesign.com/pt.br/search/')) {
          // SpreadTheSign search page
          return http.Response('<div class="search-result-title"> <a href="/pt.br/word/casa/">casa</a>', 200);
        } else if (urlStr.contains('spreadthesign.com/pt.br/word/casa')) {
           // SpreadTheSign detail page
           return http.Response('<video src="https://media.spreadthesign.com/video/mp4/casa.mp4"></video>', 200);
        }

        return http.Response('[]', 404);
      });

      final apiService = ApiService(client: mockClient);
      final results = await apiService.search('casa', source: 'Ambos');

      expect(results.length, 5); // 1 from each of the 5 sources

      final sources = results.map((e) => e.source).toSet();
      expect(sources.contains('RedeSurdos'), isTrue);
      expect(sources.contains('INES'), isTrue);
      expect(sources.contains('UFV'), isTrue);
      expect(sources.contains('LibrasAcademicaUFF'), isTrue);
      expect(sources.contains('SpreadTheSign'), isTrue);
    });

    test('search handles API errors gracefully', () async {
      final mockClient = MockClient((request) async {
        final urlStr = request.url.toString();

        if (urlStr.contains('redesurdosce.ufc.br')) {
          return http.Response('Internal Server Error', 500);
        } else if (urlStr.contains('dicionario.ines.gov.br')) {
           // Simulating a network error or format exception
           throw Exception('Connection timed out');
        } else if (urlStr.contains('sistemas.cead.ufv.br')) {
          return http.Response('Bad Gateway', 502);
        } else if (urlStr.contains('librasacademica.uff.br')) {
          return http.Response('Not Found', 404);
        } else if (urlStr.contains('spreadthesign.com')) {
          throw Exception('Failed to load');
        }

        return http.Response('[]', 404);
      });

      final apiService = ApiService(client: mockClient);
      // Since catchError is used for all fetches in search, an exception shouldn't bubble up.
      final results = await apiService.search('casa', source: 'Ambos');

      expect(results, isEmpty); // Should be empty because all endpoints failed
    });
  });
}
