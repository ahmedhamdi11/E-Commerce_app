import 'package:ecommerce_app/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppThemes {
  // light theme
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
    ),
    useMaterial3: true,
    fontFamily: 'Jannah',
  );

  // dark theme
  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: Colors.black,
    useMaterial3: true,
    fontFamily: 'Jannah',
  );
}
