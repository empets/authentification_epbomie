import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grace_church/core/geocoding/domain/usecases/search_location_usecase.dart';
import 'package:grace_church/core/request_management/presentation/cubit/location_search/location_search_state.dart';


class LocationSearchCubit extends Cubit<LocationSearchState> {
  LocationSearchCubit({required this.searchLocationUsecase})
      : super(const LocationSearchInitial());
  final SearchLocationUsecase searchLocationUsecase;

  Timer? _debounceTimer;
  static const Duration _debounceDuration = Duration(milliseconds: 800);

  /// Search with debouncing
  void search(String query) {
    // Cancel previous timer
    _debounceTimer?.cancel();

    // Empty query
    if (query.trim().isEmpty) {
      emit(const LocationSearchInitial());
      return;
    }

    // Query too short
    if (query.trim().length < 3) {
      emit(const LocationSearchInitial());
      return;
    }

    // Show loading immediately for better UX
    emit(const LocationSearchLoading());

    // Start new debounce timer
    _debounceTimer = Timer(_debounceDuration, () {
      _executeSearch(query);
    });
  }

  Future<void> _executeSearch(String query) async {
    try {
      final results = await searchLocationUsecase(query);

      if (results.isEmpty) {
        emit(const LocationSearchEmpty());
      } else {
        emit(LocationSearchSuccess(results));
      }
    } catch (e) {
      emit(LocationSearchError(e.toString()));
    }
  }

  /// Clear search results
  void clear() {
    _debounceTimer?.cancel();
    emit(const LocationSearchInitial());
  }

  @override
  Future<void> close() {
    _debounceTimer?.cancel();
    return super.close();
  }
}
