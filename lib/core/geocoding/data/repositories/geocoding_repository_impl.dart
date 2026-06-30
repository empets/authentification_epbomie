import '../../domain/entities/geocoding_result.dart';
import '../../domain/repositories/geocoding_repository.dart';
import '../datasources/geocoding_remote_datasource.dart';

class GeocodingRepositoryImpl implements GeocodingRepository {
  final GeocodingRemoteDatasource remoteDatasource;

  // Simple in-memory cache to avoid duplicate requests
  final Map<String, List<GeocodingResult>> _cache = {};
  static const Duration _cacheDuration = Duration(minutes: 10);
  final Map<String, DateTime> _cacheTimestamps = {};

  GeocodingRepositoryImpl({required this.remoteDatasource});

  bool _isCacheValid(String query) {
    final timestamp = _cacheTimestamps[query];
    if (timestamp == null) return false;

    final age = DateTime.now().difference(timestamp);
    return age < _cacheDuration;
  }

  @override
  Future<List<GeocodingResult>> searchLocation(String query) async {
    // Check cache first
    if (_cache.containsKey(query) && _isCacheValid(query)) {
      return _cache[query]!;
    }

    try {
      final models = await remoteDatasource.searchLocation(query);
      final results = models.map((model) => model.toEntity()).toList();

      // Cache the results
      _cache[query] = results;
      _cacheTimestamps[query] = DateTime.now();

      return results;
    } catch (e) {
      throw Exception('Failed to search location: $e');
    }
  }

  @override
  Future<GeocodingResult?> reverseGeocode({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final model = await remoteDatasource.reverseGeocode(
        latitude: latitude,
        longitude: longitude,
      );

      return model?.toEntity();
    } catch (e) {
      throw Exception('Failed to reverse geocode: $e');
    }
  }

  /// Clear cache (useful for testing or memory management)
  void clearCache() {
    _cache.clear();
    _cacheTimestamps.clear();
  }
}
