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

void main() {
  test('ApiService _fetchInes handles invalid JSON gracefully', () async {
    final mockClient = MockClient((request) async {
      if (request.url.toString().contains('palavras.js')) {
        return http.Response('var palavras = [{invalid json}];', 200);
      }
      return http.Response('[]', 200);
    });

    await http.runWithClient(() async {
      final apiService = ApiService();
      final results = await apiService.search('test', source: 'INES');
      expect(results, isEmpty);
    }, () => mockClient);
  });
}
