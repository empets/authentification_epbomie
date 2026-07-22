import 'package:freezed_annotation/freezed_annotation.dart';
part 'cellule_response.freezed.dart';
part 'cellule_response.g.dart';


// --------------------------------
//
// Cellule Response
//
@freezed
abstract class CelluleResponse with _$CelluleResponse {
  factory CelluleResponse({
    required String celluleId,
    required String celluleCode,
    required String nom,
    required String date,
    required String description,
    required String adresse,
    required double latitude,
    required double longitude,
    required String responsableCelluleId,
    required String responsableCellule,
    required String contactResponsableCellule,
    required String emailResponsableCellule,
    required String adresseResponsableCellule,
    required String secteurId,
    required String secteurCode,
    required String jourCellule,
    required String heureCellule,
  }) = _CelluleResponse;
  factory CelluleResponse.fromJson(Map<String, dynamic> json) =>
      _$CelluleResponseFromJson(json);
}


@freezed
abstract class ReponsableCelluleResponse with _$ReponsableCelluleResponse {
  factory ReponsableCelluleResponse({
    required String responsable,
    required String celluleCode,
    required String date,
    required String celluleName,
    required String contact,
    required String email,
    required String adresse,
    required String celluleId,
    required String secteurId,
    required String secteurCode,
    required String responsableCelluleId,
  }) = _ReponsableCelluleResponse;
  factory ReponsableCelluleResponse.fromJson(Map<String, dynamic> json) =>
      _$ReponsableCelluleResponseFromJson(json);
}

@freezed
abstract class DiscipleCellule with _$DiscipleCellule {
  factory DiscipleCellule({
    required String fullName,
    required String isBaptierOrNot,
  }) = _DiscipleCellule;
  factory DiscipleCellule.fromJson(Map<String, dynamic> json) =>
      _$DiscipleCelluleFromJson(json);
}

@freezed
abstract class SecteurResponse with _$SecteurResponse {
  factory SecteurResponse({
    required String secteurId,
    required String secteurCode,
    required String secteurName,
    required String dateCreated,
    required String secteurResponsableName,
    required String contactResponsable,
    required String emailResponsableSecteur,
    required String adressResponsableSecteur,
    required String responsableSecteurId,
    required String adresse,
    required String zoneId,
    required String zoneCode,
  }) = _SecteurResponse;

  factory SecteurResponse.fromJson(Map<String, dynamic> json) =>
      _$SecteurResponseFromJson(json);
}

@freezed
abstract class ZoneResponse with _$ZoneResponse {
  factory ZoneResponse({
    required String? zoneId,
    required String? zoneCode,
    required String? zoneName,
    required String? dateCreated,
    required String? zoneResponsableName,
    required String? contactResponsable,
    required String? emailResponsablezone,
    required String? adressResponsablezone,
    required String? responsablezoneId,
    required String? adresse,
    required String? regionId,
    required String? regionCode,
  }) = _ZoneResponse;
  factory ZoneResponse.fromJson(Map<String, dynamic> json) =>
      _$ZoneResponseFromJson(json);
}


// --------------------------------
//
// Rapport Cellule Response
//
@freezed
abstract class RapportCelluleResponse with _$RapportCelluleResponse {
  factory RapportCelluleResponse({
    required String codeZone,
    required String fullNameRespoZone,
    required String lieu,
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
    required List<DiscipleCellule> discipleCellule,
    required String id,
    required String formAdministrationIsSubmit,
    required String formAdministrationSubmitDate,
    // required String nombreBaptiser,
    required RequestHumaneSectionAssistanceResponse assistanceNonBaptiser,
    required RequestHumaneSectionAssistanceResponse assistanceNouveau,
    required RequestHumaneSectionAssistanceResponse assistanceInviter,
    required RequestAuherResponse assistanceCellule,
    // required String id,
    required String formAssistanceIsSubmit,
    required String formAssistanceSubmitDate,
    required List<RequestSuggestionResponse> visiteMenbre,
    required List<RequestSuggestionResponse> visiteOuvrier,
    required List<WeekActivityResponse> weekActivity,
    required String dateActivitySubmited,
    required String formActivityIsSubmit,
    required String formActivitySubmitDate,
    required String resumerPredication,
    required List<RequestHumaneSectionActivityResponse> suggestions,
    required String faisAssignaler,
    required String ouvrierSpritualLive,
    required String formSuggestionIsSubmit,
    required String formSuggestionSubmitDate,
    required String tag,
  }) = _RapportCelluleResponse;
  factory RapportCelluleResponse.fromJson(Map<String, dynamic> json) =>
      _$RapportCelluleResponseFromJson(json);


    
}

@freezed
abstract class RequestAuherResponse with _$RequestAuherResponse {
  factory RequestAuherResponse({
    required String libelle,
    required String formationNewDFB,
    required String formationNewBaptDFD,
    required String visiteMenbre,
    required String visiteDisciple,
    required String nbTravailleurs,
    required String nbEleveAndEtudiants,
    required String nbOuvrierEM,
    required String nbOuvrierAutreDepatementDirigeantEM,
    required String nbFormationNiveau2,
    required String ngAgendaEM,
    required String nbDecisionnaires,
    required String id,
    required int count,
  }) = _RequestAuherResponse;
  factory RequestAuherResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestAuherResponseFromJson(json);
}

@freezed
abstract class RequestHumaneSectionAssistanceResponse
    with _$RequestHumaneSectionAssistanceResponse {
  factory RequestHumaneSectionAssistanceResponse({
    required String libelle,
    required String toutPetit,
    required String juniors,
    required String cadets,
    required int total,
  }) = _RequestHumaneSectionAssistanceResponse;
  factory RequestHumaneSectionAssistanceResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$RequestHumaneSectionAssistanceResponseFromJson(json);
}

@freezed
abstract class RequestHumaneSectionActivityResponse
    with _$RequestHumaneSectionActivityResponse {
  factory RequestHumaneSectionActivityResponse({
    required String suggestions,
    required String probleme,
    required String temoignage,
  }) = _RequestHumaneSectionActivityResponse;
  factory RequestHumaneSectionActivityResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$RequestHumaneSectionActivityResponseFromJson(json);
}

@freezed
abstract class RequestSuggestionResponse
    with _$RequestSuggestionResponse {
  factory RequestSuggestionResponse({
    required String fullname,
    required String recommandation,
    required bool isDisciple,
    required String probleme,
  }) = _RequestSuggestionResponse;
  factory RequestSuggestionResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestSuggestionResponseFromJson(json);
}


@freezed
abstract class WeekActivityResponse with _$WeekActivityResponse {
  factory WeekActivityResponse({
    required String theme,
    required String orateur,
    required String lieu,
    required String date,
    required String programmeNature,
  }) = _WeekActivityResponse;
  factory WeekActivityResponse.fromJson(Map<String, dynamic> json) =>
      _$WeekActivityResponseFromJson(json);
}



@freezed
abstract class VisiteDisciple with _$VisiteDisciple {
  factory VisiteDisciple({
    required String fullname,
    @Default(false) bool isDisciple,
    required String probleme,
    required String recommandation,
  }) = _VisiteDisciple;
  factory VisiteDisciple.fromJson(Map<String, dynamic> json) =>
      _$VisiteDiscipleFromJson(json);
}


@freezed
abstract class WeekActivity with _$WeekActivity {
  factory WeekActivity({
    required String theme,
    required String orateur,
    required String lieu,
    required String date,
    required String programmeNature,
  }) = _WeekActivity;
  factory WeekActivity.fromJson(Map<String, dynamic> json) =>
      _$WeekActivityFromJson(json);
}

@freezed
abstract class RapportSuggestion with _$RapportSuggestion {
  factory RapportSuggestion({
    required String temoignage,
    required String suggestions,
    required String probleme,
  }) = _RapportSuggestion;
  factory RapportSuggestion.fromJson(Map<String, dynamic> json) =>
      _$RapportSuggestionFromJson(json);
}

