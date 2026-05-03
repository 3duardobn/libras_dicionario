import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:libras_dictionary/api_service.dart';
import 'package:libras_dictionary/models.dart';

void main() {
  group('ApiService Search Tests', () {
    test('Search continues when one API fails', () async {
      final client = MockClient((request) async {
        if (request.url.toString().contains('redesurdosce')) {
          // Simulate an error for RedeSurdos
          return http.Response('Internal Server Error', 500);
        } else if (request.url.toString().contains('ines')) {
          // Simulate a successful response for INES
          final jsonResponse = '[{"palavra": "teste", "descricao": "desc", "exemplo": "ex", "libras": "libras", "video": "video.mp4", "image": "image.jpg"}]';
          return http.Response('var palavras = $jsonResponse;', 200);
        }
        return http.Response('[]', 200);
      });

      final apiService = ApiService(client: client);
      final results = await apiService.search('teste');

      expect(results.length, 1);
      expect(results.first.source, 'INES');
      expect(results.first.title, 'teste');
    });

    test('Search handles network exception', () async {
      final client = MockClient((request) async {
        if (request.url.toString().contains('redesurdosce')) {
          throw Exception('Network error');
        } else if (request.url.toString().contains('ines')) {
          final jsonResponse = '[{"palavra": "teste", "descricao": "desc"}]';
          return http.Response('var palavras = $jsonResponse;', 200);
        }
        return http.Response('[]', 200);
      });

      final apiService = ApiService(client: client);
      final results = await apiService.search('teste');

      expect(results.length, 1);
      expect(results.first.source, 'INES');
      expect(results.first.title, 'teste');
    });
  });
}
