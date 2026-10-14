import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/app_text_styles.dart';

/// Displays the blood droplet icon alongside the required number of units.
class BloodUnitIndicator extends StatelessWidget {
  final int units;

  const BloodUnitIndicator({
    super.key,
    required this.units,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.water_drop_rounded,
          color: AppColors.bloodDropRed,
          size: 16,
        ),
        const SizedBox(width: 4),
        Text(
          '$units ${units == 1 ? "Unit" : "Units"}',
          style: AppTextStyles.unitsIndicator,
        ),
      ],
    );
  }
}
