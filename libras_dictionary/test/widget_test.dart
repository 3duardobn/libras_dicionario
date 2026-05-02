import 'package:flutter_test/flutter_test.dart';
import 'package:libras_dictionary/main.dart';

void main() {
  testWidgets('Test pump widget', (WidgetTester tester) async {
    await tester.pumpWidget(const LibrasDictionaryApp());
    // Wait for the splash screen timer (3 seconds)
    await tester.pumpAndSettle(const Duration(seconds: 4));
    expect(find.text('Dicionário Libras'), findsWidgets);
  });
}
