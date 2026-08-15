import 'package:flutter_test/flutter_test.dart';
import 'package:libras_dictionary/main.dart';
import 'package:libras_dictionary/state.dart' as st;
import 'package:libras_dictionary/strings.dart' as s;
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('app renders the home page', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await st.appState.loadSettings();

    await tester.pumpWidget(const LibrasDictionaryApp());
    await tester.pump();

    expect(find.text(s.appTitle), findsOneWidget);
    expect(find.text(s.searchLabel), findsOneWidget);
    expect(find.text(s.searchButton), findsOneWidget);
    expect(find.text(s.filterAll), findsOneWidget);
  });
}