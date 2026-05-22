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
