import 'package:flutter/material.dart';

/// Centralized color palette for the application following Material Design tokens.
class AppColors {
  AppColors._();

  // Primary brand & button colors
  static const Color primaryNavy = Color(0xFF0F172A); // Dark navy button color
  static const Color primaryNavyHover = Color(0xFF1E293B);

  // Blood & Urgency accent colors
  static const Color urgentRed = Color(0xFFDC2626); // Red accent bar & text
  static const Color urgentBadgeBg = Color(0xFFFEE2E2); // Light red badge background
  static const Color bloodDropRed = Color(0xFFE53935); // Blood drop icon color

  // Neutral text colors
  static const Color textPrimary = Color(0xFF0F172A); // Dark titles
  static const Color textSecondary = Color(0xFF64748B); // Slate grey subtitle/location
  static const Color textMuted = Color(0xFF94A3B8); // Muted icon and border color

  // Background and surface colors
  static const Color scaffoldBackground = Color(0xFFF8FAFC); // Clean light background
  static const Color cardSurface = Colors.white;
  static const Color cardBorder = Color(0xFFE2E8F0); // Subtle card outline
  static const Color cardShadow = Color(0x08000000); // Subtle card elevation shadow

  // Common colors
  static const Color white = Colors.white;
}
