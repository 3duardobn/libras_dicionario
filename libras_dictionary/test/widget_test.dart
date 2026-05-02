import 'package:flutter_test/flutter_test.dart';
import 'package:libras_dictionary/main.dart';

void main() {
  testWidgets('Test pump widget', (WidgetTester tester) async {
    await tester.pumpWidget(const LibrasDictionaryApp());
    // Use pumpAndSettle to wait for the Future.delayed in SplashScreen to complete
    await tester.pumpAndSettle();
    expect(find.text('Dicionário Libras'), findsWidgets);
  });
}
