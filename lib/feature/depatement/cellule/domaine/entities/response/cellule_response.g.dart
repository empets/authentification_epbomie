// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cellule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CelluleResponse _$CelluleResponseFromJson(Map<String, dynamic> json) =>
    _CelluleResponse(
      celluleId: json['celluleId'] as String,
      celluleCode: json['celluleCode'] as String,
      nom: json['nom'] as String,
      date: json['date'] as String,
      description: json['description'] as String,
      adresse: json['adresse'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      responsableCelluleId: json['responsableCelluleId'] as String,
      responsableCellule: json['responsableCellule'] as String,
      contactResponsableCellule: json['contactResponsableCellule'] as String,
      emailResponsableCellule: json['emailResponsableCellule'] as String,
      adresseResponsableCellule: json['adresseResponsableCellule'] as String,
      secteurId: json['secteurId'] as String,
      secteurCode: json['secteurCode'] as String,
      jourCellule: json['jourCellule'] as String,
      heureCellule: json['heureCellule'] as String,
    );

Map<String, dynamic> _$CelluleResponseToJson(_CelluleResponse instance) =>
    <String, dynamic>{
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

_ReponsableCelluleResponse _$ReponsableCelluleResponseFromJson(
  Map<String, dynamic> json,
) => _ReponsableCelluleResponse(
  responsable: json['responsable'] as String,
  celluleCode: json['celluleCode'] as String,
  date: json['date'] as String,
  celluleName: json['celluleName'] as String,
  contact: json['contact'] as String,
  email: json['email'] as String,
  adresse: json['adresse'] as String,
  celluleId: json['celluleId'] as String,
  secteurId: json['secteurId'] as String,
  secteurCode: json['secteurCode'] as String,
  responsableCelluleId: json['responsableCelluleId'] as String,
);

Map<String, dynamic> _$ReponsableCelluleResponseToJson(
  _ReponsableCelluleResponse instance,
) => <String, dynamic>{
  'responsable': instance.responsable,
  'celluleCode': instance.celluleCode,
  'date': instance.date,
  'celluleName': instance.celluleName,
  'contact': instance.contact,
  'email': instance.email,
  'adresse': instance.adresse,
  'celluleId': instance.celluleId,
  'secteurId': instance.secteurId,
  'secteurCode': instance.secteurCode,
  'responsableCelluleId': instance.responsableCelluleId,
};

_DiscipleCellule _$DiscipleCelluleFromJson(Map<String, dynamic> json) =>
    _DiscipleCellule(
      fullName: json['fullName'] as String,
      isBaptierOrNot: json['isBaptierOrNot'] as String,
    );

Map<String, dynamic> _$DiscipleCelluleToJson(_DiscipleCellule instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'isBaptierOrNot': instance.isBaptierOrNot,
    };

_SecteurResponse _$SecteurResponseFromJson(Map<String, dynamic> json) =>
    _SecteurResponse(
      secteurId: json['secteurId'] as String,
      secteurCode: json['secteurCode'] as String,
      secteurName: json['secteurName'] as String,
      dateCreated: json['dateCreated'] as String,
      secteurResponsableName: json['secteurResponsableName'] as String,
      contactResponsable: json['contactResponsable'] as String,
      emailResponsableSecteur: json['emailResponsableSecteur'] as String,
      adressResponsableSecteur: json['adressResponsableSecteur'] as String,
      responsableSecteurId: json['responsableSecteurId'] as String,
      adresse: json['adresse'] as String,
      zoneId: json['zoneId'] as String,
      zoneCode: json['zoneCode'] as String,
    );

Map<String, dynamic> _$SecteurResponseToJson(_SecteurResponse instance) =>
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

_ZoneResponse _$ZoneResponseFromJson(Map<String, dynamic> json) =>
    _ZoneResponse(
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

Map<String, dynamic> _$ZoneResponseToJson(_ZoneResponse instance) =>
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

_RapportCelluleResponse _$RapportCelluleResponseFromJson(
  Map<String, dynamic> json,
) => _RapportCelluleResponse(
  codeZone: json['codeZone'] as String,
  fullNameRespoZone: json['fullNameRespoZone'] as String,
  lieu: json['lieu'] as String,
  contactRespoZone: json['contactRespoZone'] as String,
  codeSecteur: json['codeSecteur'] as String,
  responsableCelluleId: json['responsableCelluleId'] as String,
  fullNameRespoSecteur: json['fullNameRespoSecteur'] as String,
  contactRespoSecteur: json['contactRespoSecteur'] as String,
  codeCellule: json['codeCellule'] as String,
  fullNameRespoCellule: json['fullNameRespoCellule'] as String,
  contactRespoCellule: json['contactRespoCellule'] as String,
  jourCellule: json['jourCellule'] as String,
  offrande: json['offrande'] as String,
  nombreBaptiser: json['nombreBaptiser'] as String,
  nombreNonBaptiser: json['nombreNonBaptiser'] as String,
  discipleCellule: (json['discipleCellule'] as List<dynamic>)
      .map((e) => DiscipleCellule.fromJson(e as Map<String, dynamic>))
      .toList(),
  id: json['id'] as String,
  formAdministrationIsSubmit: json['formAdministrationIsSubmit'] as String,
  formAdministrationSubmitDate: json['formAdministrationSubmitDate'] as String,
  assistanceNonBaptiser: RequestHumaneSectionAssistanceResponse.fromJson(
    json['assistanceNonBaptiser'] as Map<String, dynamic>,
  ),
  assistanceNouveau: RequestHumaneSectionAssistanceResponse.fromJson(
    json['assistanceNouveau'] as Map<String, dynamic>,
  ),
  assistanceInviter: RequestHumaneSectionAssistanceResponse.fromJson(
    json['assistanceInviter'] as Map<String, dynamic>,
  ),
  assistanceCellule: RequestAuherResponse.fromJson(
    json['assistanceCellule'] as Map<String, dynamic>,
  ),
  formAssistanceIsSubmit: json['formAssistanceIsSubmit'] as String,
  formAssistanceSubmitDate: json['formAssistanceSubmitDate'] as String,
  visiteMenbre: (json['visiteMenbre'] as List<dynamic>)
      .map((e) => RequestSuggestionResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  visiteOuvrier: (json['visiteOuvrier'] as List<dynamic>)
      .map((e) => RequestSuggestionResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  weekActivity: (json['weekActivity'] as List<dynamic>)
      .map((e) => WeekActivityResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  dateActivitySubmited: json['dateActivitySubmited'] as String,
  formActivityIsSubmit: json['formActivityIsSubmit'] as String,
  formActivitySubmitDate: json['formActivitySubmitDate'] as String,
  resumerPredication: json['resumerPredication'] as String,
  suggestions: (json['suggestions'] as List<dynamic>)
      .map(
        (e) => RequestHumaneSectionActivityResponse.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
  faisAssignaler: json['faisAssignaler'] as String,
  ouvrierSpritualLive: json['ouvrierSpritualLive'] as String,
  formSuggestionIsSubmit: json['formSuggestionIsSubmit'] as String,
  formSuggestionSubmitDate: json['formSuggestionSubmitDate'] as String,
  tag: json['tag'] as String,
);

Map<String, dynamic> _$RapportCelluleResponseToJson(
  _RapportCelluleResponse instance,
) => <String, dynamic>{
  'codeZone': instance.codeZone,
  'fullNameRespoZone': instance.fullNameRespoZone,
  'lieu': instance.lieu,
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
  'assistanceNonBaptiser': instance.assistanceNonBaptiser,
  'assistanceNouveau': instance.assistanceNouveau,
  'assistanceInviter': instance.assistanceInviter,
  'assistanceCellule': instance.assistanceCellule,
  'formAssistanceIsSubmit': instance.formAssistanceIsSubmit,
  'formAssistanceSubmitDate': instance.formAssistanceSubmitDate,
  'visiteMenbre': instance.visiteMenbre,
  'visiteOuvrier': instance.visiteOuvrier,
  'weekActivity': instance.weekActivity,
  'dateActivitySubmited': instance.dateActivitySubmited,
  'formActivityIsSubmit': instance.formActivityIsSubmit,
  'formActivitySubmitDate': instance.formActivitySubmitDate,
  'resumerPredication': instance.resumerPredication,
  'suggestions': instance.suggestions,
  'faisAssignaler': instance.faisAssignaler,
  'ouvrierSpritualLive': instance.ouvrierSpritualLive,
  'formSuggestionIsSubmit': instance.formSuggestionIsSubmit,
  'formSuggestionSubmitDate': instance.formSuggestionSubmitDate,
  'tag': instance.tag,
};

_RequestAuherResponse _$RequestAuherResponseFromJson(
  Map<String, dynamic> json,
) => _RequestAuherResponse(
  libelle: json['libelle'] as String,
  formationNewDFB: json['formationNewDFB'] as String,
  formationNewBaptDFD: json['formationNewBaptDFD'] as String,
  visiteMenbre: json['visiteMenbre'] as String,
  visiteDisciple: json['visiteDisciple'] as String,
  nbTravailleurs: json['nbTravailleurs'] as String,
  nbEleveAndEtudiants: json['nbEleveAndEtudiants'] as String,
  nbOuvrierEM: json['nbOuvrierEM'] as String,
  nbOuvrierAutreDepatementDirigeantEM:
      json['nbOuvrierAutreDepatementDirigeantEM'] as String,
  nbFormationNiveau2: json['nbFormationNiveau2'] as String,
  ngAgendaEM: json['ngAgendaEM'] as String,
  nbDecisionnaires: json['nbDecisionnaires'] as String,
  id: json['id'] as String,
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$RequestAuherResponseToJson(
  _RequestAuherResponse instance,
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

_RequestHumaneSectionAssistanceResponse
_$RequestHumaneSectionAssistanceResponseFromJson(Map<String, dynamic> json) =>
    _RequestHumaneSectionAssistanceResponse(
      libelle: json['libelle'] as String,
      toutPetit: json['toutPetit'] as String,
      juniors: json['juniors'] as String,
      cadets: json['cadets'] as String,
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$RequestHumaneSectionAssistanceResponseToJson(
  _RequestHumaneSectionAssistanceResponse instance,
) => <String, dynamic>{
  'libelle': instance.libelle,
  'toutPetit': instance.toutPetit,
  'juniors': instance.juniors,
  'cadets': instance.cadets,
  'total': instance.total,
};

_RequestHumaneSectionActivityResponse
_$RequestHumaneSectionActivityResponseFromJson(Map<String, dynamic> json) =>
    _RequestHumaneSectionActivityResponse(
      suggestions: json['suggestions'] as String,
      probleme: json['probleme'] as String,
      temoignage: json['temoignage'] as String,
    );

Map<String, dynamic> _$RequestHumaneSectionActivityResponseToJson(
  _RequestHumaneSectionActivityResponse instance,
) => <String, dynamic>{
  'suggestions': instance.suggestions,
  'probleme': instance.probleme,
  'temoignage': instance.temoignage,
};

_RequestSuggestionResponse _$RequestSuggestionResponseFromJson(
  Map<String, dynamic> json,
) => _RequestSuggestionResponse(
  fullname: json['fullname'] as String,
  recommandation: json['recommandation'] as String,
  isDisciple: json['isDisciple'] as bool,
  probleme: json['probleme'] as String,
);

Map<String, dynamic> _$RequestSuggestionResponseToJson(
  _RequestSuggestionResponse instance,
) => <String, dynamic>{
  'fullname': instance.fullname,
  'recommandation': instance.recommandation,
  'isDisciple': instance.isDisciple,
  'probleme': instance.probleme,
};

_WeekActivityResponse _$WeekActivityResponseFromJson(
  Map<String, dynamic> json,
) => _WeekActivityResponse(
  theme: json['theme'] as String,
  orateur: json['orateur'] as String,
  lieu: json['lieu'] as String,
  date: json['date'] as String,
  programmeNature: json['programmeNature'] as String,
);

Map<String, dynamic> _$WeekActivityResponseToJson(
  _WeekActivityResponse instance,
) => <String, dynamic>{
  'theme': instance.theme,
  'orateur': instance.orateur,
  'lieu': instance.lieu,
  'date': instance.date,
  'programmeNature': instance.programmeNature,
};

_VisiteDisciple _$VisiteDiscipleFromJson(Map<String, dynamic> json) =>
    _VisiteDisciple(
      fullname: json['fullname'] as String,
      isDisciple: json['isDisciple'] as bool? ?? false,
      probleme: json['probleme'] as String,
      recommandation: json['recommandation'] as String,
    );

Map<String, dynamic> _$VisiteDiscipleToJson(_VisiteDisciple instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'isDisciple': instance.isDisciple,
      'probleme': instance.probleme,
      'recommandation': instance.recommandation,
    };

_WeekActivity _$WeekActivityFromJson(Map<String, dynamic> json) =>
    _WeekActivity(
      theme: json['theme'] as String,
      orateur: json['orateur'] as String,
      lieu: json['lieu'] as String,
      date: json['date'] as String,
      programmeNature: json['programmeNature'] as String,
    );

Map<String, dynamic> _$WeekActivityToJson(_WeekActivity instance) =>
    <String, dynamic>{
      'theme': instance.theme,
      'orateur': instance.orateur,
      'lieu': instance.lieu,
      'date': instance.date,
      'programmeNature': instance.programmeNature,
    };

_RapportSuggestion _$RapportSuggestionFromJson(Map<String, dynamic> json) =>
    _RapportSuggestion(
      temoignage: json['temoignage'] as String,
      suggestions: json['suggestions'] as String,
      probleme: json['probleme'] as String,
    );

Map<String, dynamic> _$RapportSuggestionToJson(_RapportSuggestion instance) =>
    <String, dynamic>{
      'temoignage': instance.temoignage,
      'suggestions': instance.suggestions,
      'probleme': instance.probleme,
    };
