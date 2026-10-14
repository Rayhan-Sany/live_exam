import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/app_constants.dart';
import '../core/constants/app_text_styles.dart';
import '../models/blood_request_model.dart';
import 'blood_unit_indicator.dart';
import 'custom_primary_button.dart';
import 'hospital_location_row.dart';
import 'urgent_badge.dart';

/// Card component that presents a blood request item.
/// Features a left red accent indicator, urgency badge, units count,
/// blood group requirement title, hospital location, and a View Details button.
class BloodRequestCard extends StatelessWidget {
  final BloodRequest request;
  final VoidCallback? onViewDetails;

  const BloodRequestCard({
    super.key,
    required this.request,
    this.onViewDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardSurface,
        borderRadius: BorderRadius.circular(AppConstants.cardBorderRadius),
        border: Border.all(
          color: AppColors.cardBorder,
          width: 1.0,
        ),
        boxShadow: const [
          BoxShadow(
            color: AppColors.cardShadow,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(AppConstants.cardPadding),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Left vertical red accent bar
            Container(
              width: AppConstants.indicatorBarWidth,
              decoration: BoxDecoration(
                color: AppColors.urgentRed,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(width: 14),

            // Card content column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top header: Urgent badge on left, Units indicator on right
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (request.isUrgent)
                        const UrgentBadge()
                      else
                        const SizedBox.shrink(),
                      BloodUnitIndicator(units: request.units),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Blood group title
                  Text(
                    request.displayTitle,
                    style: AppTextStyles.bloodGroupTitle,
                  ),
                  const SizedBox(height: 8),

                  // Hospital location
                  HospitalLocationRow(location: request.hospitalName),
                  const SizedBox(height: 16),

                  // Full-width "View Details" button
                  CustomPrimaryButton(
                    text: AppConstants.viewDetailsButtonText,
                    onPressed: onViewDetails ?? () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
