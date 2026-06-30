import '../entities/geocoding_result.dart';

abstract class GeocodingRepository {
  /// Search for locations matching the query
  /// Returns a list of geocoding results
  Future<List<GeocodingResult>> searchLocation(String query);

  /// Reverse geocode: convert coordinates to address
  /// Returns a single geocoding result
  Future<GeocodingResult?> reverseGeocode({
    required double latitude,
    required double longitude,
  });
}
