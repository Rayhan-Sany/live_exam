/// Represents a blood donation request item.
class BloodRequest {
  final String id;
  final String bloodGroup;
  final int units;
  final String hospitalName;
  final bool isUrgent;

  const BloodRequest({
    required this.id,
    required this.bloodGroup,
    required this.units,
    required this.hospitalName,
    this.isUrgent = true,
  });

  /// Formatted title e.g. "O- Blood Needed"
  String get displayTitle => '$bloodGroup Blood Needed';

  /// Formatted units string e.g. "3 Units" or "1 Unit"
  String get displayUnits => '$units ${units == 1 ? "Unit" : "Units"}';

  BloodRequest copyWith({
    String? id,
    String? bloodGroup,
    int? units,
    String? hospitalName,
    bool? isUrgent,
  }) {
    return BloodRequest(
      id: id ?? this.id,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      units: units ?? this.units,
      hospitalName: hospitalName ?? this.hospitalName,
      isUrgent: isUrgent ?? this.isUrgent,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BloodRequest &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          bloodGroup == other.bloodGroup &&
          units == other.units &&
          hospitalName == other.hospitalName &&
          isUrgent == other.isUrgent;

  @override
  int get hashCode =>
      id.hashCode ^
      bloodGroup.hashCode ^
      units.hashCode ^
      hospitalName.hashCode ^
      isUrgent.hashCode;
}
