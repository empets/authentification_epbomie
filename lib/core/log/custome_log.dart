import 'dart:developer' as dev;

class AppLogger {
  static const String _reset  = '\x1B[0m';
  static const String _green  = '\x1B[32m';
  static const String _cyan   = '\x1B[36m';
  static const String _yellow = '\x1B[33m';
  static const String _red    = '\x1B[31m';
  static const String _purple = '\x1B[35m';
  static const String _gray   = '\x1B[90m';
  static const String _bold   = '\x1B[1m';

  // ✅ Mapping réussi
  static void success(String tag, String message, {Object? data}) {
    _log('✅ SUCCESS', tag, message, data, _green);
  }

  // ℹ️ Info générale
  static void info(String tag, String message, {Object? data}) {
    _log('ℹ️  INFO   ', tag, message, data, _cyan);
  }

  // ⚠️ Valeur nulle ou inattendue
  static void warning(String tag, String message, {Object? data}) {
    _log('⚠️  WARN   ', tag, message, data, _yellow);
  }

  // ❌ Erreur / exception
  static void error(String tag, String message, {Object? error, StackTrace? stack}) {
    if (stack != null) {
      dev.log(
        '$_red$_bold  ↳ StackTrace:\n$stack$_reset',
        name: 'AppLogger',
      );
    }
    _log('❌ ERROR   ', tag, message, error, _red);

  }

  // 🗂 Spécial mapping JSON → Dart
  static void mapping(String modelName, {required Object? json, required Object? result}) {
    final line = '$_purple$_bold━━━ MAPPING [$modelName] ━━━$_reset';
    dev.log(line, name: 'AppLogger');
    dev.log('$_gray  📥 JSON reçu   :$_reset $json', name: 'AppLogger');
    dev.log('$_purple  📤 Objet Dart  :$_reset $result', name: 'AppLogger');
    dev.log('$_purple$_bold━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$_reset', name: 'AppLogger');
  }

  static void _log(String level, String tag, String message, Object? data, String color) {
    final time = DateTime.now().toIso8601String().substring(11, 23);
    final header = '$color$_bold$level$_reset $_gray[$time]$_reset ${_bold}[$tag]$_reset';
    dev.log('$header $message', name: 'AppLogger');
    if (data != null) {
      dev.log('$_gray  ↳ $data$_reset', name: 'AppLogger');
    }
  }
}