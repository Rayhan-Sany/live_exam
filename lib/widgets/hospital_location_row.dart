import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/app_text_styles.dart';

/// Displays the hospital address with a pin icon and single-line ellipsis truncation.
class HospitalLocationRow extends StatelessWidget {
  final String location;

  const HospitalLocationRow({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_on_outlined,
          color: AppColors.textMuted,
          size: 16,
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            location,
            style: AppTextStyles.locationText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
