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
