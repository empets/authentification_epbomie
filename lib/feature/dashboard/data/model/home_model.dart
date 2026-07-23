import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grace_church/core/extension/extention.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';
part 'home_model.freezed.dart';
part 'home_model.g.dart';

//-----------------------------
//  PROFILE RESPONSE MODEL
//------------------------------
@freezed
abstract class ProfileResponseModel with _$ProfileResponseModel {
  factory ProfileResponseModel({
    required String? name,
    required String? dateNaissance,
    required String? zoneResidence,
    required String? profileImage,
    required String? contact,
    required String? email,
    required String? nationalite,
    required String? dateInscription,
    required String? statusSocial,
    required String? activity,
    required String? nivauEtude,
    required String? matrimonial,
    required String? orphelin,
    required String? statusSpirituel,
    required String? dateBaptme,
    required String? cellulePriere,
    required String? encadreur,
    required String? departement,
    required String? competence,
    required String? disponibiliry,
    required String? menberId,
    @Default(false) bool? submitProfile,
    @Default(false) bool? submitSocial,
    @Default(false) bool? submitSpiritual,
    @Default(false) bool? submitEngagement,
    required String? celluleCode,
    required String? celluleId,
    @Default('') String? deviceId,
    @Default('') String? ministere,
    @Default('') String? dateConversion,
    @Default('') String? commune,
    @Default('') String? region,
    @Default('') String? groupeSanguin,
    @Default('') String? fonction,
  }) = _ProfileResponseModel;
  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseModelFromJson(json);

  static ProfileResponse domaine(ProfileResponseModel model) {
    return ProfileResponse(
      name: model.name.getOrEmpty(),
      dateNaissance: model.dateNaissance.getOrEmpty(),
      zoneResidence: model.zoneResidence.getOrEmpty(),
      profileImage: model.profileImage.getOrEmpty(),
      contact: model.contact.getOrEmpty(),
      email: model.email.getOrEmpty(),
      nationalite: model.nationalite.getOrEmpty(),
      dateInscription: model.dateInscription.getOrEmpty(),
      statusSocial: model.statusSocial.getOrEmpty(),
      activity: model.activity.getOrEmpty(),
      nivauEtude: model.nivauEtude.getOrEmpty(),
      matrimonial: model.matrimonial.getOrEmpty(),
      orphelin: model.orphelin.getOrEmpty(),
      statusSpirituel: model.statusSpirituel.getOrEmpty(),
      dateBaptme: model.dateBaptme.getOrEmpty(),
      cellulePriere: model.cellulePriere.getOrEmpty(),
      encadreur: model.encadreur.getOrEmpty(),
      departement: model.departement.getOrEmpty(),
      competence: model.competence.getOrEmpty(),
      disponibiliry: model.disponibiliry.getOrEmpty(),
      menberId: model.menberId.getOrEmpty(),
      submitProfile: model.submitProfile.getOrEmpty(),
      submitSocial: model.submitSocial.getOrEmpty(),
      submitSpiritual: model.submitSpiritual.getOrEmpty(),
      submitEngagement: model.submitEngagement.getOrEmpty(),
      celluleCode: model.celluleCode.getOrEmpty(),
      celluleId: model.celluleId.getOrEmpty(),
      deviceId: model.deviceId.getOrEmpty(),
      ministere: model.ministere.getOrEmpty(),
      dateConversion: model.dateConversion.getOrEmpty(),
      commune: model.commune.getOrEmpty(),
      region: model.region.getOrEmpty(),
      groupeSanguin: model.groupeSanguin.getOrEmpty(),
      fonction: model.fonction.getOrEmpty(),
    );
  }
}



//presence response
@freezed
abstract class PresenceResponseModel with _$PresenceResponseModel {
  factory PresenceResponseModel({
    @Default("") String? id,
    @Default(0) int? totalEnfant,
    @Default(0) int? totalFemme,
    @Default(0) int? totalHomme,
    @Default("") String? commentaire,
    @Default("") String? date,
    @Default("") String? time,
  }) = _PresenceResponseModel;
  factory PresenceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PresenceResponseModelFromJson(json);


   static PresenceResponse toDomain(PresenceResponseModel model) {
    return PresenceResponse(
      id: model.id.getOrEmpty(),
      totalEnfant: model.totalEnfant.getOrEmpty(),
      totalFemme: model.totalFemme.getOrEmpty(),
      totalHomme: model.totalHomme.getOrEmpty(),
      commentaire: model.commentaire.getOrEmpty(),
      date: model.date.getOrEmpty(),
      time: model.time.getOrEmpty(),
    );
  }
}
