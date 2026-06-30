import '../entities/geocoding_result.dart';
import '../repositories/geocoding_repository.dart';

class SearchLocationUsecase {
  final GeocodingRepository repository;

  const SearchLocationUsecase(this.repository);

  /// Execute search with minimum query length validation
  Future<List<GeocodingResult>> call(String query) async {
    // Validate minimum query length
    if (query.trim().length < 3) {
      return [];
    }

    return await repository.searchLocation(query.trim());
  }
}
