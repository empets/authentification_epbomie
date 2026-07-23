import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_response.freezed.dart';
part 'home_response.g.dart';

// Profile Response
@freezed
abstract class ProfileResponse with _$ProfileResponse {
  factory ProfileResponse({
    required String name,
    required String dateNaissance,
    required String zoneResidence,
    required String profileImage,
    required String contact,
    required String email,
    required String nationalite,
    required String dateInscription,
    required String statusSocial,
    required String activity,
    required String nivauEtude,
    required String matrimonial,
    required String orphelin,
    required String statusSpirituel,
    required String dateBaptme,
    required String cellulePriere,
    required String encadreur,
    required String departement,
    required String competence,
    required String disponibiliry,
    required String menberId,
    required bool submitProfile,
    required bool submitSocial,
    required bool submitSpiritual,
    required bool submitEngagement,
    required String celluleCode,
    required String celluleId,
    required String deviceId,
    required String ministere,
    required String dateConversion,
    required String commune,
    required String region,
    required String groupeSanguin,
    required String fonction,
  }) = _ProfileResponse;
  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}


//presence response
@freezed
abstract class PresenceResponse with _$PresenceResponse {
  factory PresenceResponse({
    required String id,
    required int totalEnfant,
    required int totalFemme,
    required int totalHomme,
    required String commentaire,
    required String date,
    required String time,
  }) = _PresenceResponse;
  factory PresenceResponse.fromJson(Map<String, dynamic> json) =>
      _$PresenceResponseFromJson(json);
}










