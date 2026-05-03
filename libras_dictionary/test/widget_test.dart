import 'package:flutter_test/flutter_test.dart';
import 'package:libras_dictionary/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('Test pump widget', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const LibrasDictionaryApp());
    // Wait for the splash screen timer (virtual clock, no real delay)
    await tester.pump(const Duration(seconds: 4));
    await tester.pumpAndSettle();
    expect(find.text('Dicionário Libras'), findsWidgets);
  });
}