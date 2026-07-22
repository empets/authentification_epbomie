import 'package:freezed_annotation/freezed_annotation.dart';
part 'cellule_request.freezed.dart';
part 'cellule_request.g.dart';


//-----------------------------
//  CELLULE REQUEST MODEL
//------------------------------
@Freezed()
abstract class RequestCellule with _$RequestCellule {
  factory RequestCellule({
    String? celluleId,
    String? celluleCode,
    String? nom,
    String? date,
    String? description,
    String? adresse,
    double? latitude,
    double? longitude,
    String? responsableCelluleId,
    String? responsableCellule,
    String? contactResponsableCellule,
    String? emailResponsableCellule,
    String? adresseResponsableCellule,
    String? secteurId,
    String? secteurCode,
    String? jourCellule,
    String? heureCellule,
  }) = _RequestCellule;
  factory RequestCellule.fromJson(Map<String, dynamic> json) =>
      _$RequestCelluleFromJson(json);
}

//------------------------------------------
// CELLULE REQUEST RESPONSABLE CELLULE
//--------------------------------------------
@freezed
abstract class RequestReponsableCellule with _$RequestReponsableCellule {
  factory RequestReponsableCellule({
    String? celluleResponsableName,
    String? reponsableId,
    String? celluleCode,
    String? date,
    String? celluleName,
    String? contact,
    String? email,
    String? adresse,
    String? celluleId,
    String? secteurId,
    String? secteurCode,
  }) = _RequestReponsableCellule;
  factory RequestReponsableCellule.fromJson(Map<String, dynamic> json) =>
      _$RequestReponsableCelluleFromJson(json);
}

//-----------------------------
//  SECTEUR REQUEST MODEL
//------------------------------
@freezed
abstract class RequestSecteur with _$RequestSecteur {
  factory RequestSecteur({
    String? secteurId,
    String? secteurCode,
    String? secteurName,
    String? dateCreated,
    String? secteurResponsableName,
    String? contactResponsable,
    String? emailResponsableSecteur,
    String? adressResponsableSecteur,
    String? responsableSecteurId,
    String? adresse,
    String? zoneId,
    String? zoneCode,
  }) = _RequestSecteur;
  factory RequestSecteur.fromJson(Map<String, dynamic> json) =>
      _$RequestSecteurFromJson(json);
}

//-----------------------------
//  ZONE REQUEST MODEL
//------------------------------
@freezed
abstract class RequestZone with _$RequestZone {
  factory RequestZone({
    String? zoneId,
    String? zoneCode,
    String? zoneName,
    String? dateCreated,
    String? zoneResponsableName,
    String? contactResponsable,
    String? emailResponsablezone,
    String? adressResponsablezone,
    String? responsablezoneId,
    String? adresse,
    String? regionId,
    String? regionCode,
  }) = _RequestZone;
  factory RequestZone.fromJson(Map<String, dynamic> json) =>
      _$RequestZoneFromJson(json);
}


@freezed
abstract class RequestRapportCelluleAdministration
    with _$RequestRapportCelluleAdministration {
  factory RequestRapportCelluleAdministration({
    required String codeZone,
    required String fullNameRespoZone,
    required String contactRespoZone,
    required String codeSecteur,
    required String responsableCelluleId,
    required String fullNameRespoSecteur,
    required String contactRespoSecteur,
    required String codeCellule,
    required String fullNameRespoCellule,
    required String contactRespoCellule,
    required String jourCellule,
    required String offrande,
    required String nombreBaptiser,
    required String nombreNonBaptiser,
    required List<Map<String, dynamic>> discipleCellule,
    required String id,
    @Default('false') String formAdministrationIsSubmit,
    required String formAdministrationSubmitDate,
    required String tag,
  }) = _RequestRapportCelluleAdministration;
  factory RequestRapportCelluleAdministration.fromJson(
    Map<String, dynamic> json,
  ) => _$RequestRapportCelluleAdministrationFromJson(json);
}




@freezed
abstract class RequestAuthenProfileUpdateZone
    with _$RequestAuthenProfileUpdateZone {
  factory RequestAuthenProfileUpdateZone({required String noticationId}) =
      _RequestAuthenProfileUpdateZone;

  factory RequestAuthenProfileUpdateZone.fromJson(Map<String, dynamic> json) =>
      _$RequestAuthenProfileUpdateZoneFromJson(json);
}


@Freezed(genericArgumentFactories: true)
abstract class RequestGeneriqueKey<T> with _$RequestGeneriqueKey<T> {
  const factory RequestGeneriqueKey({required T id}) = _RequestGeneriqueKey<T>;

  factory RequestGeneriqueKey.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$RequestGeneriqueKeyFromJson(json, fromJsonT);
}

@freezed
abstract class RequestImpliciteConnexion with _$RequestImpliciteConnexion {
  factory RequestImpliciteConnexion({required String deviceId}) =
      _RequestImpliciteConnexion;
  factory RequestImpliciteConnexion.fromJson(Map<String, dynamic> json) =>
      _$RequestImpliciteConnexionFromJson(json);
}

@freezed
abstract class RequestItemSection with _$RequestItemSection {
  factory RequestItemSection({required String name, @Default(0) int count}) =
      _RequestItemSection;
  factory RequestItemSection.fromJson(Map<String, dynamic> json) =>
      _$RequestItemSectionFromJson(json);
}

@freezed
abstract class RequestSection with _$RequestSection {
  factory RequestSection({
    required String title,
    @Default([]) List<RequestItemSection> items,
  }) = _RequestSection;
  factory RequestSection.fromJson(Map<String, dynamic> json) =>
      _$RequestSectionFromJson(json);
}

@freezed
abstract class RequestHumaneSectionAssistance
    with _$RequestHumaneSectionAssistance {
  factory RequestHumaneSectionAssistance({
    @Default("") String libelle,
    @Default("") String toutPetit,
    @Default("") String juniors,
    @Default("") String cadets,
    @Default(0) int total,
  }) = _RequestHumaneSectionAssistance;
  factory RequestHumaneSectionAssistance.fromJson(Map<String, dynamic> json) =>
      _$RequestHumaneSectionAssistanceFromJson(json);
}

@freezed
abstract class RequestAuherInformation with _$RequestAuherInformation {
  factory RequestAuherInformation({
    @Default("") String libelle,
    @Default("") String formationNewDFB,
    @Default("") String formationNewBaptDFD,
    @Default("") String visiteMenbre,
    @Default("") String visiteDisciple,
    @Default("") String nbTravailleurs,
    @Default("") String nbEleveAndEtudiants,
    @Default("") String nbOuvrierEM,
    @Default("") String nbOuvrierAutreDepatementDirigeantEM,
    @Default("") String nbFormationNiveau2,
    @Default("") String ngAgendaEM,
    @Default("") String nbDecisionnaires,
    @Default("") String id,
    @Default(0) int count,
  }) = _RequestAuherInformation;
  factory RequestAuherInformation.fromJson(Map<String, dynamic> json) =>
      _$RequestAuherInformationFromJson(json);
}

@freezed
abstract class RequestAutherInformationSource
    with _$RequestAutherInformationSource {
  factory RequestAutherInformationSource({
    required String title,
    required List<RequestAuherInformation> sections,
  }) = _RequestAutherInformationSource;
  factory RequestAutherInformationSource.fromJson(Map<String, dynamic> json) =>
      _$RequestAutherInformationSourceFromJson(json);
}

@freezed
abstract class RequestRapportCelluleAssistance
    with _$RequestRapportCelluleAssistance {
  factory RequestRapportCelluleAssistance({
    required String nombreBaptiser,
    required Map<String, dynamic> assistanceNonBaptiser,
    required Map<String, dynamic> assistanceNouveau,
    required Map<String, dynamic> assistanceInviter,
    required Map<String, dynamic> assistanceCellule,
    required String id,
    @Default('false') String formAssistanceIsSubmit,
    required String formAssistanceSubmitDate,
    required String tag,
  }) = _RequestRapportCelluleAssistance;
  factory RequestRapportCelluleAssistance.fromJson(Map<String, dynamic> json) =>
      _$RequestRapportCelluleAssistanceFromJson(json);
}

@freezed
abstract class RequestRapportCelluleActivity
    with _$RequestRapportCelluleActivity {
  factory RequestRapportCelluleActivity({
    required List<Map<String, dynamic>> visiteMenbre,
    required List<Map<String, dynamic>> visiteOuvrier,
    required List<Map<String, dynamic>> dateActivitySubmited,
    required List<Map<String, dynamic>> weekActivity,
    @Default('false')  String formActivityIsSubmit,
    required String formActivitySubmitDate,
    required String tag,
    required String id,
  }) = _RequestRapportCelluleActivity;
  factory RequestRapportCelluleActivity.fromJson(Map<String, dynamic> json) =>
      _$RequestRapportCelluleActivityFromJson(json);
}

@freezed
abstract class RequestRapportCelluleSuggestion
    with _$RequestRapportCelluleSuggestion {
  factory RequestRapportCelluleSuggestion({
    required List<Map<String, dynamic>> suggestions,
    required String faisAssignaler,
    required String ouvrierSpritualLive,
    @Default('false')  String formSuggestionIsSubmit,
    required String formSuggestionSubmitDate,
    required String resumerPredication,
    required String tag,
    required String id,
  }) = _RequestRapportCelluleSuggestion;
  factory RequestRapportCelluleSuggestion.fromJson(Map<String, dynamic> json) =>
      _$RequestRapportCelluleSuggestionFromJson(json);
}


@freezed
abstract class RequestRapportCellule
    with _$RequestRapportCellule {
  factory RequestRapportCellule({
    required String responsableCelluleId,
    required String date,
    required String tag,
  }) = _RequestRapportCellule;
  factory RequestRapportCellule.fromJson(Map<String, dynamic> json) =>
      _$RequestRapportCelluleFromJson(json);
}