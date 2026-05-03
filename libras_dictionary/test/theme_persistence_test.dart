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

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:libras_dictionary/main.dart';

void main() {
  testWidgets('ThemeNotifier loads dark theme from SharedPreferences', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({'isDark': true});

    WidgetsFlutterBinding.ensureInitialized();
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool('isDark') ?? false;
    themeNotifier.value = isDark ? ThemeMode.dark : ThemeMode.light;

    await tester.pumpWidget(const LibrasDictionaryApp());
    await tester.pumpAndSettle();

    final materialAppFinder = find.byType(MaterialApp);
    expect(materialAppFinder, findsOneWidget);
    final MaterialApp materialApp = tester.widget(materialAppFinder);
    expect(materialApp.themeMode, ThemeMode.dark);
  });

  testWidgets('ThemeNotifier loads light theme from SharedPreferences (default)', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({});

    WidgetsFlutterBinding.ensureInitialized();
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool('isDark') ?? false;
    themeNotifier.value = isDark ? ThemeMode.dark : ThemeMode.light;

    await tester.pumpWidget(const LibrasDictionaryApp());
    await tester.pumpAndSettle();

    final materialAppFinder = find.byType(MaterialApp);
    expect(materialAppFinder, findsOneWidget);
    final MaterialApp materialApp = tester.widget(materialAppFinder);
    expect(materialApp.themeMode, ThemeMode.light);
  });
}
