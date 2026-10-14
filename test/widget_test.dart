import 'package:flutter_test/flutter_test.dart';
import 'package:live_exam/main.dart';

void main() {
  testWidgets('Blood Requests screen renders mockup UI elements properly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const BloodRequestsApp());

    // Verify AppBar title
    expect(find.text('Blood Requests'), findsOneWidget);

    // Verify blood request titles from mockup
    expect(find.text('O- Blood Needed'), findsOneWidget);
    expect(find.text('O+ Blood Needed'), findsOneWidget);

    // Verify hospital location from mockup
    expect(
      find.text('Khulna City Medical College Hospital, KDA Ave...'),
      findsNWidgets(2),
    );

    // Verify units indicators from mockup
    expect(find.text('3 Units'), findsOneWidget);
    expect(find.text('2 Units'), findsOneWidget);

    // Verify urgent badges
    expect(find.text('URGENT'), findsWidgets);

    // Verify "View Details" buttons are present and clickable
    expect(find.text('View Details'), findsWidgets);
    await tester.tap(find.text('View Details').first);
    await tester.pump();
  });
}
