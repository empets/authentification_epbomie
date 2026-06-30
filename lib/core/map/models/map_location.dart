import 'package:equatable/equatable.dart';
import 'package:latlong2/latlong.dart';

class MapLocation extends Equatable {
  final double latitude;
  final double longitude;
  final String? label;

  const MapLocation({
    required this.latitude,
    required this.longitude,
    this.label,
  });

  LatLng toLatLng() => LatLng(latitude, longitude);

  @override
  List<Object?> get props => [latitude, longitude, label];

  MapLocation copyWith({
    double? latitude,
    double? longitude,
    String? label,
  }) {
    return MapLocation(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      label: label ?? this.label,
    );
  }

  @override
  String toString() => 'MapLocation(lat: $latitude, lng: $longitude${label != null ? ', label: $label' : ''})';
}
