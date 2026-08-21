import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/splash_screen.dart';
import 'state.dart' as st;
import 'strings.dart' as s;
import 'theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kDebugMode) {
    HttpOverrides.global = _DebugHttpOverrides();
  }
  await st.appState.loadSettings();
  // Fire-and-forget: warms autocomplete + offline cache in background.
  st.appState.preloadInes();
  runApp(const LibrasDictionaryApp());
}

class _DebugHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (cert, host, port) => true;
  }
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
          themeMode: st.appState.themeMode,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: showSplash ? const SplashScreen() : const HomePage(),
        );
      },
    );
  }
}
