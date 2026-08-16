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

import 'package:flutter_test/flutter_test.dart';
import 'package:libras_dictionary/main.dart';
import 'package:libras_dictionary/state.dart' as st;
import 'package:libras_dictionary/strings.dart' as s;
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('app renders the home page', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await st.appState.loadSettings();

    await tester.pumpWidget(const LibrasDictionaryApp(showSplash: false));
    await tester.pump();

    expect(find.text(s.appTitle), findsOneWidget);
    expect(find.text(s.searchLabel), findsOneWidget);
    expect(find.text(s.searchButton), findsOneWidget);
    expect(find.text(s.filterAll), findsOneWidget);
  });
}