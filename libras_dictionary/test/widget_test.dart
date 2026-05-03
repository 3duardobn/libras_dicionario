import 'package:flutter_test/flutter_test.dart';
import 'package:libras_dictionary/main.dart';

void main() {
  testWidgets('Test pump widget', (WidgetTester tester) async {
    await tester.pumpWidget(const LibrasDictionaryApp());
    // Use pumpAndSettle to wait for the Future.delayed in the splash screen to finish
    await tester.pumpAndSettle(const Duration(seconds: 4));
    expect(find.text('Dicionário Libras'), findsWidgets);
  });
}