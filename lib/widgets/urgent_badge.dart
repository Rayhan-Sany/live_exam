import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/app_constants.dart';
import '../core/constants/app_text_styles.dart';

/// Pill badge displaying the urgency status (e.g. "URGENT").
class UrgentBadge extends StatelessWidget {
  final String label;

  const UrgentBadge({
    super.key,
    this.label = AppConstants.urgentTagText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.urgentBadgeBg,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: AppTextStyles.urgentBadge,
      ),
    );
  }
}
