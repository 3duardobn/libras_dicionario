# AGENT.md — Antigravity Agent Directives for Libras Dictionary

This repository contains the **Dicionário de Libras** Flutter mobile application, fully migrated from ClojureDart to clean, idiomatic Flutter Dart 3.

## System Architecture

```
libras_dictionary/
├── lib/
│   ├── main.dart             # Application entrypoint & HomePage UI layout
│   ├── theme.dart            # Material 3 ThemeData & semantic color tokens
│   ├── state.dart            # Central AppState (ChangeNotifier) for reactive state
│   ├── api.dart              # Multi-source API integration (INES, RedeSurdos, UFV, UFF, SpreadTheSign)
│   ├── card.dart             # DictionaryItemCard widget & html renderers
│   ├── player.dart           # YoutubePlayerWidget & ChewieVideoWidget
│   ├── models.dart           # DictItem & data structures
│   ├── strings.dart          # Localized string constants (pt_BR)
│   └── screens/
│       ├── splash_screen.dart # Vector animated splash screen
│       ├── options_screen.dart# Source toggle settings
│       └── favorites_screen.dart # Stored favorites list
└── test/
    ├── api_test.dart         # Unit tests for APIs, normalization, ranking & filter logic
    └── widget_test.dart      # Widget test verifying app rendering
```

## Key Conventions & Rules

1. **Pure Dart / Flutter Standard**: Do NOT introduce ClojureDart dependencies or `cljd-out` paths. All code must remain pure Dart 3.
2. **Color Palette & Theme**: Always reference `AppColors` from `lib/theme.dart` matching `DESIGN.md`:
   - INES: `#1E88E5`
   - RedeSurdos: `#43A047`
   - UFV: `#E53935`
   - LibrasAcadêmica (UFF): `#8E24AA`
   - SpreadTheSign: `#FB8C00`
   - YouTube: `#C62828`
   - Primary: `#1565C0`
3. **ADB Environment Variable**: Always export `ANDROID_HOME=$HOME/Android/Sdk` when executing `flutter run` or `flutter devices` commands.
4. **Verification Requirement**: Always run `flutter test` and `flutter analyze` after modifying code before declaring success.
