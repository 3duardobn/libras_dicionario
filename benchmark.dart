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
