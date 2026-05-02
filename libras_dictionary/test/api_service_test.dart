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
