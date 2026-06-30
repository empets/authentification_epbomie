import '../entities/user_location.dart';

/// Abstract repository for location services
abstract class LocationRepository {
  /// Get the user's current location
  /// Throws exception if permission denied or location unavailable
  Future<UserLocation> getCurrentLocation();

  /// Check if location services are enabled
  Future<bool> isLocationServiceEnabled();

  /// Check if location permissions are granted
  Future<bool> hasLocationPermission();

  /// Request location permissions
  Future<bool> requestLocationPermission();
}
