import '../entities/user_location.dart';
import '../repositories/location_repository.dart';

/// Use case to get the user's current location
class GetCurrentLocationUsecase {
  final LocationRepository repository;

  const GetCurrentLocationUsecase(this.repository);

  /// Execute the use case
  /// Returns the user's current location
  /// Throws exception if permission denied or location unavailable
  Future<UserLocation> call() async {
    // Check if location service is enabled
    final isEnabled = await repository.isLocationServiceEnabled();
    if (!isEnabled) {
      throw Exception('Location services are disabled');
    }

    // Check if we have permission
    bool hasPermission = await repository.hasLocationPermission();
    if (!hasPermission) {
      // Request permission
      hasPermission = await repository.requestLocationPermission();
      if (!hasPermission) {
        throw Exception('Location permission denied');
      }
    }

    // Get location
    return await repository.getCurrentLocation();
  }
}
