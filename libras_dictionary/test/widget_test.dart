import 'package:flutter_test/flutter_test.dart';
import 'package:libras_dictionary/main.dart';

void main() {
  testWidgets('Test pump widget', (WidgetTester tester) async {
    await tester.pumpWidget(const LibrasDictionaryApp());
    // Avança o tempo virtual sem esperar tempo real
    await tester.pump(const Duration(seconds: 4));
    await tester.pumpAndSettle();
    expect(find.text('Dicionário Libras'), findsWidgets);
  });
}