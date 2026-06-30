import '../entities/geocoding_result.dart';
import '../repositories/geocoding_repository.dart';

/// Use case for reverse geocoding (coordinates to address)
class ReverseGeocodeUsecase {
  final GeocodingRepository repository;

  const ReverseGeocodeUsecase(this.repository);

  /// Execute reverse geocoding
  /// Returns null if no address found
  Future<GeocodingResult?> call({
    required double latitude,
    required double longitude,
  }) async {
    return await repository.reverseGeocode(
      latitude: latitude,
      longitude: longitude,
    );
  }
}
