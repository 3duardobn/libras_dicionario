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

import 'dart:convert';

void main() {
  final query = "teste";
  final normalizedQuery = "teste";

  // Create mock data
  List<dynamic> data = [];
  for (int i = 0; i < 10000; i++) {
    data.add({
      'title': {'rendered': 'Um título de teste $i com algumas palavras extras'},
      'content': {'rendered': 'Um conteúdo de teste $i com várias outras palavras para processar'}
    });
  }

  // Baseline - regex inside the loop
  final baselineStart = DateTime.now();
  for (int j = 0; j < 50; j++) {
    data.where((item) {
      final title = item['title']['rendered'] as String?;
      final content = item['content']['rendered'] as String?;

      final normalizedTitle = title != null ? title.toLowerCase() : '';
      final normalizedContent = content != null ? content.toLowerCase() : '';

      final RegExp wordBound = RegExp(r'\b' + RegExp.escape(normalizedQuery) + r'\b', unicode: true);
      return wordBound.hasMatch(normalizedTitle) || wordBound.hasMatch(normalizedContent);
    }).toList();
  }
  final baselineEnd = DateTime.now();
  final baselineDuration = baselineEnd.difference(baselineStart).inMilliseconds;

  // Optimized - regex outside the loop
  final optimizedStart = DateTime.now();
  for (int j = 0; j < 50; j++) {
    final RegExp wordBound = RegExp(r'\b' + RegExp.escape(normalizedQuery) + r'\b', unicode: true);
    data.where((item) {
      final title = item['title']['rendered'] as String?;
      final content = item['content']['rendered'] as String?;

      final normalizedTitle = title != null ? title.toLowerCase() : '';
      final normalizedContent = content != null ? content.toLowerCase() : '';

      return wordBound.hasMatch(normalizedTitle) || wordBound.hasMatch(normalizedContent);
    }).toList();
  }
  final optimizedEnd = DateTime.now();
  final optimizedDuration = optimizedEnd.difference(optimizedStart).inMilliseconds;

  print('Baseline duration (ms): $baselineDuration');
  print('Optimized duration (ms): $optimizedDuration');
  print('Improvement: ${((baselineDuration - optimizedDuration) / baselineDuration * 100).toStringAsFixed(2)}%');
}
