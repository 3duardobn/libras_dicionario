import 'package:flutter/material.dart';

/// Design System tokens and theme configuration for Dicionário Libras.
/// Strictly follows specifications from DESIGN.md.
abstract class AppColors {
  // Primary Palette
  static const Color primary = Color(0xFF1565C0);
  static const Color primaryBrand = Color(0xFF1E88E5);

  // Surface Neutrals
  static const Color surfaceLight = Color(0xFFFFFBFE);
  static const Color surfaceDark = Color(0xFF1C1B1F);
  static const Color neutralText = Color(0xFF1C1B1F);
  static const Color neutralMuted = Color(0xFF757575);
  static const Color onSource = Color(0xFFFFFFFF);

  // Source Palette (Semantic)
  static const Color sourceInes = Color(0xFF1E88E5);
  static const Color sourceRedeSurdos = Color(0xFF43A047);
  static const Color sourceUfv = Color(0xFFE53935);
  static const Color sourceLibrasAcademica = Color(0xFF8E24AA);
  static const Color sourceSpreadTheSign = Color(0xFFFB8C00);
  static const Color sourceYoutube = Color(0xFFC62828);
  static const Color sourceFallback = Color(0xFF757575);

  /// Resolves the semantic source header background color for a given source name.
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
  static const double card = 12.0;
  static const double input = 4.0;
  static const double chip = 8.0;
}

abstract class AppTheme {
  static ThemeData get lightTheme {
    final baseScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
    );
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: baseScheme.copyWith(
        primary: AppColors.primary,
        surface: AppColors.surfaceLight,
      ),
      scaffoldBackgroundColor: AppColors.surfaceLight,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.surfaceLight,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.neutralText,
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.card),
        ),
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.input),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.onSource,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.input),
          ),
          minimumSize: const Size(88, 48),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    final baseScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.dark,
    );
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: baseScheme.copyWith(
        primary: AppColors.primaryBrand,
        surface: AppColors.surfaceDark,
      ),
      scaffoldBackgroundColor: AppColors.surfaceDark,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.surfaceDark,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.card),
        ),
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.input),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.onSource,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.input),
          ),
          minimumSize: const Size(88, 48),
        ),
      ),
    );
  }
}
