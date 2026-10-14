import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Centralized typography definitions for the app.
class AppTextStyles {
  AppTextStyles._();

  static const TextStyle appBarTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    letterSpacing: -0.2,
  );

  static const TextStyle urgentBadge = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w700,
    color: AppColors.urgentRed,
    letterSpacing: 0.8,
  );

  static const TextStyle unitsIndicator = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle bloodGroupTitle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    letterSpacing: -0.2,
  );

  static const TextStyle locationText = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    letterSpacing: 0.2,
  );
}
