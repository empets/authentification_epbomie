// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cellule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CelluleResponseModel _$CelluleResponseModelFromJson(
  Map<String, dynamic> json,
) => _CelluleResponseModel(
  celluleId: json['celluleId'] as String?,
  celluleCode: json['celluleCode'] as String?,
  nom: json['nom'] as String?,
  date: json['date'] as String?,
  description: json['description'] as String?,
  adresse: json['adresse'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  responsableCelluleId: json['responsableCelluleId'] as String?,
  responsableCellule: json['responsableCellule'] as String?,
  contactResponsableCellule: json['contactResponsableCellule'] as String?,
  emailResponsableCellule: json['emailResponsableCellule'] as String?,
  adresseResponsableCellule: json['adresseResponsableCellule'] as String?,
  secteurId: json['secteurId'] as String?,
  secteurCode: json['secteurCode'] as String?,
  jourCellule: json['jourCellule'] as String?,
  heureCellule: json['heureCellule'] as String?,
);

Map<String, dynamic> _$CelluleResponseModelToJson(
  _CelluleResponseModel instance,
) => <String, dynamic>{
  'celluleId': instance.celluleId,
  'celluleCode': instance.celluleCode,
  'nom': instance.nom,
  'date': instance.date,
  'description': instance.description,
  'adresse': instance.adresse,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'responsableCelluleId': instance.responsableCelluleId,
  'responsableCellule': instance.responsableCellule,
  'contactResponsableCellule': instance.contactResponsableCellule,
  'emailResponsableCellule': instance.emailResponsableCellule,
  'adresseResponsableCellule': instance.adresseResponsableCellule,
  'secteurId': instance.secteurId,
  'secteurCode': instance.secteurCode,
  'jourCellule': instance.jourCellule,
  'heureCellule': instance.heureCellule,
};

_ReponsableCelluleResponseModel _$ReponsableCelluleResponseModelFromJson(
  Map<String, dynamic> json,
) => _ReponsableCelluleResponseModel(
  responsable: json['responsable'] as String?,
  celluleCode: json['celluleCode'] as String?,
  date: json['date'] as String?,
  nom: json['nom'] as String?,
  prenom: json['prenom'] as String?,
  contact: json['contact'] as String?,
  email: json['email'] as String?,
  adresse: json['adresse'] as String?,
  celluleId: json['celluleId'] as String?,
  celluleName: json['celluleName'] as String?,
  secteurId: json['secteurId'] as String?,
  secteurCode: json['secteurCode'] as String?,
  responsableCelluleId: json['responsableCelluleId'] as String?,
);

Map<String, dynamic> _$ReponsableCelluleResponseModelToJson(
  _ReponsableCelluleResponseModel instance,
) => <String, dynamic>{
  'responsable': instance.responsable,
  'celluleCode': instance.celluleCode,
  'date': instance.date,
  'nom': instance.nom,
  'prenom': instance.prenom,
  'contact': instance.contact,
  'email': instance.email,
  'adresse': instance.adresse,
  'celluleId': instance.celluleId,
  'celluleName': instance.celluleName,
  'secteurId': instance.secteurId,
  'secteurCode': instance.secteurCode,
  'responsableCelluleId': instance.responsableCelluleId,
};

_SecteurModel _$SecteurModelFromJson(Map<String, dynamic> json) =>
    _SecteurModel(
      secteurId: json['secteurId'] as String?,
      secteurCode: json['secteurCode'] as String?,
      secteurName: json['secteurName'] as String?,
      dateCreated: json['dateCreated'] as String?,
      secteurResponsableName: json['secteurResponsableName'] as String?,
      contactResponsable: json['contactResponsable'] as String?,
      emailResponsableSecteur: json['emailResponsableSecteur'] as String?,
      adressResponsableSecteur: json['adressResponsableSecteur'] as String?,
      responsableSecteurId: json['responsableSecteurId'] as String?,
      adresse: json['adresse'] as String?,
      zoneId: json['zoneId'] as String?,
      zoneCode: json['zoneCode'] as String?,
    );

Map<String, dynamic> _$SecteurModelToJson(_SecteurModel instance) =>
    <String, dynamic>{
      'secteurId': instance.secteurId,
      'secteurCode': instance.secteurCode,
      'secteurName': instance.secteurName,
      'dateCreated': instance.dateCreated,
      'secteurResponsableName': instance.secteurResponsableName,
      'contactResponsable': instance.contactResponsable,
      'emailResponsableSecteur': instance.emailResponsableSecteur,
      'adressResponsableSecteur': instance.adressResponsableSecteur,
      'responsableSecteurId': instance.responsableSecteurId,
      'adresse': instance.adresse,
      'zoneId': instance.zoneId,
      'zoneCode': instance.zoneCode,
    };

_ZoneResponseModel _$ZoneResponseModelFromJson(Map<String, dynamic> json) =>
    _ZoneResponseModel(
      zoneId: json['zoneId'] as String?,
      zoneCode: json['zoneCode'] as String?,
      zoneName: json['zoneName'] as String?,
      dateCreated: json['dateCreated'] as String?,
      zoneResponsableName: json['zoneResponsableName'] as String?,
      contactResponsable: json['contactResponsable'] as String?,
      emailResponsablezone: json['emailResponsablezone'] as String?,
      adressResponsablezone: json['adressResponsablezone'] as String?,
      responsablezoneId: json['responsablezoneId'] as String?,
      adresse: json['adresse'] as String?,
      regionId: json['regionId'] as String?,
      regionCode: json['regionCode'] as String?,
    );

Map<String, dynamic> _$ZoneResponseModelToJson(_ZoneResponseModel instance) =>
    <String, dynamic>{
      'zoneId': instance.zoneId,
      'zoneCode': instance.zoneCode,
      'zoneName': instance.zoneName,
      'dateCreated': instance.dateCreated,
      'zoneResponsableName': instance.zoneResponsableName,
      'contactResponsable': instance.contactResponsable,
      'emailResponsablezone': instance.emailResponsablezone,
      'adressResponsablezone': instance.adressResponsablezone,
      'responsablezoneId': instance.responsablezoneId,
      'adresse': instance.adresse,
      'regionId': instance.regionId,
      'regionCode': instance.regionCode,
    };

_DiscipleCelluleModel _$DiscipleCelluleModelFromJson(
  Map<String, dynamic> json,
) => _DiscipleCelluleModel(
  fullName: json['fullName'] as String? ?? "",
  isBaptierOrNot: json['isBaptierOrNot'] as String? ?? "",
);

Map<String, dynamic> _$DiscipleCelluleModelToJson(
  _DiscipleCelluleModel instance,
) => <String, dynamic>{
  'fullName': instance.fullName,
  'isBaptierOrNot': instance.isBaptierOrNot,
};

_RapportSuggestionModel _$RapportSuggestionModelFromJson(
  Map<String, dynamic> json,
) => _RapportSuggestionModel(
  temoignage: json['temoignage'] as String? ?? "",
  suggestions: json['suggestions'] as String? ?? "",
  probleme: json['probleme'] as String? ?? "",
);

Map<String, dynamic> _$RapportSuggestionModelToJson(
  _RapportSuggestionModel instance,
) => <String, dynamic>{
  'temoignage': instance.temoignage,
  'suggestions': instance.suggestions,
  'probleme': instance.probleme,
};

_RequestHumaneSectionActivityResponseModel
_$RequestHumaneSectionActivityResponseModelFromJson(
  Map<String, dynamic> json,
) => _RequestHumaneSectionActivityResponseModel(
  suggestions: json['suggestions'] as String? ?? "",
  probleme: json['probleme'] as String? ?? "",
  temoignage: json['temoignage'] as String? ?? "",
);

Map<String, dynamic> _$RequestHumaneSectionActivityResponseModelToJson(
  _RequestHumaneSectionActivityResponseModel instance,
) => <String, dynamic>{
  'suggestions': instance.suggestions,
  'probleme': instance.probleme,
  'temoignage': instance.temoignage,
};

_RapportCelluleResponseModel _$RapportCelluleResponseModelFromJson(
  Map<String, dynamic> json,
) => _RapportCelluleResponseModel(
  codeZone: json['codeZone'] as String?,
  fullNameRespoZone: json['fullNameRespoZone'] as String?,
  contactRespoZone: json['contactRespoZone'] as String?,
  codeSecteur: json['codeSecteur'] as String?,
  responsableCelluleId: json['responsableCelluleId'] as String?,
  fullNameRespoSecteur: json['fullNameRespoSecteur'] as String?,
  contactRespoSecteur: json['contactRespoSecteur'] as String?,
  codeCellule: json['codeCellule'] as String?,
  fullNameRespoCellule: json['fullNameRespoCellule'] as String?,
  contactRespoCellule: json['contactRespoCellule'] as String?,
  jourCellule: json['jourCellule'] as String?,
  offrande: json['offrande'] as String?,
  nombreBaptiser: json['nombreBaptiser'] as String?,
  nombreNonBaptiser: json['nombreNonBaptiser'] as String?,
  discipleCellule:
      (json['discipleCellule'] as List<dynamic>?)
          ?.map((e) => DiscipleCelluleModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [DiscipleCelluleModel(fullName: "", isBaptierOrNot: "")],
  id: json['id'] as String?,
  formAdministrationIsSubmit:
      json['formAdministrationIsSubmit'] as String? ?? 'false',
  formAdministrationSubmitDate: json['formAdministrationSubmitDate'] as String?,
  resumerPredication: json['resumerPredication'] as String?,
  lieu: json['lieu'] as String?,
  assistanceNonBaptiser: json['assistanceNonBaptiser'] == null
      ? const RequestHumaneSectionAssistanceResponseModel(
          libelle: '',
          toutPetit: "",
          juniors: '',
          cadets: "",
          total: 0,
        )
      : RequestHumaneSectionAssistanceResponseModel.fromJson(
          json['assistanceNonBaptiser'] as Map<String, dynamic>,
        ),
  assistanceNouveau: json['assistanceNouveau'] == null
      ? const RequestHumaneSectionAssistanceResponseModel(
          libelle: '',
          toutPetit: "",
          juniors: '',
          cadets: "",
          total: 0,
        )
      : RequestHumaneSectionAssistanceResponseModel.fromJson(
          json['assistanceNouveau'] as Map<String, dynamic>,
        ),
  assistanceInviter: json['assistanceInviter'] == null
      ? const RequestHumaneSectionAssistanceResponseModel(
          libelle: '',
          toutPetit: "",
          juniors: '',
          cadets: "",
          total: 0,
        )
      : RequestHumaneSectionAssistanceResponseModel.fromJson(
          json['assistanceInviter'] as Map<String, dynamic>,
        ),
  assistanceCellule: json['assistanceCellule'] == null
      ? const RequestAuherResponseModel(
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
        )
      : RequestAuherResponseModel.fromJson(
          json['assistanceCellule'] as Map<String, dynamic>,
        ),
  formAssistanceIsSubmit: json['formAssistanceIsSubmit'] as String? ?? 'false',
  formAssistanceSubmitDate: json['formAssistanceSubmitDate'] as String?,
  visiteMenbre:
      (json['visiteMenbre'] as List<dynamic>?)
          ?.map(
            (e) => RequestSuggestionResponseModel.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const [
        RequestSuggestionResponseModel(
          fullname: "",
          recommandation: "",
          isDisciple: false,
          probleme: "",
        ),
      ],
  visiteOuvrier:
      (json['visiteOuvrier'] as List<dynamic>?)
          ?.map(
            (e) => RequestSuggestionResponseModel.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const [
        RequestSuggestionResponseModel(
          fullname: "",
          recommandation: "",
          isDisciple: false,
          probleme: "",
        ),
      ],
  dateActivitySubmited: json['dateActivitySubmited'] as String?,
  formActivityIsSubmit: json['formActivityIsSubmit'] as String? ?? 'false',
  formActivitySubmitDate: json['formActivitySubmitDate'] as String?,
  suggestions:
      (json['suggestions'] as List<dynamic>?)
          ?.map(
            (e) => RequestHumaneSectionActivityResponseModel.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const [
        RequestHumaneSectionActivityResponseModel(
          suggestions: "",
          probleme: "",
          temoignage: "",
        ),
      ],
  weekActivity:
      (json['weekActivity'] as List<dynamic>?)
          ?.map(
            (e) =>
                WeekActivityResponseModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [
        WeekActivityResponseModel(
          date: '',
          orateur: '',
          lieu: '',
          programmeNature: '',
          theme: '',
        ),
      ],
  faisAssignaler: json['faisAssignaler'] as String?,
  ouvrierSpritualLive: json['ouvrierSpritualLive'] as String?,
  formSuggestionIsSubmit: json['formSuggestionIsSubmit'] as String? ?? 'false',
  formSuggestionSubmitDate: json['formSuggestionSubmitDate'] as String?,
  tag: json['tag'] as String? ?? 'en_cours',
);

Map<String, dynamic> _$RapportCelluleResponseModelToJson(
  _RapportCelluleResponseModel instance,
) => <String, dynamic>{
  'codeZone': instance.codeZone,
  'fullNameRespoZone': instance.fullNameRespoZone,
  'contactRespoZone': instance.contactRespoZone,
  'codeSecteur': instance.codeSecteur,
  'responsableCelluleId': instance.responsableCelluleId,
  'fullNameRespoSecteur': instance.fullNameRespoSecteur,
  'contactRespoSecteur': instance.contactRespoSecteur,
  'codeCellule': instance.codeCellule,
  'fullNameRespoCellule': instance.fullNameRespoCellule,
  'contactRespoCellule': instance.contactRespoCellule,
  'jourCellule': instance.jourCellule,
  'offrande': instance.offrande,
  'nombreBaptiser': instance.nombreBaptiser,
  'nombreNonBaptiser': instance.nombreNonBaptiser,
  'discipleCellule': instance.discipleCellule,
  'id': instance.id,
  'formAdministrationIsSubmit': instance.formAdministrationIsSubmit,
  'formAdministrationSubmitDate': instance.formAdministrationSubmitDate,
  'resumerPredication': instance.resumerPredication,
  'lieu': instance.lieu,
  'assistanceNonBaptiser': instance.assistanceNonBaptiser,
  'assistanceNouveau': instance.assistanceNouveau,
  'assistanceInviter': instance.assistanceInviter,
  'assistanceCellule': instance.assistanceCellule,
  'formAssistanceIsSubmit': instance.formAssistanceIsSubmit,
  'formAssistanceSubmitDate': instance.formAssistanceSubmitDate,
  'visiteMenbre': instance.visiteMenbre,
  'visiteOuvrier': instance.visiteOuvrier,
  'dateActivitySubmited': instance.dateActivitySubmited,
  'formActivityIsSubmit': instance.formActivityIsSubmit,
  'formActivitySubmitDate': instance.formActivitySubmitDate,
  'suggestions': instance.suggestions,
  'weekActivity': instance.weekActivity,
  'faisAssignaler': instance.faisAssignaler,
  'ouvrierSpritualLive': instance.ouvrierSpritualLive,
  'formSuggestionIsSubmit': instance.formSuggestionIsSubmit,
  'formSuggestionSubmitDate': instance.formSuggestionSubmitDate,
  'tag': instance.tag,
};

_WeekActivityResponseModel _$WeekActivityResponseModelFromJson(
  Map<String, dynamic> json,
) => _WeekActivityResponseModel(
  theme: json['theme'] as String? ?? '',
  orateur: json['orateur'] as String? ?? '',
  lieu: json['lieu'] as String? ?? '',
  date: json['date'] as String? ?? '',
  programmeNature: json['programmeNature'] as String? ?? '',
);

Map<String, dynamic> _$WeekActivityResponseModelToJson(
  _WeekActivityResponseModel instance,
) => <String, dynamic>{
  'theme': instance.theme,
  'orateur': instance.orateur,
  'lieu': instance.lieu,
  'date': instance.date,
  'programmeNature': instance.programmeNature,
};

_RequestAuherResponseModel _$RequestAuherResponseModelFromJson(
  Map<String, dynamic> json,
) => _RequestAuherResponseModel(
  libelle: json['libelle'] as String?,
  formationNewDFB: json['formationNewDFB'] as String?,
  formationNewBaptDFD: json['formationNewBaptDFD'] as String?,
  visiteMenbre: json['visiteMenbre'] as String?,
  visiteDisciple: json['visiteDisciple'] as String?,
  nbTravailleurs: json['nbTravailleurs'] as String?,
  nbEleveAndEtudiants: json['nbEleveAndEtudiants'] as String?,
  nbOuvrierEM: json['nbOuvrierEM'] as String?,
  nbOuvrierAutreDepatementDirigeantEM:
      json['nbOuvrierAutreDepatementDirigeantEM'] as String?,
  nbFormationNiveau2: json['nbFormationNiveau2'] as String?,
  ngAgendaEM: json['ngAgendaEM'] as String?,
  nbDecisionnaires: json['nbDecisionnaires'] as String?,
  id: json['id'] as String?,
  count: (json['count'] as num?)?.toInt(),
);

Map<String, dynamic> _$RequestAuherResponseModelToJson(
  _RequestAuherResponseModel instance,
) => <String, dynamic>{
  'libelle': instance.libelle,
  'formationNewDFB': instance.formationNewDFB,
  'formationNewBaptDFD': instance.formationNewBaptDFD,
  'visiteMenbre': instance.visiteMenbre,
  'visiteDisciple': instance.visiteDisciple,
  'nbTravailleurs': instance.nbTravailleurs,
  'nbEleveAndEtudiants': instance.nbEleveAndEtudiants,
  'nbOuvrierEM': instance.nbOuvrierEM,
  'nbOuvrierAutreDepatementDirigeantEM':
      instance.nbOuvrierAutreDepatementDirigeantEM,
  'nbFormationNiveau2': instance.nbFormationNiveau2,
  'ngAgendaEM': instance.ngAgendaEM,
  'nbDecisionnaires': instance.nbDecisionnaires,
  'id': instance.id,
  'count': instance.count,
};

_RequestHumaneSectionAssistanceResponseModel
_$RequestHumaneSectionAssistanceResponseModelFromJson(
  Map<String, dynamic> json,
) => _RequestHumaneSectionAssistanceResponseModel(
  libelle: json['libelle'] as String? ?? "",
  toutPetit: json['toutPetit'] as String? ?? "",
  juniors: json['juniors'] as String? ?? "",
  cadets: json['cadets'] as String? ?? "",
  total: (json['total'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$RequestHumaneSectionAssistanceResponseModelToJson(
  _RequestHumaneSectionAssistanceResponseModel instance,
) => <String, dynamic>{
  'libelle': instance.libelle,
  'toutPetit': instance.toutPetit,
  'juniors': instance.juniors,
  'cadets': instance.cadets,
  'total': instance.total,
};

_RequestHumaneSectionActivityModel _$RequestHumaneSectionActivityModelFromJson(
  Map<String, dynamic> json,
) => _RequestHumaneSectionActivityModel(
  suggestions: json['suggestions'] as String? ?? "",
  probleme: json['probleme'] as String? ?? "",
  temoignage: json['temoignage'] as String? ?? "",
);

Map<String, dynamic> _$RequestHumaneSectionActivityModelToJson(
  _RequestHumaneSectionActivityModel instance,
) => <String, dynamic>{
  'suggestions': instance.suggestions,
  'probleme': instance.probleme,
  'temoignage': instance.temoignage,
};

_RequestSuggestionResponseModel _$RequestSuggestionResponseModelFromJson(
  Map<String, dynamic> json,
) => _RequestSuggestionResponseModel(
  fullname: json['fullname'] as String? ?? "",
  recommandation: json['recommandation'] as String? ?? "",
  isDisciple: json['isDisciple'] as bool? ?? false,
  probleme: json['probleme'] as String? ?? "",
);

Map<String, dynamic> _$RequestSuggestionResponseModelToJson(
  _RequestSuggestionResponseModel instance,
) => <String, dynamic>{
  'fullname': instance.fullname,
  'recommandation': instance.recommandation,
  'isDisciple': instance.isDisciple,
  'probleme': instance.probleme,
};
