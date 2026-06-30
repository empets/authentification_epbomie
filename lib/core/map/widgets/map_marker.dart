import 'package:flutter/material.dart';

class MapMarker extends StatelessWidget {
  final Color color;
  final double size;

  const MapMarker({
    super.key,
    this.color = Colors.orange,
    this.size = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.location_on,
      color: color,
      size: size,
    );
  }
}
