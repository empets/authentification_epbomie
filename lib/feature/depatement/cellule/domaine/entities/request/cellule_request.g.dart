// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cellule_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestCellule _$RequestCelluleFromJson(Map<String, dynamic> json) =>
    _RequestCellule(
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

Map<String, dynamic> _$RequestCelluleToJson(_RequestCellule instance) =>
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

_RequestReponsableCellule _$RequestReponsableCelluleFromJson(
  Map<String, dynamic> json,
) => _RequestReponsableCellule(
  celluleResponsableName: json['celluleResponsableName'] as String?,
  reponsableId: json['reponsableId'] as String?,
  celluleCode: json['celluleCode'] as String?,
  date: json['date'] as String?,
  celluleName: json['celluleName'] as String?,
  contact: json['contact'] as String?,
  email: json['email'] as String?,
  adresse: json['adresse'] as String?,
  celluleId: json['celluleId'] as String?,
  secteurId: json['secteurId'] as String?,
  secteurCode: json['secteurCode'] as String?,
);

Map<String, dynamic> _$RequestReponsableCelluleToJson(
  _RequestReponsableCellule instance,
) => <String, dynamic>{
  'celluleResponsableName': instance.celluleResponsableName,
  'reponsableId': instance.reponsableId,
  'celluleCode': instance.celluleCode,
  'date': instance.date,
  'celluleName': instance.celluleName,
  'contact': instance.contact,
  'email': instance.email,
  'adresse': instance.adresse,
  'celluleId': instance.celluleId,
  'secteurId': instance.secteurId,
  'secteurCode': instance.secteurCode,
};

_RequestSecteur _$RequestSecteurFromJson(Map<String, dynamic> json) =>
    _RequestSecteur(
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

Map<String, dynamic> _$RequestSecteurToJson(_RequestSecteur instance) =>
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

_RequestZone _$RequestZoneFromJson(Map<String, dynamic> json) => _RequestZone(
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

Map<String, dynamic> _$RequestZoneToJson(_RequestZone instance) =>
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

_RequestRapportCelluleAdministration
_$RequestRapportCelluleAdministrationFromJson(Map<String, dynamic> json) =>
    _RequestRapportCelluleAdministration(
      codeZone: json['codeZone'] as String,
      fullNameRespoZone: json['fullNameRespoZone'] as String,
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
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      id: json['id'] as String,
      formAdministrationIsSubmit:
          json['formAdministrationIsSubmit'] as String? ?? 'false',
      formAdministrationSubmitDate:
          json['formAdministrationSubmitDate'] as String,
      tag: json['tag'] as String,
    );

Map<String, dynamic> _$RequestRapportCelluleAdministrationToJson(
  _RequestRapportCelluleAdministration instance,
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
  'tag': instance.tag,
};

_RequestAuthenProfileUpdateZone _$RequestAuthenProfileUpdateZoneFromJson(
  Map<String, dynamic> json,
) => _RequestAuthenProfileUpdateZone(
  noticationId: json['noticationId'] as String,
);

Map<String, dynamic> _$RequestAuthenProfileUpdateZoneToJson(
  _RequestAuthenProfileUpdateZone instance,
) => <String, dynamic>{'noticationId': instance.noticationId};

_RequestGeneriqueKey<T> _$RequestGeneriqueKeyFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _RequestGeneriqueKey<T>(id: fromJsonT(json['id']));

Map<String, dynamic> _$RequestGeneriqueKeyToJson<T>(
  _RequestGeneriqueKey<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{'id': toJsonT(instance.id)};

_RequestImpliciteConnexion _$RequestImpliciteConnexionFromJson(
  Map<String, dynamic> json,
) => _RequestImpliciteConnexion(deviceId: json['deviceId'] as String);

Map<String, dynamic> _$RequestImpliciteConnexionToJson(
  _RequestImpliciteConnexion instance,
) => <String, dynamic>{'deviceId': instance.deviceId};

_RequestItemSection _$RequestItemSectionFromJson(Map<String, dynamic> json) =>
    _RequestItemSection(
      name: json['name'] as String,
      count: (json['count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$RequestItemSectionToJson(_RequestItemSection instance) =>
    <String, dynamic>{'name': instance.name, 'count': instance.count};

_RequestSection _$RequestSectionFromJson(Map<String, dynamic> json) =>
    _RequestSection(
      title: json['title'] as String,
      items:
          (json['items'] as List<dynamic>?)
              ?.map(
                (e) => RequestItemSection.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$RequestSectionToJson(_RequestSection instance) =>
    <String, dynamic>{'title': instance.title, 'items': instance.items};

_RequestHumaneSectionAssistance _$RequestHumaneSectionAssistanceFromJson(
  Map<String, dynamic> json,
) => _RequestHumaneSectionAssistance(
  libelle: json['libelle'] as String? ?? "",
  toutPetit: json['toutPetit'] as String? ?? "",
  juniors: json['juniors'] as String? ?? "",
  cadets: json['cadets'] as String? ?? "",
  total: (json['total'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$RequestHumaneSectionAssistanceToJson(
  _RequestHumaneSectionAssistance instance,
) => <String, dynamic>{
  'libelle': instance.libelle,
  'toutPetit': instance.toutPetit,
  'juniors': instance.juniors,
  'cadets': instance.cadets,
  'total': instance.total,
};

_RequestAuherInformation _$RequestAuherInformationFromJson(
  Map<String, dynamic> json,
) => _RequestAuherInformation(
  libelle: json['libelle'] as String? ?? "",
  formationNewDFB: json['formationNewDFB'] as String? ?? "",
  formationNewBaptDFD: json['formationNewBaptDFD'] as String? ?? "",
  visiteMenbre: json['visiteMenbre'] as String? ?? "",
  visiteDisciple: json['visiteDisciple'] as String? ?? "",
  nbTravailleurs: json['nbTravailleurs'] as String? ?? "",
  nbEleveAndEtudiants: json['nbEleveAndEtudiants'] as String? ?? "",
  nbOuvrierEM: json['nbOuvrierEM'] as String? ?? "",
  nbOuvrierAutreDepatementDirigeantEM:
      json['nbOuvrierAutreDepatementDirigeantEM'] as String? ?? "",
  nbFormationNiveau2: json['nbFormationNiveau2'] as String? ?? "",
  ngAgendaEM: json['ngAgendaEM'] as String? ?? "",
  nbDecisionnaires: json['nbDecisionnaires'] as String? ?? "",
  id: json['id'] as String? ?? "",
  count: (json['count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$RequestAuherInformationToJson(
  _RequestAuherInformation instance,
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

_RequestAutherInformationSource _$RequestAutherInformationSourceFromJson(
  Map<String, dynamic> json,
) => _RequestAutherInformationSource(
  title: json['title'] as String,
  sections: (json['sections'] as List<dynamic>)
      .map((e) => RequestAuherInformation.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RequestAutherInformationSourceToJson(
  _RequestAutherInformationSource instance,
) => <String, dynamic>{'title': instance.title, 'sections': instance.sections};

_RequestRapportCelluleAssistance _$RequestRapportCelluleAssistanceFromJson(
  Map<String, dynamic> json,
) => _RequestRapportCelluleAssistance(
  nombreBaptiser: json['nombreBaptiser'] as String,
  assistanceNonBaptiser: json['assistanceNonBaptiser'] as Map<String, dynamic>,
  assistanceNouveau: json['assistanceNouveau'] as Map<String, dynamic>,
  assistanceInviter: json['assistanceInviter'] as Map<String, dynamic>,
  assistanceCellule: json['assistanceCellule'] as Map<String, dynamic>,
  id: json['id'] as String,
  formAssistanceIsSubmit: json['formAssistanceIsSubmit'] as String? ?? 'false',
  formAssistanceSubmitDate: json['formAssistanceSubmitDate'] as String,
  tag: json['tag'] as String,
);

Map<String, dynamic> _$RequestRapportCelluleAssistanceToJson(
  _RequestRapportCelluleAssistance instance,
) => <String, dynamic>{
  'nombreBaptiser': instance.nombreBaptiser,
  'assistanceNonBaptiser': instance.assistanceNonBaptiser,
  'assistanceNouveau': instance.assistanceNouveau,
  'assistanceInviter': instance.assistanceInviter,
  'assistanceCellule': instance.assistanceCellule,
  'id': instance.id,
  'formAssistanceIsSubmit': instance.formAssistanceIsSubmit,
  'formAssistanceSubmitDate': instance.formAssistanceSubmitDate,
  'tag': instance.tag,
};

_RequestRapportCelluleActivity _$RequestRapportCelluleActivityFromJson(
  Map<String, dynamic> json,
) => _RequestRapportCelluleActivity(
  visiteMenbre: (json['visiteMenbre'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  visiteOuvrier: (json['visiteOuvrier'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  dateActivitySubmited: (json['dateActivitySubmited'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  weekActivity: (json['weekActivity'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  formActivityIsSubmit: json['formActivityIsSubmit'] as String? ?? 'false',
  formActivitySubmitDate: json['formActivitySubmitDate'] as String,
  tag: json['tag'] as String,
  id: json['id'] as String,
);

Map<String, dynamic> _$RequestRapportCelluleActivityToJson(
  _RequestRapportCelluleActivity instance,
) => <String, dynamic>{
  'visiteMenbre': instance.visiteMenbre,
  'visiteOuvrier': instance.visiteOuvrier,
  'dateActivitySubmited': instance.dateActivitySubmited,
  'weekActivity': instance.weekActivity,
  'formActivityIsSubmit': instance.formActivityIsSubmit,
  'formActivitySubmitDate': instance.formActivitySubmitDate,
  'tag': instance.tag,
  'id': instance.id,
};

_RequestRapportCelluleSuggestion _$RequestRapportCelluleSuggestionFromJson(
  Map<String, dynamic> json,
) => _RequestRapportCelluleSuggestion(
  suggestions: (json['suggestions'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  faisAssignaler: json['faisAssignaler'] as String,
  ouvrierSpritualLive: json['ouvrierSpritualLive'] as String,
  formSuggestionIsSubmit: json['formSuggestionIsSubmit'] as String? ?? 'false',
  formSuggestionSubmitDate: json['formSuggestionSubmitDate'] as String,
  resumerPredication: json['resumerPredication'] as String,
  tag: json['tag'] as String,
  id: json['id'] as String,
);

Map<String, dynamic> _$RequestRapportCelluleSuggestionToJson(
  _RequestRapportCelluleSuggestion instance,
) => <String, dynamic>{
  'suggestions': instance.suggestions,
  'faisAssignaler': instance.faisAssignaler,
  'ouvrierSpritualLive': instance.ouvrierSpritualLive,
  'formSuggestionIsSubmit': instance.formSuggestionIsSubmit,
  'formSuggestionSubmitDate': instance.formSuggestionSubmitDate,
  'resumerPredication': instance.resumerPredication,
  'tag': instance.tag,
  'id': instance.id,
};

_RequestRapportCellule _$RequestRapportCelluleFromJson(
  Map<String, dynamic> json,
) => _RequestRapportCellule(
  responsableCelluleId: json['responsableCelluleId'] as String,
  date: json['date'] as String,
  tag: json['tag'] as String,
);

Map<String, dynamic> _$RequestRapportCelluleToJson(
  _RequestRapportCellule instance,
) => <String, dynamic>{
  'responsableCelluleId': instance.responsableCelluleId,
  'date': instance.date,
  'tag': instance.tag,
};
