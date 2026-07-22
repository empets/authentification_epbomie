import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:grace_church/core/map/models/map_location.dart';
import 'package:grace_church/core/map/models/map_marker_data.dart';
import 'package:grace_church/core/map/utils/map_constants.dart';
import 'package:grace_church/core/map/widgets/map_marker.dart';


class InteractiveMap extends StatefulWidget {
  const InteractiveMap({
    super.key,
    this.initialLocation = MapConstants.defaultLocation,
    this.initialZoom = MapConstants.defaultZoom,
    this.markers = const [],
    this.onTap,
    this.interactive = true,
    this.onControlsReady,
  });
  final MapLocation initialLocation;
  final double initialZoom;
  final List<MapMarkerData> markers;
  final Function(MapLocation)? onTap;
  final bool interactive;
  final Function(
          VoidCallback zoomIn, VoidCallback zoomOut, VoidCallback recenter)?
      onControlsReady;

  @override
  State<InteractiveMap> createState() => _InteractiveMapState();
}

class _InteractiveMapState extends State<InteractiveMap> {
  late final MapController _mapController;

  @override
  void initState() {
    super.initState();
    _mapController = MapController();

    // Notify parent about control callbacks after first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onControlsReady?.call(_zoomIn, _zoomOut, _recenter);
    });
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  void _zoomIn() {
    final currentZoom = _mapController.camera.zoom;
    final newZoom =
        (currentZoom + 1).clamp(MapConstants.minZoom, MapConstants.maxZoom);
    _mapController.move(_mapController.camera.center, newZoom);
  }

  void _zoomOut() {
    final currentZoom = _mapController.camera.zoom;
    final newZoom =
        (currentZoom - 1).clamp(MapConstants.minZoom, MapConstants.maxZoom);
    _mapController.move(_mapController.camera.center, newZoom);
  }

  void _recenter() {
    _mapController.move(
      widget.initialLocation.toLatLng(),
      widget.initialZoom,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        initialCenter: widget.initialLocation.toLatLng(),
        initialZoom: widget.initialZoom,
        minZoom: MapConstants.minZoom,
        maxZoom: MapConstants.maxZoom,
        interactionOptions: InteractionOptions(
          flags:
              widget.interactive ? InteractiveFlag.all : InteractiveFlag.none,
        ),
        onTap: widget.onTap != null
            ? (tapPosition, point) {
                widget.onTap!(
                  MapLocation(
                    latitude: point.latitude,
                    longitude: point.longitude,
                  ),
                );
              }
            : null,
      ),
      children: [
        TileLayer(
          urlTemplate: MapConstants.osmTileUrl,
          userAgentPackageName: MapConstants.userAgent,
        ),
        if (widget.markers.isNotEmpty)
          MarkerLayer(
            markers: widget.markers.map((markerData) {
              return Marker(
                point: markerData.location.toLatLng(),
                width: markerData.size,
                height: markerData.size,
                child: MapMarker(
                  color: markerData.color,
                  size: markerData.size,
                ),
              );
            }).toList(),
          ),
      ],
    );
  }
}
