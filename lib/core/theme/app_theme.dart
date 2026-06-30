import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.background,

    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      elevation: 0,
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(color: AppColors.black, fontSize: 16.0),
      bodySmall: TextStyle(color: AppColors.black, fontSize: 14.0),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12.0),
        ),
      ),
    ),

    iconTheme: IconThemeData(color: AppColors.primaryDark),
  );
}
