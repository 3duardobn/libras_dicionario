void main() {
  final normalizedQuery = 'test';
  final items = List.generate(10000, (i) => 'this is a test string that might contain test or something else $i');

  // Warmup
  for (int i = 0; i < 10; i++) {
    int count = 0;
    for (final item in items) {
      final RegExp wordBound = RegExp(r'\b' + RegExp.escape(normalizedQuery) + r'\b', unicode: true);
      if (wordBound.hasMatch(item)) count++;
    }
  }

  final sw1 = Stopwatch()..start();
  for (int i = 0; i < 100; i++) {
    int count = 0;
    for (final item in items) {
      final RegExp wordBound = RegExp(r'\b' + RegExp.escape(normalizedQuery) + r'\b', unicode: true);
      if (wordBound.hasMatch(item)) count++;
    }
  }
  sw1.stop();
  print('Regex Inside Loop: ${sw1.elapsedMilliseconds} ms');

  final sw2 = Stopwatch()..start();
  for (int i = 0; i < 100; i++) {
    int count = 0;
    final RegExp wordBound = RegExp(r'\b' + RegExp.escape(normalizedQuery) + r'\b', unicode: true);
    for (final item in items) {
      if (wordBound.hasMatch(item)) count++;
    }
  }
  sw2.stop();
  print('Regex Outside Loop: ${sw2.elapsedMilliseconds} ms');
}
