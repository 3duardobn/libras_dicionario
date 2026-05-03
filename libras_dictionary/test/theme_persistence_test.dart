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
