import 'package:flutter_test/flutter_test.dart';
import 'package:libras_dictionary/cljd-out/libras-dictionary/api.dart' as api;

void main() {
  test('test various queries', () async {
    final queries = ['filme', 'computador'];
    for (var query in queries) {
      print('===================================');
      print('Searching for "$query"...');

      print('--- INES ---');
      try {
        final results = await api.fetch_ines(query);
        print('INES results: ${results.length}');
        for (var r in results) {
          print('- ${r.title}');
        }
      } catch (e) {
        print('Error INES: $e');
      }

      print('--- RedeSurdos ---');
      try {
        final results = await api.fetch_rede_surdos(query);
        print('RedeSurdos results: ${results.length}');
        for (var r in results) {
          print('- ${r.title}');
        }
      } catch (e) {
        print('Error RedeSurdos: $e');
      }

      print('--- LibrasAcademicaUFF ---');
      try {
        final results = await api.fetch_libras_academica_uff(query);
        print('LibrasAcademicaUFF results: ${results.length}');
        for (var r in results) {
          print('- ${r.title}');
        }
      } catch (e) {
        print('Error LibrasAcademicaUFF: $e');
      }

      print('--- UFV ---');
      try {
        final results = await api.fetch_ufv(query);
        print('UFV results: ${results.length}');
        for (var r in results) {
          print('- ${r.title}: ${r.video_url}');
        }
      } catch (e) {
        print('Error UFV: $e');
      }

      print('--- SpreadTheSign ---');
      try {
        final results = await api.fetch_spread_the_sign(query);
        print('SpreadTheSign results: ${results.length}');
        for (var r in results) {
          print('- ${r.title}');
        }
      } catch (e) {
        print('Error SpreadTheSign: $e');
      }

      print('--- search_all ---');
      try {
        final results = await api.search_all.$_invoke$1(query);
        print('search_all results: ${results.length}');
        for (var r in results) {
          print('- [${r.source}] ${r.title}');
        }
      } catch (e) {
        print('Error search_all: $e');
      }
    }
  });
}
