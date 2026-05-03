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
