import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:gracechurchadmine/core/data_process/success.dart';
import 'package:gracechurchadmine/core/extension/custome_extension.dart';
import 'package:intl/intl.dart';
import 'package:crypto/crypto.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';



void closeKeyboard(BuildContext context) {
  FocusScope.of(context).unfocus();
}

extension IterableExtension<T> on List<T> {
  Iterable<T> distinctBy(Object Function(T e) getCompareValue) {
    final idSet = <Object>{};
    final distinct = <T>[];
    for (final d in this) {
      if (idSet.add(getCompareValue(d))) {
        distinct.add(d);
      }
    }

    return distinct;
  }
}

extension OnlyDigits on String {
  String get digitsOnly => replaceAll(RegExp('[^0-9]'), '');
}

Color getstatutcolor(String statusBscs) {
  if (statusBscs.isEmpty) {
    return Colors.grey.withValues(alpha: .1);
  } else if (statusBscs.isNotEmpty && statusBscs.toLowerCase() == 'actif') {
    return const Color(0XFF32C832);
  }
  return const Color(0XFF8C1D18);
}

extension CodeExtraction on String {
  String extractCode() {
    // Expression régulière pour trouver des codes alphanumériques avec des tirets
    final regex = RegExp(r'CINT-[A-Za-z0-9-]+\b');
    final Iterable<Match> matches = regex.allMatches(this);

    // Retourne le premier code trouvé (si existe)
    return matches.isNotEmpty ? matches.first.group(0) ?? '' : '';
  }
}

extension StringMasking on String {
  /// Remplace une portion de la chaîne par un autre texte
  /// Exemple : "1234567890".maskRange(2, 8, "** ** **") => "12** ** **90"
  String maskRange(int start, int end, String replacement) {
    if (isEmpty) return this;

    if (start < 0 || end > length || start > end) return this;
    return replaceRange(start, end, replacement);
  }
}

extension EmailValidator on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String cleanText() {
    return replaceAll(r"\'", "'").replaceAll(r'\n', '\n').replaceAll(r'\\', '');
  }

  bool isValidEmail() {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(this);
  }

  bool isValidPassword() {
    return RegExp(r'^.{8,63}$').hasMatch(this);
    // return RegExp(
    //   r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])[A-Za-z\d\W_]{8,}$',
    // ).hasMatch(this);
  }

  bool isValidContact() {
    return RegExp(r'^(07|05|01|21)[0-9][0-9]{7}$').hasMatch(this);
  }

  bool isIdentifiantFibre() {
    return RegExp(r'^(27)[0-9][0-9]{7}$').hasMatch(this);
  }

  bool isValidPasswordPCMB2B() {
    // PCM B2B
    final regex = RegExp(
      r'^(?=.*[A-Z]{4,})(?=.*[a-z]{3,})(?=.*[0-9]{2,})(?=.*[!@#\$%^&*]{3,}).{12,}$',
    );

    return regex.hasMatch(this);
  }
}

extension GenericExtensions on Object? {
  T? asOrNull<T>() {
    final self = this;
    return self is T ? self : null;
  }
}

extension ListExtensions on Object? {
  Object? asEmptyList<T>() {
    final self = this;
    return self is T ? self : [];
  }
}

extension StringExtensions on String? {
  String getOrEmpty() {
    final self = this;
    return self is String ? self : '';
  }

  bool parseBool() {
    final self = this;
    return self?.toLowerCase() == 'true';
  }

  String splitText() {
    final self = this;
    if (self != null) {
      var tab = self.split(' ');
      if (tab.length > 1) {
        tab = tab.where((element) => element.isNotEmpty).toList();
        return '${tab[0]} ${tab[1][0].toUpperCase()}.';
      }
      return self;
    }
    return '';
  }

  String splitAddressText() {
    final self = this;
    if (self != null) {
      var tab = self.split(',');

      if (tab.length > 2) {
        tab = tab.where((element) => element.isNotEmpty).toList();
        return '${tab[0]} ${tab[1]}';
      } else if (tab.length > 1) {
        tab = tab.where((element) => element.isNotEmpty).toList();
        return tab[0];
      }
      return self;
    }
    return '';
  }

  bool isInCurrentMonth() {
    final self = this;

    if (self != null) {
      final now = DateTime.now();
      final date = DateFormat('dd/MM/yyyy').parse(self.replaceAll('-', '/'));
      return date.month == now.month && date.year == now.year;
    }
    return false;
  }

  int differenceTwoDate() {
    final self = this;
    if (self != null) {
      final end = DateFormat('yyyy/MM/dd').parse(self.replaceAll('-', '/'));
      return end.difference(DateTime.now()).inDays;
    }
    return 0;
  }

  String parseDate() {
    final self = this;
    if (self != null) {
      final parse = DateFormat('yyyy/dd/MM').parse(self.replaceAll('-', '/'));
      return DateFormat.yMd('fr_FR').format(parse);
    }
    return '';
  }

  DateTime parseDateToDateTime() {
    final self = this;
    if (self != null) {
      return DateFormat('yyyy/MM/dd').parse(self.replaceAll('-', '/'));
    }
    return DateTime.now();
  }
}

extension BoolExtensions on bool? {
  bool getOrEmpty() {
    final self = this;
    if (self == null) {
      return false;
    }
    return self;
  }
}

extension ParseAmountExtension on Object? {
  String parseAmount() {
    final value = this;
    if (value == null) return '';

    // Convertir en String pour nettoyage
    var str = value.toString().trim();

    // Nettoyer les caractères non numériques ou séparateurs
    str = str.replaceAll(RegExp(r'[^0-9\-,.]'), '');

    // Remplacer les virgules par des points si besoin
    if (str.contains(',') && !str.contains('.')) {
      str = str.replaceAll(',', '.');
    }

    final amount = num.tryParse(str);
    if (amount == null) return '';

    // Choisir le format en fonction de la taille
    final formatter = NumberFormat(
      amount.abs() >= 1000000 ? '#,##0.###' : '#,##0',
      'fr_FR',
    );

    // Formatter et remplacer la virgule par un espace
    return formatter.format(amount).replaceAll(',', ' ');
  }
}

// extension DoubleExtensions on double? {
//   String parseAmount() {
//     final self = this;
//     if (self == null) {
//       return '';
//     }
//     if (self == 0.0) {
//       return '0';
//     }
//     var formatter = NumberFormat('#,##0');
//     if (self.toString().length > 6) {
//       formatter = NumberFormat('# ##0.###');
//     }

//     final result =
//         formatter.format(double.tryParse(self.toString())).replaceAll(',', ' ');
//     return result;
//   }
// }

extension DoubleAmountExtensions on double? {
  String parseAmountTchat() {
    final self = this;
    var formatter = NumberFormat('#,##0');
    if (self.toString().length > 7) {
      formatter = NumberFormat('#,##0.###');
    }
    final result = formatter
        .format(double.tryParse(self.toString()))
        .replaceAll(',', ' ');
    return result;
  }
}

extension IntExtensions on int? {
  int getOrEmpty() {
    final self = this;
    return self is int ? self : -1;
  }
}

extension DoubleExtension on double? {
  double getOrEmpty() {
    final self = this;
    return self is double ? self : 0.0;
  }
}

extension Utility on BuildContext {
  void nextEditableTextFocus() {
    do {
      FocusScope.of(this).nextFocus();
    } while (FocusScope.of(this).focusedChild!.context == null);
  }
}

extension DateTimeExtension on DateTime {
  String get toDotSeparatedString => DateFormat('dd/MM/yyyy').format(this);
  String get timeFormat =>
      '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  String get formatDate => '$toDotSeparatedString $timeFormat';

  DateTime getDay({required int dayOfWeek}) {
    return subtract(Duration(days: weekday - dayOfWeek));
  }
}

extension TimeOfDayExtension on TimeOfDay {
  String get timeFormat =>
      '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
}

String formaterDate(String dateString) {
  // Format d’entrée (comme dans ton exemple)
  final inputFormat = DateFormat('dd/MM/yyyy HH:mm:ss');

  // Conversion en objet DateTime
  final date = inputFormat.parse(dateString);

  // Format de sortie en français
  final outputFormat = DateFormat("EEEE d MMMM yyyy 'à' HH'h'mm", 'fr_FR');

  // On retourne la date formatée avec majuscule au début
  final result = outputFormat.format(date);
  return '${result[0].toUpperCase()}${result.substring(1)}';
}

class EllipsisFormatter extends TextInputFormatter {
  EllipsisFormatter({this.maxLength = 25});
  final int maxLength; // longueur max souhaitée

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text;

    if (text.length <= maxLength) {
      return newValue;
    }

    // Coupe le texte et ajoute ...
    final shortened = '${text.substring(0, maxLength)}...';

    return TextEditingValue(
      text: shortened,
      selection: TextSelection.collapsed(offset: shortened.length),
    );
  }
}

String couperAdresse(String adresse, int n) {
  // Découpe la chaîne par virgule
  final parties = adresse.split(',').map((p) => p.trim()).toList();

  // Si n est plus grand que le nombre d'éléments, on renvoie tout
  if (n >= parties.length) {
    return parties.join(', ');
  }

  // Sinon on renvoie seulement les n premiers éléments
  return parties.sublist(0, n).join(', ');
}

String formatKey(String email) {
  return email.replaceAll('.', '_').replaceAll('@', '_');
}

Future<FirebaseResult<String?>> updateForKey({
  required DatabaseReference db,
  required String path,
  required String id, // ✅ renommé clairement en id
}) async {
  try {
    final Map<String, dynamic> updates = {
      'id': id, // ✅ simple Map avec l'id
    };

    // 2) Mettre à jour le nœud existant
    await db.child('$path/$id').update(updates);

    // 3) Retourner la clé
    return FirebaseSuccess(id);
  } catch (e) {
    log('************$e');
    return FirebaseError(e.toString());
  }
}

bool isValidDiscipleStatusBaptiserOrNon(String value) {
  return RegExp(r'^(Oui|Non)$', caseSensitive: false).hasMatch(value.trim());
}

Future<String> getDeviceFingerprint() async {
  final deviceInfo = DeviceInfoPlugin();
  String raw = '';

  if (Platform.isAndroid) {
    final info = await deviceInfo.androidInfo;
    raw = [
      info.id, // ANDROID_ID
      info.model, // ex: "Samsung Galaxy S23"
      info.brand, // ex: "samsung"
      info.hardware, // ex: "qcom"
      info.fingerprint, // build fingerprint unique
    ].join('|');
  } else if (Platform.isIOS) {
    final info = await deviceInfo.iosInfo;
    raw = [
      info.identifierForVendor ?? '',
      info.model, // ex: "iPhone14,3"
      info.systemVersion,
      info.name,
    ].join('|');
  }

  // Hash SHA-256 → token propre pour l'auth
  final bytes = utf8.encode(raw);
  final hash = sha256.convert(bytes);
  return hash.toString(); // ex: "a3f1c8d2..."
}

// 20 mars 2025 à 14:30
String formatDate(String date) {
  DateTime dateTime = DateTime.parse(date);
  String formatted = DateFormat("d MMMM y 'à' HH:mm", 'fr').format(dateTime);
  return formatted;
}

String formatDateOnly(String date) {
  DateTime dateTime = DateTime.parse(date);
  String formatted = DateFormat("d MMMM y", 'fr').format(dateTime);
  return formatted;
}

// il y a 1 minute, 2 heures, 3 jours, etc.
String formatTimeDifference(DateTime date) {
  final now = DateTime.now();
  final diff = now.difference(date);

  if (diff.inSeconds < 60) {
    return "À l'instant";
  }
  if (diff.inMinutes < 60) {
    return "Il y a ${diff.inMinutes} min";
  }
  if (diff.inHours < 24) {
    return "Il y a ${diff.inHours} h";
  }
  if (diff.inDays < 7) {
    return "Il y a ${diff.inDays} jours";
  }

  return "Le ${formatDateOnly(date.toString())} ";
}

// permet de donner la couleur a une bordure du tag selon le type
Color getTagTextColor({required BuildContext context, required String tag}) {
  switch (tag.toLowerCase()) {
    
    ///---------------------
    ///   ALERTE
    ///---------------------
    case 'urgent':
      return Colors.red;
    case 'rappel':
      return context.appColor.primaryWarning;
    case 'info':
      return context.appColor.primaryBlue;

    ///---------------------
    ///   STATUT
    ///---------------------  
    case 'terminer':
      return context.appColor.primarySuccess.withValues(alpha: 0.5);
    case 'en_cours':
      return context.appColor.primaryWarning.withValues(alpha: 0.5);

    ///---------------------
    ///   DEPARTEMENT
    ///---------------------  
    
    case 'bureau':
      return context.appColor.primarySuccess.withValues(alpha: 0.5);
    case 'finance':
      return context.appColor.primaryWarning.withValues(alpha: 0.5);

    ///---------------------
    ///   Etudiant ou travalleur
    ///---------------------  
    
    case 'etudiant':
      return context.appColor.primaryBlue.withValues(alpha: 0.5);
    case 'travaille':
      return context.appColor.primaryWarning.withValues(alpha: 0.5);  
    default:
      return Colors.grey;
  }
}

bool isTagTextColor({required BuildContext context, required String tag}) {
  switch (tag.toLowerCase()) {
    case 'urgent':
      return true;
    case 'rappel':
      return true;
    case 'info':
      return true;

    case 'terminer':
      return true;
    case 'en_cours':
      return false;
    default:
      return false;
  }
}

// permet de donner la couleur de fond du tag selon le type
Color getTagBackgroundColor({
  required BuildContext context,
  required String tag,
}) {
  switch (tag.toLowerCase()) {
    case 'urgent':
      return Colors.red.shade50;
    case 'rappel':
      return context.appColor.primaryWarning.withValues(alpha: 0.1);
    case 'info':
      return context.appColor.primaryBlue.withValues(alpha: 0.1);
    default:
      return Colors.grey;
  }
}

// remplce tout les 00: et .00 par rien
String cleanValue(String value) {
  return value.replaceAll('00:', '').replaceAll('.00', '').trim();
}

bool isValidYearMonth(String value) {
  final regex = RegExp(r'^\d{4}-(0[1-9]|1[0-2])$');
  return regex.hasMatch(value);
}

bool allCaracterIsNombre(String input) {
  final RegExp allNumbers = RegExp(r'^\s*\d+(\s*,\s*\d+)*\s*$');
  return allNumbers.hasMatch(input);
}

String isAllDigits(String input) {
  return RegExp(r'^\d+$').hasMatch(input) ? input : "00";
}

List<Map<String, dynamic>> parseImages(dynamic data) {
  if (data == null) return [];

  if (data is List) {
    return data.map((e) => e as Map<String, dynamic>).toList();
  }

  if (data is Map) {
    return data.values.map((e) => e as Map<String, dynamic>).toList();
  }

  return [];
}

Map<String, dynamic> convertMap(Map data) {
  return data.map((key, value) {
    if (value is Map) {
      return MapEntry(key.toString(), convertMap(value));
    } else if (value is List) {
      return MapEntry(
        key.toString(),
        value.map((e) {
          if (e is Map) {
            return convertMap(e);
          }

          return e;
        }).toList(),
      );
    }

    return MapEntry(key.toString(), value);
  });
}

Map<String, dynamic> convertMapToNotificationClick(Map data) {
  return data.map((key, value) {
    if (value is Map) {
      return MapEntry(key.toString(), convertMapToNotificationClick(value));
    } else if (value is List) {
      return MapEntry(
        key.toString(),
        value.map((e) {
          if (e is Map) {
            return convertMapToNotificationClick(e);
          }

          return e;
        }).toList(),
      );
    }
    if (value == null) {
      return MapEntry(key.toString(), {});
    }

    return MapEntry(key.toString(), value);
  });
}

Map<String, dynamic> parseFirebaseMap(dynamic raw) {
  if (raw == null || raw is! Map) return {};

  final map = Map<String, dynamic>.from(raw);

  map.forEach((key, value) {
    if (value is Map) {
      map[key] = parseFirebaseMap(value);
    } else if (value is List) {
      map[key] = value
          .map((item) => item is Map ? parseFirebaseMap(item) : item)
          .toList();
    }
  });
  log("======>>  parsed map ${map}");

  return map; // ✅ ne touche plus clicks ici
}

Map<String, dynamic> parseFirebaseMapForNotificationClick(dynamic raw) {
  if (raw == null || raw is! Map) return {};

  final map = Map<String, dynamic>.from(raw);

  map.forEach((key, value) {
    if (value is Map) {
      map[key] = parseFirebaseMapForNotificationClick(value);
    } else if (value is List) {
      map[key] = value
          .map(
            (item) =>
                item is Map ? parseFirebaseMapForNotificationClick(item) : item,
          )
          .toList();
    }
  });

  if (map['clicks'] is Map<String, dynamic>) {
    map['clicks'] = (map['clicks'] as Map<String, dynamic>).values.map((click) {
      log("======>> list parsed click  ${click}");
      return Map<String, dynamic>.from(click as Map);
    }).toList();
  } else {
    log("======>>  parsed map ${map}");
    map['clicks'] = <Map<String, dynamic>>[];
  }

  return map; // ✅ ne touche plus clicks ici
}



 /// Methode: lancer un appel téléphonique
  /// Parameters: -number
  /// retour : void
  /// context : elle permet de lancer un appel téléphonique quand l'utilisateur clique sur le bouton appel le responsable
  Future<void>  canCallSupport({required String number}) async {
    final status = await Permission.phone.request();
    if (status.isGranted) {
      await FlutterPhoneDirectCaller.callNumber(number);
    }
  }


/// Methode: ouvrir le client mail pour envoyer un email
/// Parameters: -email
/// retour : void
/// context : elle permet d'ouvrir le client mail quand l'utilisateur clique sur le bouton contacter par email
Future<void> canSendEmail({required String email}) async {
  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: email,
  );

  if (await canLaunchUrl(emailUri)) {
    await launchUrl(emailUri);
  }
}


String isSumme({required String numbreOne , required String numbreThwo }) {
  
  return (int.parse(numbreOne) + int.parse(numbreThwo)).toString();
}

String isSoustration({required String numbreOne , required String numbreThwo }) {
  return (int.parse(numbreOne) - int.parse(numbreThwo)).toString();
}


bool isMidWeek() {
  final day = DateTime.now().weekday;
  return day == DateTime.thursday || day == DateTime.friday;
}


Future<void> openGmail() async { // Android — deep link Gmail 
final gmailUri = Uri.parse('googlegmail://'); 
if (await canLaunchUrl(gmailUri)) { 
  await launchUrl(gmailUri); 
} else { 
  // Fallback → app mail par défaut 
  await launchUrl(Uri(scheme: 'mailto', path: 'emmanuelpeters@gmail.com')); 
} }



 // "Dimanche 20 juillet 2026 · Semaine 29"
String formatDateWithWeek(String date) {
  DateTime dateTime = DateTime.parse(date);
  String jour = DateFormat("EEEE d MMMM y", 'fr').format(dateTime);
  jour = jour[0].toUpperCase() + jour.substring(1);
  int semaine = weekNumber(dateTime);
  return "$jour · Semaine $semaine";
}
//permet de définir la semaine a la quelle nous somme dans lannée
int weekNumber(DateTime date) {
  final dayOfYear = int.parse(DateFormat("D").format(date));
  return ((dayOfYear - date.weekday + 10) / 7).floor();
}