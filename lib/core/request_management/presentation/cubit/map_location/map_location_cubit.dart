import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grace_church/core/geocoding/domain/usecases/reverse_geocode_usecase.dart';
import 'package:grace_church/core/location/domain/usecases/get_current_location_usecase.dart';
import 'package:grace_church/core/map/models/map_location.dart';
import 'package:grace_church/core/request_management/presentation/cubit/map_location/map_location_state.dart';


/// Cubit for managing map location and address resolution
class MapLocationCubit extends Cubit<MapLocationState> {
  MapLocationCubit({
    required this.getCurrentLocationUsecase,
    required this.reverseGeocodeUsecase,
  }) : super(const MapLocationInitial());
  final GetCurrentLocationUsecase getCurrentLocationUsecase;
  final ReverseGeocodeUsecase reverseGeocodeUsecase;

  /// Get user's current GPS location and resolve address
  Future<void> fetchCurrentLocation() async {
    try {
      // Get current location
      final userLocation = await getCurrentLocationUsecase();

      final mapLocation = MapLocation(
        latitude: userLocation.latitude,
        longitude: userLocation.longitude,
      );

      // Emit loading state with location
      emit(MapLocationLoading(mapLocation));

      // Try reverse geocoding
      try {
        final result = await reverseGeocodeUsecase(
          latitude: userLocation.latitude,
          longitude: userLocation.longitude,
        );

        if (result != null) {
          emit(
            MapLocationSuccess(
              location: MapLocation(
                latitude: userLocation.latitude,
                longitude: userLocation.longitude,
                label: result.displayName,
              ),
              address: result.displayName,
            ),
          );
        } else {
          // No address found, use coordinates
          final coordinates =
              '${userLocation.latitude.toStringAsFixed(6)}, ${userLocation.longitude.toStringAsFixed(6)}';
          emit(MapLocationSuccess(location: mapLocation, address: coordinates));
        }
      } catch (e) {
        // Reverse geocoding failed, use coordinates
        final coordinates =
            '${userLocation.latitude.toStringAsFixed(6)}, ${userLocation.longitude.toStringAsFixed(6)}';
        emit(MapLocationSuccess(location: mapLocation, address: coordinates));
      }
    } catch (e) {
      emit(MapLocationError(message: e.toString()));
    }
  }

  /// Handle map tap and resolve address from coordinates
  Future<void> handleMapTap(MapLocation location) async {
    // Emit loading state
    emit(MapLocationLoading(location));

    try {
      final result = await reverseGeocodeUsecase(
        latitude: location.latitude,
        longitude: location.longitude,
      );

      if (result != null) {
        emit(
          MapLocationSuccess(
            location: MapLocation(
              latitude: location.latitude,
              longitude: location.longitude,
              label: result.displayName,
            ),
            address: result.displayName,
          ),
        );
      } else {
        // No address found, use coordinates
        final coordinates =
            '${location.latitude.toStringAsFixed(6)}, ${location.longitude.toStringAsFixed(6)}';
        emit(MapLocationSuccess(location: location, address: coordinates));
      }
    } catch (e) {
      // Reverse geocoding failed, use coordinates
      final coordinates =
          '${location.latitude.toStringAsFixed(6)}, ${location.longitude.toStringAsFixed(6)}';
      emit(MapLocationSuccess(location: location, address: coordinates));
    }
  }

  /// Set location from search
  void setLocationFromSearch({
    required double latitude,
    required double longitude,
    required String address,
  }) {
    emit(
      MapLocationSuccess(
        location: MapLocation(
          latitude: latitude,
          longitude: longitude,
          label: address,
        ),
        address: address,
      ),
    );
  }
}
