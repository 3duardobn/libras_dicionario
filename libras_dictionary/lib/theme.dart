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

import 'package:flutter/material.dart';

/// Visual world: "manual de tabela" (boxed reference manual over a tabbed
/// divider board). Each source is a full-strength divider board; the opened
/// result is read on a milky acetate leaf over it. State is a fold of the
/// leaf (punch hole selected, half-fold pending, errata slip for errors),
/// never colour alone, so the High Contrast theme stays honest.
enum AppThemeMode { light, dark, highContrast }

abstract class AppColors {
  // --- Divider boards (full-strength source colours) ---
  static const Color sourceInes = Color(0xFF1E88E5);
  static const Color sourceRedeSurdos = Color(0xFF43A047);
  static const Color sourceUfv = Color(0xFFE53935);
  static const Color sourceLibrasAcademica = Color(0xFF8E24AA);
  static const Color sourceSpreadTheSign = Color(0xFFFB8C00);
  static const Color sourceYoutube = Color(0xFFC62828);
  static const Color sourceFallback = Color(0xFF6B645A);

  /// Errata slip: the one colour held out for errors, in every theme.
  static const Color errata = Color(0xFFC62828);

  /// Resolves the source divider colour for a given source id.
  static Color forSource(String? source) {
    switch (source) {
      case 'INES':
        return sourceInes;
      case 'RedeSurdos':
        return sourceRedeSurdos;
      case 'UFV':
        return sourceUfv;
      case 'LibrasAcademicaUFF':
        return sourceLibrasAcademica;
      case 'SpreadTheSign':
        return sourceSpreadTheSign;
      case 'YouTube':
        return sourceYoutube;
      default:
        return sourceFallback;
    }
  }
}

abstract class AppRadius {
  static const double card = 0.0;
  static const double input = 2.0;
  static const double chip = 0.0;
}

/// Theme data for the three modes. Material 3 governs structure and
/// components; the world enters through type, palette and density.
abstract class AppTheme {
  static ThemeData lightTheme() => _build(_lightScheme, AppThemeMode.light);
  static ThemeData darkTheme() => _build(_darkScheme, AppThemeMode.dark);
  static ThemeData highContrastTheme() =>
      _build(_highContrastScheme, AppThemeMode.highContrast);

  static ThemeData forMode(AppThemeMode mode) {
    switch (mode) {
      case AppThemeMode.light:
        return lightTheme();
      case AppThemeMode.dark:
        return darkTheme();
      case AppThemeMode.highContrast:
        return highContrastTheme();
    }
  }

  static const ColorScheme _lightScheme = ColorScheme.light(
    primary: Color(0xFF1B1814),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF6B645A),
    onSecondary: Color(0xFFFFFFFF),
    surface: Color(0xFFF7F3EC),
    onSurface: Color(0xFF1B1814),
    surfaceContainerHighest: Color(0xFFE9E2D6),
    onSurfaceVariant: Color(0xFF6B645A),
    outline: Color(0xFF8A8274),
    error: Color(0xFFC62828),
    onError: Color(0xFFFFFFFF),
  );

  static const ColorScheme _darkScheme = ColorScheme.dark(
    primary: Color(0xFFF2ECE2),
    onPrimary: Color(0xFF171411),
    secondary: Color(0xFFB8B0A2),
    onSecondary: Color(0xFF171411),
    surface: Color(0xFF171411),
    onSurface: Color(0xFFF2ECE2),
    surfaceContainerHighest: Color(0xFF2A2620),
    onSurfaceVariant: Color(0xFFB8B0A2),
    outline: Color(0xFF8A8274),
    error: Color(0xFFE57373),
    onError: Color(0xFF171411),
  );

  static const ColorScheme _highContrastScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF000000),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF000000),
    onSecondary: Color(0xFFFFFFFF),
    error: Color(0xFFFF0000),
    onError: Color(0xFFFFFFFF),
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF000000),
    surfaceContainerHighest: Color(0xFFD9D9D9),
    onSurfaceVariant: Color(0xFF000000),
    outline: Color(0xFF000000),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFF000000),
    onInverseSurface: Color(0xFFFFFFFF),
    inversePrimary: Color(0xFFFFFFFF),
    surfaceTint: Color(0xFF000000),
  );

  static ThemeData _build(ColorScheme scheme, AppThemeMode mode) {
    final isHighContrast = mode == AppThemeMode.highContrast;
    final isDark = scheme.brightness == Brightness.dark;
    final mono = 'monospace';

    final base = ThemeData(
      useMaterial3: true,
      brightness: scheme.brightness,
      colorScheme: scheme,
    );

    final display = TextStyle(
      fontFamily: 'Roboto',
      fontSize: isHighContrast ? 26 : 22,
      fontWeight: isHighContrast ? FontWeight.w900 : FontWeight.w800,
      letterSpacing: 0.5,
      height: 1.1,
      color: scheme.onSurface,
    );
    final title = TextStyle(
      fontFamily: 'Roboto',
      fontSize: isHighContrast ? 20 : 17,
      fontWeight: isHighContrast ? FontWeight.w900 : FontWeight.w800,
      letterSpacing: 0.2,
      height: 1.2,
      color: scheme.onSurface,
    );
    final body = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.4,
      color: scheme.onSurface,
    );
    final monoStyle = TextStyle(
      fontFamily: mono,
      fontSize: isHighContrast ? 15 : 12,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
      color: scheme.onSurfaceVariant,
    );

    return base.copyWith(
      scaffoldBackgroundColor: scheme.surface,
      textTheme: TextTheme(
        displayLarge: display,
        displayMedium: display,
        headlineLarge: title,
        headlineMedium: title,
        titleLarge: title,
        titleMedium: body.copyWith(fontWeight: FontWeight.w700),
        bodyLarge: body,
        bodyMedium: body,
        bodySmall: body.copyWith(fontSize: isHighContrast ? 15 : 13),
        labelLarge: body.copyWith(fontWeight: FontWeight.w800),
        labelMedium: monoStyle,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: scheme.surface,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: title,
        iconTheme: IconThemeData(color: scheme.onSurface),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: isDark
            ? const Color(0xFF2A2620)
            : (isHighContrast
                ? const Color(0xFFFFFFFF)
                : const Color(0xFFE9E2D6)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.input),
          borderSide: BorderSide(
            color: isHighContrast ? const Color(0xFF000000) : scheme.outline,
            width: isHighContrast ? 3 : 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.input),
          borderSide: BorderSide(
            color: isHighContrast ? const Color(0xFF000000) : scheme.outline,
            width: isHighContrast ? 3 : 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.input),
          borderSide: BorderSide(
            color: scheme.primary,
            width: isHighContrast ? 4 : 2,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        labelStyle: TextStyle(color: scheme.onSurfaceVariant),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: scheme.primary,
          foregroundColor: scheme.onPrimary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.input),
            side: BorderSide(
              color: isHighContrast ? scheme.outline : Colors.transparent,
              width: isHighContrast ? 3 : 0,
            ),
          ),
          minimumSize: const Size(88, 48),
          textStyle: body.copyWith(fontWeight: FontWeight.w800),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: scheme.primary,
          textStyle: body.copyWith(fontWeight: FontWeight.w800),
          minimumSize: const Size(48, 48),
        ),
      ),
      chipTheme: base.chipTheme.copyWith(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.chip),
          side: BorderSide(color: scheme.outline, width: isHighContrast ? 2 : 1),
        ),
        labelStyle: body.copyWith(fontSize: isHighContrast ? 15 : 13),
        secondaryLabelStyle: body.copyWith(fontSize: isHighContrast ? 15 : 13),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: scheme.surface,
        indicatorColor: scheme.primary.withValues(alpha: isDark ? 0.35 : 0.18),
        labelTextStyle: WidgetStatePropertyAll(
          body.copyWith(fontSize: isHighContrast ? 15 : 12),
        ),
      ),
      dividerTheme: DividerThemeData(color: scheme.outline, thickness: isHighContrast ? 2 : 1),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: scheme.inverseSurface,
        contentTextStyle: TextStyle(color: scheme.onInverseSurface),
      ),
    );
  }
}