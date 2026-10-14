import '../models/blood_request_model.dart';

/// Provides mock blood request data matching the UI mockup.
class MockBloodRequests {
  MockBloodRequests._();

  static const List<BloodRequest> requests = [
    BloodRequest(
      id: 'req_1',
      bloodGroup: 'O-',
      units: 3,
      hospitalName: 'Khulna City Medical College Hospital, KDA Ave...',
      isUrgent: true,
    ),
    BloodRequest(
      id: 'req_2',
      bloodGroup: 'O+',
      units: 2,
      hospitalName: 'Khulna City Medical College Hospital, KDA Ave...',
      isUrgent: true,
    ),
    BloodRequest(
      id: 'req_3',
      bloodGroup: 'B+',
      units: 1,
      hospitalName: 'Dhaka Medical College Hospital, Secretariat Rd...',
      isUrgent: true,
    ),
    BloodRequest(
      id: 'req_4',
      bloodGroup: 'A+',
      units: 4,
      hospitalName: 'Square Hospital, Panthapath, Dhaka...',
      isUrgent: true,
    ),
  ];
}
