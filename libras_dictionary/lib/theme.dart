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

/// Tema visual minimalista. As cores de cada fonte são as originais
/// suavizadas em tom pastel e aparecem apenas como marca discreta
/// (faixa lateral fina) nos resultados; a interface em si é neutra.
enum AppThemeMode { light, dark, highContrast }

abstract class AppColors {
  // --- Cores pastel das fontes (originais suavizadas) ---
  static const Color sourceInes = Color(0xFF90CAF9); // azul
  static const Color sourceRedeSurdos = Color(0xFFA5D6A7); // verde
  static const Color sourceUfv = Color(0xFFEF9A9A); // vermelho
  static const Color sourceLibrasAcademica = Color(0xFFCE93D8); // roxo
  static const Color sourceSpreadTheSign = Color(0xFFFFCC80); // laranja
  static const Color sourceFesai = Color(0xFF80DEEA); // ciano/turquesa
  static const Color sourceEconomia = Color(0xFFFFE082); // âmbar/dourado
  static const Color sourcePibic = Color(0xFFF48FB1); // rosa suave
  static const Color sourceCcb = Color(0xFFD1C4E9); // lavanda
  static const Color sourceYoutube = Color(0xFFE57373); // vermelho
  static const Color sourceFallback = Color(0xFFBDBDBD);

  /// Resolve a cor pastel de uma fonte.
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
      case 'FESAI':
        return sourceFesai;
      case 'Economia':
        return sourceEconomia;
      case 'PIBIC':
        return sourcePibic;
      case 'CCB':
        return sourceCcb;
      case 'YouTube':
        return sourceYoutube;
      default:
        return sourceFallback;
    }
  }

  /// Paleta de cores disponíveis para as pastas.
  static const List<Color> folderColors = [
    Color(0xFFE57373), // vermelho
    Color(0xFFFFB74D), // laranja
    Color(0xFFFFD54F), // amarelo
    Color(0xFF81C784), // verde
    Color(0xFF64B5F6), // azul
    Color(0xFF9575CD), // roxo
    Color(0xFFF06292), // rosa
    Color(0xFF90A4AE), // cinza-azulado
  ];

  /// Cor legível (branco ou preto) sobre um fundo de luminância dada.
  /// Usado para texto/ícones sobre as cores pastel, que são claras.
  static Color onColor(Color background) {
    return background.computeLuminance() > 0.5
        ? const Color(0xFF1C1B1A)
        : const Color(0xFFFFFFFF);
  }
}

abstract class AppRadius {
  static const double card = 12.0;
  static const double input = 8.0;
  static const double chip = 20.0;
}

/// Temas neutros: Claro, Escuro e Alto Contraste. As cores pastel das
/// fontes nunca pintam o fundo da interface.
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
    primary: Color(0xFF1C1B1A),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF5F5E5C),
    onSecondary: Color(0xFFFFFFFF),
    surface: Color(0xFFFCFCFC),
    onSurface: Color(0xFF1C1B1A),
    surfaceContainerHighest: Color(0xFFF0F0F0),
    onSurfaceVariant: Color(0xFF6E6E6E),
    outline: Color(0xFFD8D8D8),
    error: Color(0xFFB3261E),
    onError: Color(0xFFFFFFFF),
  );

  static const ColorScheme _darkScheme = ColorScheme.dark(
    primary: Color(0xFFEDEDED),
    onPrimary: Color(0xFF121212),
    secondary: Color(0xFFB0B0B0),
    onSecondary: Color(0xFF121212),
    surface: Color(0xFF121212),
    onSurface: Color(0xFFEDEDED),
    surfaceContainerHighest: Color(0xFF1F1F1F),
    onSurfaceVariant: Color(0xFF9E9E9E),
    outline: Color(0xFF3A3A3A),
    error: Color(0xFFF2B8B5),
    onError: Color(0xFF121212),
  );

  static const ColorScheme _highContrastScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF000000),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF000000),
    onSecondary: Color(0xFFFFFFFF),
    error: Color(0xFF000000),
    onError: Color(0xFFFFFFFF),
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF000000),
    surfaceContainerHighest: Color(0xFFE0E0E0),
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
    final base = ThemeData(
      useMaterial3: true,
      brightness: scheme.brightness,
      colorScheme: scheme,
    );

    final title = TextStyle(
      fontSize: isHighContrast ? 22 : 20,
      fontWeight: isHighContrast ? FontWeight.w900 : FontWeight.w700,
      height: 1.2,
      color: scheme.onSurface,
    );
    final body = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.4,
      color: scheme.onSurface,
    );

    return base.copyWith(
      scaffoldBackgroundColor: scheme.surface,
      textTheme: TextTheme(
        headlineLarge: title,
        headlineMedium: title,
        titleLarge: title,
        titleMedium: body.copyWith(fontWeight: FontWeight.w600),
        bodyLarge: body,
        bodyMedium: body,
        bodySmall: body.copyWith(fontSize: 13, color: scheme.onSurfaceVariant),
        labelLarge: body.copyWith(fontWeight: FontWeight.w600),
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
        fillColor: scheme.surfaceContainerHighest,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.input),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.input),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.input),
          borderSide: BorderSide(color: scheme.primary, width: isHighContrast ? 3 : 1.5),
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
          ),
          minimumSize: const Size(88, 48),
          textStyle: body.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: scheme.primary,
          minimumSize: const Size(48, 48),
        ),
      ),
      chipTheme: base.chipTheme.copyWith(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.chip),
          side: BorderSide(color: scheme.outline, width: isHighContrast ? 2 : 1),
        ),
        labelStyle: body.copyWith(fontSize: 13),
        secondaryLabelStyle: body.copyWith(fontSize: 13),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: scheme.surface,
        indicatorColor: scheme.primary.withValues(alpha: 0.12),
        labelTextStyle: WidgetStatePropertyAll(body.copyWith(fontSize: 12)),
      ),
      dividerTheme:
          DividerThemeData(color: scheme.outline, thickness: isHighContrast ? 2 : 1),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: scheme.inverseSurface,
        contentTextStyle: TextStyle(color: scheme.onInverseSurface),
      ),
    );
  }
}