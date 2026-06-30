import 'package:flutter/material.dart';

class MapControls extends StatelessWidget {
  final VoidCallback onZoomIn;
  final VoidCallback onZoomOut;
  final VoidCallback onRecenter;

  const MapControls({
    super.key,
    required this.onZoomIn,
    required this.onZoomOut,
    required this.onRecenter,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        // Zoom In button
        _MapControlButton(
          icon: Icons.add,
          onPressed: onZoomIn,
          tooltip: 'Zoom avant',
        ),

        // Zoom Out button
        _MapControlButton(
          icon: Icons.remove,
          onPressed: onZoomOut,
          tooltip: 'Zoom arrière',
        ),

        // const SizedBox(height: 8),

        // // Recenter button
        // _MapControlButton(
        //   icon: Icons.my_location,
        //   onPressed: onRecenter,
        //   tooltip: 'Recentrer',
        // ),
      ],
    );
  }
}

class _MapControlButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final String tooltip;

  const _MapControlButton({
    required this.icon,
    required this.onPressed,
    required this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      shape: CircleBorder(),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(8),
        child: Tooltip(
          message: tooltip,
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),

            child: Icon(icon, color: Colors.black, size: 24),
          ),
        ),
      ),
    );
  }
}
