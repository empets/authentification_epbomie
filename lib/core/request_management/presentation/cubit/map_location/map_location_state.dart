import 'package:equatable/equatable.dart';
import 'package:grace_church/core/map/models/map_location.dart' show MapLocation;

/// Base state for map location operations
abstract class MapLocationState extends Equatable {
  const MapLocationState();

  @override
  List<Object?> get props => [];
}

/// Initial state
class MapLocationInitial extends MapLocationState {
  const MapLocationInitial();
}

/// Loading state when fetching location or reverse geocoding
class MapLocationLoading extends MapLocationState {
  final MapLocation location;

  const MapLocationLoading(this.location);

  @override
  List<Object?> get props => [location];
}

/// Success state with location and optional address
class MapLocationSuccess extends MapLocationState {
  final MapLocation location;
  final String address;

  const MapLocationSuccess({required this.location, required this.address});

  @override
  List<Object?> get props => [location, address];
}

/// Error state
class MapLocationError extends MapLocationState {
  final String message;
  final MapLocation? location;

  const MapLocationError({required this.message, this.location});

  @override
  List<Object?> get props => [message, location];
}
