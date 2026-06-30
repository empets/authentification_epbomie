import 'package:equatable/equatable.dart';

/// Represents the user's current geographical location
class UserLocation extends Equatable {
  final double latitude;
  final double longitude;
  final double? accuracy;
  final DateTime timestamp;

  const UserLocation({
    required this.latitude,
    required this.longitude,
    this.accuracy,
    required this.timestamp,
  });

  @override
  List<Object?> get props => [latitude, longitude, accuracy, timestamp];
}
