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

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'platform/debug_http_stub.dart'
    if (dart.library.io) 'platform/debug_http_io.dart';
import 'screens/home_screen.dart';
import 'screens/splash_screen.dart';
import 'state.dart' as st;
import 'strings.dart' as s;
import 'theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kDebugMode) {
    applyDebugHttpOverrides();
  }
  await st.appState.loadSettings();
  // Fire-and-forget: warms autocomplete + offline cache in background.
  st.appState.preloadInes();
  runApp(const LibrasDictionaryApp());
}

class LibrasDictionaryApp extends StatelessWidget {
  const LibrasDictionaryApp({super.key, this.showSplash = true});

  final bool showSplash;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: st.appState,
      builder: (context, _) {
        return MaterialApp(
          title: s.appTitle,
          debugShowCheckedModeBanner: false,
          navigatorKey: st.appNavigatorKey,
          themeMode: st.appState.themeMode,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: showSplash ? const SplashScreen() : const HomePage(),
          builder: (context, child) => _WebFrame(
            child: child ?? const SizedBox.shrink(),
          ),
        );
      },
    );
  }
}

/// On wide viewports (web/desktop browsers) the app floats as a centred
/// panel with margins on all sides; narrow viewports stay full-bleed.
class _WebFrame extends StatelessWidget {
  const _WebFrame({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 700) return child;
        final theme = Theme.of(context);
        final isDark = theme.brightness == Brightness.dark;
        return Container(
          color: isDark ? const Color(0xFF141318) : const Color(0xFFE8E6EE),
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 560),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppRadius.card),
                border: Border.all(color: theme.dividerColor),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: isDark ? 0.5 : 0.15),
                    blurRadius: 24,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppRadius.card),
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }
}
