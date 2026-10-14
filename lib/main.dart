import 'package:flutter/material.dart';
import 'core/constants/app_constants.dart';
import 'core/theme/app_theme.dart';
import 'screens/blood_requests_screen.dart';

void main() {
  runApp(const BloodRequestsApp());
}

/// Root widget of the application.
class BloodRequestsApp extends StatelessWidget {
  const BloodRequestsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const BloodRequestsScreen(),
    );
  }
}
