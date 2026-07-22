
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grace_church/core/extension/extention.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/response/cellule_response.dart';
part 'cellule_model.freezed.dart';
part 'cellule_model.g.dart';

//-----------------------------
//  CELLULE RESPONSE MODEL
//------------------------------
@freezed
abstract class CelluleResponseModel with _$CelluleResponseModel {
  factory CelluleResponseModel({
    required String? celluleId,
    required String? celluleCode,
    required String? nom,
    required String? date,
    required String? description,
    required String? adresse,
    required double? latitude,
    required double? longitude,
    required String? responsableCelluleId,
    required String? responsableCellule,
    required String? contactResponsableCellule,
    required String? emailResponsableCellule,
    required String? adresseResponsableCellule,
    required String? secteurId,
    required String? secteurCode,
    required String? jourCellule,
    required String? heureCellule,
  }) = _CelluleResponseModel;
  factory CelluleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CelluleResponseModelFromJson(json);

  static CelluleResponse domaine(CelluleResponseModel model) {
    return CelluleResponse(
      celluleId: model.celluleId.getOrEmpty(),
      celluleCode: model.celluleCode.getOrEmpty(),
      nom: model.nom.getOrEmpty(),
      date: model.date.getOrEmpty(),
      description: model.description.getOrEmpty(),
      adresse: model.adresse.getOrEmpty(),
      latitude: model.latitude.getOrEmpty(),
      longitude: model.longitude.getOrEmpty(),
      responsableCelluleId: model.responsableCelluleId.getOrEmpty(),
      responsableCellule: model.responsableCellule.getOrEmpty(),
      contactResponsableCellule: model.contactResponsableCellule.getOrEmpty(),
      emailResponsableCellule: model.emailResponsableCellule.getOrEmpty(),
      adresseResponsableCellule: model.adresseResponsableCellule.getOrEmpty(),
      secteurId: model.secteurId.getOrEmpty(),
      secteurCode: model.secteurCode.getOrEmpty(),
      jourCellule: model.jourCellule.getOrEmpty(),
      heureCellule: model.heureCellule.getOrEmpty(),
    );
  }
}

@freezed
abstract class ReponsableCelluleResponseModel
    with _$ReponsableCelluleResponseModel {
  factory ReponsableCelluleResponseModel({
    required String? responsable,
    required String? celluleCode,
    required String? date,
    required String? nom,
    required String? prenom,
    required String? contact,
    required String? email,
    required String? adresse,
    required String? celluleId,
    required String? celluleName,
    required String? secteurId,
    required String? secteurCode,
    required String? responsableCelluleId,
  }) = _ReponsableCelluleResponseModel;
  factory ReponsableCelluleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ReponsableCelluleResponseModelFromJson(json);

  static ReponsableCelluleResponse domaine(
    ReponsableCelluleResponseModel model,
  ) {
    return ReponsableCelluleResponse(
      responsable: model.responsable.getOrEmpty(),
      celluleCode: model.celluleCode.getOrEmpty(),
      date: model.date.getOrEmpty(),
      celluleName: model.celluleName.getOrEmpty(),
      contact: model.contact.getOrEmpty(),
      email: model.email.getOrEmpty(),
      adresse: model.adresse.getOrEmpty(),
      celluleId: model.celluleId.getOrEmpty(),
      secteurId: model.secteurId.getOrEmpty(),
      secteurCode: model.secteurCode.getOrEmpty(),
      responsableCelluleId: model.responsableCelluleId.getOrEmpty(),
    );
  }
}

//-----------------------------
//  SECTEUR RESPONSE MODEL
//------------------------------
@freezed
abstract class SecteurModel with _$SecteurModel {
  factory SecteurModel({
    required String? secteurId,
    required String? secteurCode,
    required String? secteurName,
    required String? dateCreated,
    required String? secteurResponsableName,
    required String? contactResponsable,
    required String? emailResponsableSecteur,
    required String? adressResponsableSecteur,
    required String? responsableSecteurId,
    required String? adresse,
    required String? zoneId,
    required String? zoneCode,
  }) = _SecteurModel;
  factory SecteurModel.fromJson(Map<String, dynamic> json) =>
      _$SecteurModelFromJson(json);

  static SecteurResponse toDomain(SecteurModel model) {
    return SecteurResponse(
      secteurId: model.secteurId.getOrEmpty(),
      secteurCode: model.secteurCode.getOrEmpty(),
      secteurName: model.secteurName.getOrEmpty(),
      dateCreated: model.dateCreated.getOrEmpty(),
      secteurResponsableName: model.secteurResponsableName.getOrEmpty(),
      contactResponsable: model.contactResponsable.getOrEmpty(),
      emailResponsableSecteur: model.emailResponsableSecteur.getOrEmpty(),
      adressResponsableSecteur: model.adressResponsableSecteur.getOrEmpty(),
      responsableSecteurId: model.responsableSecteurId.getOrEmpty(),
      adresse: model.adresse.getOrEmpty(),
      zoneId: model.zoneId.getOrEmpty(),
      zoneCode: model.zoneCode.getOrEmpty(),
    );
  }
}

@freezed
abstract class ZoneResponseModel with _$ZoneResponseModel {
  factory ZoneResponseModel({
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
  }) = _ZoneResponseModel;
  factory ZoneResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ZoneResponseModelFromJson(json);

  static ZoneResponse toDomain(ZoneResponseModel model) {
    return ZoneResponse(
      zoneId: model.zoneId.getOrEmpty(),
      zoneCode: model.zoneCode.getOrEmpty(),
      zoneName: model.zoneName.getOrEmpty(),
      dateCreated: model.dateCreated.getOrEmpty(),
      zoneResponsableName: model.zoneResponsableName.getOrEmpty(),
      contactResponsable: model.contactResponsable.getOrEmpty(),
      emailResponsablezone: model.emailResponsablezone.getOrEmpty(),
      adressResponsablezone: model.adressResponsablezone.getOrEmpty(),
      responsablezoneId: model.responsablezoneId.getOrEmpty(),
      adresse: model.adresse.getOrEmpty(),
      regionId: model.regionId.getOrEmpty(),
      regionCode: model.regionCode.getOrEmpty(),
    );
  }
}



@freezed
abstract class DiscipleCelluleModel with _$DiscipleCelluleModel {
  const factory DiscipleCelluleModel({
    @Default("") String? fullName,
    @Default("") String? isBaptierOrNot,
  }) = _DiscipleCelluleModel;
  factory DiscipleCelluleModel.fromJson(Map<String, dynamic> json) =>
      _$DiscipleCelluleModelFromJson(json);

  static DiscipleCellule toDomain(DiscipleCelluleModel model) {
    return DiscipleCellule(
      fullName: model.fullName.getOrEmpty(),
      isBaptierOrNot: model.isBaptierOrNot.getOrEmpty(),
    );
  }
}

@freezed
abstract class RapportSuggestionModel with _$RapportSuggestionModel {
  factory RapportSuggestionModel({
    @Default("") String? temoignage,
    @Default("") String? suggestions,
    @Default("") String? probleme,
  }) = _RapportSuggestionModel;
  factory RapportSuggestionModel.fromJson(Map<String, dynamic> json) =>
      _$RapportSuggestionModelFromJson(json);

  static RapportSuggestion toDomain(RapportSuggestionModel model) {
    return RapportSuggestion(
      temoignage: model.temoignage.getOrEmpty(),
      suggestions: model.suggestions.getOrEmpty(),
      probleme: model.probleme.getOrEmpty(),
    );
  }
}

@freezed
abstract class RequestHumaneSectionActivityResponseModel
    with _$RequestHumaneSectionActivityResponseModel {
  const factory RequestHumaneSectionActivityResponseModel({
    @Default("") String suggestions,
    @Default("") String probleme,
    @Default("") String temoignage,
  }) = _RequestHumaneSectionActivityResponseModel;
  factory RequestHumaneSectionActivityResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$RequestHumaneSectionActivityResponseModelFromJson(json);

  static RequestHumaneSectionActivityResponse toDomain(
    RequestHumaneSectionActivityResponseModel model,
  ) {
    return RequestHumaneSectionActivityResponse(
      suggestions: model.suggestions.getOrEmpty(),
      probleme: model.probleme.getOrEmpty(),
      temoignage: model.temoignage.getOrEmpty(),
    );
  }
}

@freezed
abstract class RapportCelluleResponseModel with _$RapportCelluleResponseModel {
  factory RapportCelluleResponseModel({
    required String? codeZone,
    required String? fullNameRespoZone,
    required String? contactRespoZone,
    required String? codeSecteur,
    required String? responsableCelluleId,
    required String? fullNameRespoSecteur,
    required String? contactRespoSecteur,
    required String? codeCellule,
    required String? fullNameRespoCellule,
    required String? contactRespoCellule,
    required String? jourCellule,
    required String? offrande,
    required String? nombreBaptiser,
    required String? nombreNonBaptiser,
    @Default([DiscipleCelluleModel(fullName: "", isBaptierOrNot: "")])
    List<DiscipleCelluleModel> discipleCellule,
    required String? id,
    @Default('false') String? formAdministrationIsSubmit,
    required String? formAdministrationSubmitDate,
    required String? resumerPredication,
    required String? lieu,

    // required String? nombreBaptiser,
    @Default(
      RequestHumaneSectionAssistanceResponseModel(
        libelle: '',
        toutPetit: "",
        juniors: '',
        cadets: "",
        total: 0,
      ),
    )
    RequestHumaneSectionAssistanceResponseModel assistanceNonBaptiser,
    @Default(
      RequestHumaneSectionAssistanceResponseModel(
        libelle: '',
        toutPetit: "",
        juniors: '',
        cadets: "",
        total: 0,
      ),
    )
    RequestHumaneSectionAssistanceResponseModel assistanceNouveau,
    @Default(
      RequestHumaneSectionAssistanceResponseModel(
        libelle: '',
        toutPetit: "",
        juniors: '',
        cadets: "",
        total: 0,
      ),
    )
    RequestHumaneSectionAssistanceResponseModel assistanceInviter,
    @Default(
      RequestAuherResponseModel(
        libelle: '',
        formationNewDFB: '',
        formationNewBaptDFD: '',
        visiteMenbre: '',
        visiteDisciple: '',
        nbTravailleurs: '',
        nbEleveAndEtudiants: '',
        nbOuvrierEM: '',
        nbOuvrierAutreDepatementDirigeantEM: '',
        nbFormationNiveau2: '',
        ngAgendaEM: '',
        nbDecisionnaires: '',
        id: '',
        count: 0,
      ),
    )
    RequestAuherResponseModel assistanceCellule,
    // id,
    @Default('false') String? formAssistanceIsSubmit,
    required String? formAssistanceSubmitDate,
    @Default([
      RequestSuggestionResponseModel(
        fullname: "",
        recommandation: "",
        isDisciple: false,
        probleme: "",
      ),
    ])
    List<RequestSuggestionResponseModel> visiteMenbre,
    @Default([
      RequestSuggestionResponseModel(
        fullname: "",
        recommandation: "",
        isDisciple: false,
        probleme: "",
      ),
    ])
    List<RequestSuggestionResponseModel> visiteOuvrier,
    required String? dateActivitySubmited,
    @Default('false') String? formActivityIsSubmit,
    required String? formActivitySubmitDate,
    @Default([
      RequestHumaneSectionActivityResponseModel(
        suggestions: "",
        probleme: "",
        temoignage: "",
      ),
    ])
    List<RequestHumaneSectionActivityResponseModel> suggestions,
    @Default([WeekActivityResponseModel(date: '', orateur: '', lieu: '',programmeNature: '', theme: '')])
      List<WeekActivityResponseModel> weekActivity,
    required String? faisAssignaler,
    required String? ouvrierSpritualLive,
    @Default('false') String? formSuggestionIsSubmit,
    required String? formSuggestionSubmitDate,
    @Default('en_cours') String? tag,
  }) = _RapportCelluleResponseModel;
  factory RapportCelluleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RapportCelluleResponseModelFromJson(json);

  static RapportCelluleResponse toDomain(RapportCelluleResponseModel model) {
    return RapportCelluleResponse(
      lieu: model.lieu.getOrEmpty(),
      codeZone: model.codeZone.getOrEmpty(),
      fullNameRespoZone: model.fullNameRespoZone.getOrEmpty(),
      contactRespoZone: model.contactRespoZone.getOrEmpty(),
      codeSecteur: model.codeSecteur.getOrEmpty(),
      responsableCelluleId: model.responsableCelluleId.getOrEmpty(),
      fullNameRespoSecteur: model.fullNameRespoSecteur.getOrEmpty(),
      contactRespoSecteur: model.contactRespoSecteur.getOrEmpty(),
      codeCellule: model.codeCellule.getOrEmpty(),
      fullNameRespoCellule: model.fullNameRespoCellule.getOrEmpty(),
      contactRespoCellule: model.contactRespoCellule.getOrEmpty(),
      jourCellule: model.jourCellule.getOrEmpty(),
      offrande: model.offrande.getOrEmpty(),
      nombreBaptiser: model.nombreBaptiser.getOrEmpty(),
      nombreNonBaptiser: model.nombreNonBaptiser.getOrEmpty(),
      discipleCellule: model.discipleCellule
          .map(DiscipleCelluleModel.toDomain)
          .toList(),
      id: model.id.getOrEmpty(),
      formAdministrationIsSubmit: model.formAdministrationIsSubmit.getOrEmpty(),
      formAdministrationSubmitDate: model.formAdministrationSubmitDate
          .getOrEmpty(),
      resumerPredication: model.resumerPredication.getOrEmpty(),
      assistanceNonBaptiser:
          RequestHumaneSectionAssistanceResponseModel.toDomain(
            model.assistanceNonBaptiser,
          ),
      assistanceNouveau: RequestHumaneSectionAssistanceResponseModel.toDomain(
        model.assistanceNouveau,
      ),
      assistanceInviter: RequestHumaneSectionAssistanceResponseModel.toDomain(
        model.assistanceInviter,
      ),
      assistanceCellule: RequestAuherResponseModel.toDomain(
        model.assistanceCellule,
      ),
      formAssistanceIsSubmit: model.formAssistanceIsSubmit.getOrEmpty(),
      formAssistanceSubmitDate: model.formAssistanceSubmitDate.getOrEmpty(),
      visiteMenbre: model.visiteMenbre
          .map((e) => RequestSuggestionResponseModel.toDomain(e))
          .toList(),
      visiteOuvrier: model.visiteOuvrier
          .map((e) => RequestSuggestionResponseModel.toDomain(e))
          .toList(),
      dateActivitySubmited: model.dateActivitySubmited.getOrEmpty(),
      formActivityIsSubmit: model.formActivityIsSubmit.getOrEmpty(),
      formActivitySubmitDate: model.formActivitySubmitDate.getOrEmpty(),
      suggestions: model.suggestions
          .map(RequestHumaneSectionActivityResponseModel.toDomain)
          .toList(),
      faisAssignaler: model.faisAssignaler.getOrEmpty(),
      ouvrierSpritualLive: model.ouvrierSpritualLive.getOrEmpty(),
      formSuggestionIsSubmit: model.formSuggestionIsSubmit.getOrEmpty(),
      formSuggestionSubmitDate: model.formSuggestionSubmitDate.getOrEmpty(),
      tag: model.tag.getOrEmpty(), weekActivity: model.weekActivity
          .map(WeekActivityResponseModel.toDomain)
          .toList(),
    );
  }
}


@freezed
abstract class WeekActivityResponseModel with _$WeekActivityResponseModel {
 const factory WeekActivityResponseModel({
    @Default('') String theme,
     @Default('') String orateur,
     @Default('') String lieu,
     @Default('') String date,
     @Default('') String programmeNature,
  }) = _WeekActivityResponseModel;
  factory WeekActivityResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WeekActivityResponseModelFromJson(json);


    static   WeekActivityResponse toDomain(WeekActivityResponseModel model){
      return WeekActivityResponse(
        date: model.date.getOrEmpty(),
        theme: model.theme.getOrEmpty(),
        lieu: model.lieu.getOrEmpty(),
        programmeNature: model.programmeNature.getOrEmpty(),
        orateur: model.orateur.getOrEmpty()
         );
    }
}



@freezed
abstract class RequestAuherResponseModel with _$RequestAuherResponseModel {
  const factory RequestAuherResponseModel({
    required String? libelle,
    required String? formationNewDFB,
    required String? formationNewBaptDFD,
    required String? visiteMenbre,
    required String? visiteDisciple,
    required String? nbTravailleurs,
    required String? nbEleveAndEtudiants,
    required String? nbOuvrierEM,
    required String? nbOuvrierAutreDepatementDirigeantEM,
    required String? nbFormationNiveau2,
    required String? ngAgendaEM,
    required String? nbDecisionnaires,
    required String? id,
    required int? count,
  }) = _RequestAuherResponseModel;
  factory RequestAuherResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RequestAuherResponseModelFromJson(json);

  static RequestAuherResponse toDomain(RequestAuherResponseModel model) {
    return RequestAuherResponse(
      libelle: model.libelle.getOrEmpty(),
      formationNewDFB: model.formationNewDFB.getOrEmpty(),
      formationNewBaptDFD: model.formationNewBaptDFD.getOrEmpty(),
      visiteMenbre: model.visiteMenbre.getOrEmpty(),
      visiteDisciple: model.visiteDisciple.getOrEmpty(),
      nbTravailleurs: model.nbTravailleurs.getOrEmpty(),
      nbEleveAndEtudiants: model.nbEleveAndEtudiants.getOrEmpty(),
      nbOuvrierEM: model.nbOuvrierEM.getOrEmpty(),
      nbOuvrierAutreDepatementDirigeantEM: model
          .nbOuvrierAutreDepatementDirigeantEM
          .getOrEmpty(),
      nbFormationNiveau2: model.nbFormationNiveau2.getOrEmpty(),
      ngAgendaEM: model.ngAgendaEM.getOrEmpty(),
      nbDecisionnaires: model.nbDecisionnaires.getOrEmpty(),
      id: model.id.getOrEmpty(),
      count: model.count.getOrEmpty(),
    );
  }
}

@freezed
abstract class RequestHumaneSectionAssistanceResponseModel
    with _$RequestHumaneSectionAssistanceResponseModel {
  const factory RequestHumaneSectionAssistanceResponseModel({
    @Default("") String? libelle,
    @Default("") String? toutPetit,
    @Default("") String? juniors,
    @Default("") String? cadets,
    @Default(0) int? total,
  }) = _RequestHumaneSectionAssistanceResponseModel;
  factory RequestHumaneSectionAssistanceResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$RequestHumaneSectionAssistanceResponseModelFromJson(json);

  static RequestHumaneSectionAssistanceResponse toDomain(
    RequestHumaneSectionAssistanceResponseModel model,
  ) {
    return RequestHumaneSectionAssistanceResponse(
      libelle: model.libelle.getOrEmpty(),
      toutPetit: model.toutPetit.getOrEmpty(),
      juniors: model.juniors.getOrEmpty(),
      cadets: model.cadets.getOrEmpty(),
      total: model.total.getOrEmpty(),
    );
  }
}

@freezed
abstract class RequestHumaneSectionActivityModel
    with _$RequestHumaneSectionActivityModel {
  factory RequestHumaneSectionActivityModel({
    @Default("") String? suggestions,
    @Default("") String? probleme,
    @Default("") String? temoignage,
  }) = _RequestHumaneSectionActivityModel;
  factory RequestHumaneSectionActivityModel.fromJson(
    Map<String, dynamic> json,
  ) => _$RequestHumaneSectionActivityModelFromJson(json);

  static RequestHumaneSectionActivityResponse toDomain(
    RequestHumaneSectionActivityModel model,
  ) {
    return RequestHumaneSectionActivityResponse(
      suggestions: model.suggestions.getOrEmpty(),
      probleme: model.probleme.getOrEmpty(),
      temoignage: model.temoignage.getOrEmpty(),
    );
  }
}

@freezed
abstract class RequestSuggestionResponseModel
    with _$RequestSuggestionResponseModel {
  const factory RequestSuggestionResponseModel({
    @Default("") String? fullname,
    @Default("") String? recommandation,
    @Default(false) bool? isDisciple,
    @Default("") String? probleme,
  }) = _RequestSuggestionResponseModel;
  factory RequestSuggestionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RequestSuggestionResponseModelFromJson(json);

  static RequestSuggestionResponse toDomain(
    RequestSuggestionResponseModel model,
  ) {
    return RequestSuggestionResponse(
      fullname: model.fullname.getOrEmpty(),
      recommandation: model.recommandation.getOrEmpty(),
      isDisciple: model.isDisciple.getOrEmpty(),
      probleme: model.probleme.getOrEmpty(),
    );
  }
}
