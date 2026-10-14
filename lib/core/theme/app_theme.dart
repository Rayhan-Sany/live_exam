import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

/// Configures light and dark themes with standardized styling.
class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.scaffoldBackground,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryNavy,
        primary: AppColors.primaryNavy,
        surface: AppColors.cardSurface,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.scaffoldBackground,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        titleTextStyle: AppTextStyles.appBarTitle,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    );
  }
}
