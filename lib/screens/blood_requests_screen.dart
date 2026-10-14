import 'package:flutter/material.dart';
import '../core/constants/app_constants.dart';
import '../data/mock_blood_requests.dart';
import '../widgets/blood_request_card.dart';

/// Screen displaying the list of active blood donation requests.
class BloodRequestsScreen extends StatelessWidget {
  const BloodRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final requests = MockBloodRequests.requests;

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.appTitle),
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 12.0,
          ),
          itemCount: requests.length,
          separatorBuilder: (context, index) => const SizedBox(height: 14.0),
          itemBuilder: (context, index) {
            final request = requests[index];
            return BloodRequestCard(
              request: request,
              onViewDetails: () {
                // Button functionality is empty for now as requested.
              },
            );
          },
        ),
      ),
    );
  }
}
