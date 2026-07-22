import 'package:grace_church/core/map/models/map_location.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class MapConstants {
  // Default location: Abidjan, Côte d'Ivoire
  static const MapLocation defaultLocation = MapLocation(
    latitude: 5.3600,
    longitude: -4.0100,
    label: 'Abidjan',
  );

  // Default zoom levels
  static const double defaultZoom = 13;
  static const double minZoom = 5;
  static const double maxZoom = 18;

  // OpenStreetMap tile URL
  static const String osmTileUrl =
      'https://tile.openstreetmap.org/{z}/{x}/{y}.png';

  // User agent for tile requests
  static const String userAgent = 'OrangeFiberApp';
}

/// Service pour gérer les préférences de permissions localement
class PermissionPreferencesService {
  static const String _locationPermissionKey =
      'location_permission_always_allow';

  /// Sauvegarder que l'utilisateur a choisi "Toujours autoriser"
  Future<void> setAlwaysAllowLocation(bool alwaysAllow) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_locationPermissionKey, alwaysAllow);
  }

  /// Vérifier si l'utilisateur a choisi "Toujours autoriser"
  Future<bool> isLocationAlwaysAllowed() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_locationPermissionKey) ?? false;
  }

  /// Réinitialiser la préférence (utile pour les tests ou réglages)
  Future<void> resetLocationPermission() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_locationPermissionKey);
  }
}
