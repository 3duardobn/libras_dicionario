import 'package:flutter_test/flutter_test.dart';
import 'package:libras_dictionary/main.dart';

void main() {
  testWidgets('Test pump widget', (WidgetTester tester) async {
    await tester.pumpWidget(const LibrasDictionaryApp());
    // Give the splash screen timer time to finish and navigate to Home.
    await tester.pumpAndSettle(const Duration(seconds: 3));
    expect(find.text('Dicionário Libras'), findsWidgets);
  });
}
