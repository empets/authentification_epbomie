// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    _ProfileResponse(
      name: json['name'] as String,
      dateNaissance: json['dateNaissance'] as String,
      zoneResidence: json['zoneResidence'] as String,
      profileImage: json['profileImage'] as String,
      contact: json['contact'] as String,
      email: json['email'] as String,
      nationalite: json['nationalite'] as String,
      dateInscription: json['dateInscription'] as String,
      statusSocial: json['statusSocial'] as String,
      activity: json['activity'] as String,
      nivauEtude: json['nivauEtude'] as String,
      matrimonial: json['matrimonial'] as String,
      orphelin: json['orphelin'] as String,
      statusSpirituel: json['statusSpirituel'] as String,
      dateBaptme: json['dateBaptme'] as String,
      cellulePriere: json['cellulePriere'] as String,
      encadreur: json['encadreur'] as String,
      departement: json['departement'] as String,
      competence: json['competence'] as String,
      disponibiliry: json['disponibiliry'] as String,
      menberId: json['menberId'] as String,
      submitProfile: json['submitProfile'] as bool,
      submitSocial: json['submitSocial'] as bool,
      submitSpiritual: json['submitSpiritual'] as bool,
      submitEngagement: json['submitEngagement'] as bool,
      celluleCode: json['celluleCode'] as String,
      celluleId: json['celluleId'] as String,
      deviceId: json['deviceId'] as String,
      ministere: json['ministere'] as String,
      dateConversion: json['dateConversion'] as String,
      commune: json['commune'] as String,
      region: json['region'] as String,
      groupeSanguin: json['groupeSanguin'] as String,
      fonction: json['fonction'] as String,
    );

Map<String, dynamic> _$ProfileResponseToJson(_ProfileResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dateNaissance': instance.dateNaissance,
      'zoneResidence': instance.zoneResidence,
      'profileImage': instance.profileImage,
      'contact': instance.contact,
      'email': instance.email,
      'nationalite': instance.nationalite,
      'dateInscription': instance.dateInscription,
      'statusSocial': instance.statusSocial,
      'activity': instance.activity,
      'nivauEtude': instance.nivauEtude,
      'matrimonial': instance.matrimonial,
      'orphelin': instance.orphelin,
      'statusSpirituel': instance.statusSpirituel,
      'dateBaptme': instance.dateBaptme,
      'cellulePriere': instance.cellulePriere,
      'encadreur': instance.encadreur,
      'departement': instance.departement,
      'competence': instance.competence,
      'disponibiliry': instance.disponibiliry,
      'menberId': instance.menberId,
      'submitProfile': instance.submitProfile,
      'submitSocial': instance.submitSocial,
      'submitSpiritual': instance.submitSpiritual,
      'submitEngagement': instance.submitEngagement,
      'celluleCode': instance.celluleCode,
      'celluleId': instance.celluleId,
      'deviceId': instance.deviceId,
      'ministere': instance.ministere,
      'dateConversion': instance.dateConversion,
      'commune': instance.commune,
      'region': instance.region,
      'groupeSanguin': instance.groupeSanguin,
      'fonction': instance.fonction,
    };

_PresenceResponse _$PresenceResponseFromJson(Map<String, dynamic> json) =>
    _PresenceResponse(
      id: json['id'] as String,
      totalEnfant: (json['totalEnfant'] as num).toInt(),
      totalFemme: (json['totalFemme'] as num).toInt(),
      totalHomme: (json['totalHomme'] as num).toInt(),
      commentaire: json['commentaire'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
    );

Map<String, dynamic> _$PresenceResponseToJson(_PresenceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'totalEnfant': instance.totalEnfant,
      'totalFemme': instance.totalFemme,
      'totalHomme': instance.totalHomme,
      'commentaire': instance.commentaire,
      'date': instance.date,
      'time': instance.time,
    };

_GuestResponse _$GuestResponseFromJson(Map<String, dynamic> json) =>
    _GuestResponse(
      id: json['id'] as String,
      contact: (json['contact'] as num).toInt(),
      name: (json['name'] as num).toInt(),
      secondContact: (json['secondContact'] as num).toInt(),
      date: json['date'] as String,
    );

Map<String, dynamic> _$GuestResponseToJson(_GuestResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact': instance.contact,
      'name': instance.name,
      'secondContact': instance.secondContact,
      'date': instance.date,
    };
