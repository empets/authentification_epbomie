import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'map_location.dart';

class MapMarkerData extends Equatable {
  final MapLocation location;
  final Color color;
  final double size;
  final String? label;

  const MapMarkerData({
    required this.location,
    this.color = Colors.orange,
    this.size = 40.0,
    this.label,
  });

  @override
  List<Object?> get props => [location, color, size, label];

  MapMarkerData copyWith({
    MapLocation? location,
    Color? color,
    double? size,
    String? label,
  }) {
    return MapMarkerData(
      location: location ?? this.location,
      color: color ?? this.color,
      size: size ?? this.size,
      label: label ?? this.label,
    );
  }
}
