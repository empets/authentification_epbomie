import '../../domain/entities/geocoding_result.dart';

class NominatimResponseModel {
  final int placeId;
  final String displayName;
  final String lat;
  final String lon;
  final String? name;
  final String? type;
  final String? addressType;

  const NominatimResponseModel({
    required this.placeId,
    required this.displayName,
    required this.lat,
    required this.lon,
    this.name,
    this.type,
    this.addressType,
  });

  factory NominatimResponseModel.fromJson(Map<String, dynamic> json) {
    return NominatimResponseModel(
      placeId: json['place_id'] as int,
      displayName: json['display_name'] as String,
      lat: json['lat'] as String,
      lon: json['lon'] as String,
      name: json['name'] as String?,
      type: json['type'] as String?,
      addressType: json['addresstype'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'place_id': placeId,
      'display_name': displayName,
      'lat': lat,
      'lon': lon,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (addressType != null) 'addresstype': addressType,
    };
  }

  GeocodingResult toEntity() {
    return GeocodingResult(
      displayName: displayName,
      latitude: double.parse(lat),
      longitude: double.parse(lon),
      name: name,
      type: type,
      addressType: addressType,
    );
  }
}
