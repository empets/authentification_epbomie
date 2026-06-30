import 'package:equatable/equatable.dart';

class LocationSuggestion extends Equatable {
  final String name;
  final String area;
  final double? latitude;
  final double? longitude;

  const LocationSuggestion({
    required this.name,
    required this.area,
    this.latitude,
    this.longitude,
  });

  String get displayName => '$name $area';

  @override
  List<Object?> get props => [name, area, latitude, longitude];
}
