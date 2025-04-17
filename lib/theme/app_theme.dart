import 'package:daily_planner/constants/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.ivory,
    primaryColor: AppColors.oliveGreen,
    colorScheme: ColorScheme.light(
      primary: AppColors.oliveGreen,
      secondary: AppColors.darkOlive,
      surface: AppColors.ivory,
      onSurface: AppColors.darkOlive,
      onPrimary: Colors.white,
      onSecondary: AppColors.ivory,
    ),
    cardColor: Colors.white.withValues(alpha: 0.85),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.darkOlive,
      ),
      bodyMedium: TextStyle(
        color: AppColors.darkOlive,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.ivory,
      foregroundColor: AppColors.darkOlive,
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.oliveGreen,
      foregroundColor: Colors.white,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.blackOlive,
    primaryColor: AppColors.oliveGreen,
    colorScheme: ColorScheme.dark(
      primary: AppColors.oliveGreen,
      secondary: AppColors.darkOlive,
      surface: AppColors.blackOlive,
      onSurface: AppColors.mutedIvory,
      onPrimary: Colors.white,
      onSecondary: AppColors.mutedIvory,
    ),
    cardColor: Colors.grey[850],
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.mutedIvory),
      bodyMedium: TextStyle(color: AppColors.mutedIvory),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.blackOlive,
      foregroundColor: AppColors.mutedIvory,
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.oliveGreen,
      foregroundColor: Colors.white,
    ),
  );
}
