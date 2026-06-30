import '../models/nominatim_response_model.dart';

abstract class GeocodingRemoteDatasource {
  /// Search for locations using geocoding API
  Future<List<NominatimResponseModel>> searchLocation(String query);

  /// Reverse geocode coordinates to address
  Future<NominatimResponseModel?> reverseGeocode({
    required double latitude,
    required double longitude,
  });
}
