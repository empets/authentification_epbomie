import 'package:equatable/equatable.dart';

class GeocodingResult extends Equatable {
  final String displayName;
  final double latitude;
  final double longitude;
  final String? name;
  final String? type;
  final String? addressType;

  const GeocodingResult({
    required this.displayName,
    required this.latitude,
    required this.longitude,
    this.name,
    this.type,
    this.addressType,
  });

  @override
  List<Object?> get props => [
        displayName,
        latitude,
        longitude,
        name,
        type,
        addressType,
      ];

  @override
  String toString() =>
      'GeocodingResult(name: $name, displayName: $displayName, lat: $latitude, lon: $longitude)';
}
