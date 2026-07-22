import 'package:freezed_annotation/freezed_annotation.dart';
part 'authen_request.freezed.dart';
part 'authen_request.g.dart';

@freezed
abstract class RequestAuthenProfile with _$RequestAuthenProfile {
  factory RequestAuthenProfile({
    required String name,
    required String dateNaissance,
    required String zoneResidence,
    required String profileImage,
    required String contact,
    required String email,
    required String nationalite,
    required String dateInscription,
    required String password,
    required bool submitProfile,
    required bool isUpdate,
    required String? deviceId,


  }) = _RequestAuthenProfile;

  factory RequestAuthenProfile.fromJson(Map<String, dynamic> json) =>
      _$RequestAuthenProfileFromJson(json);
}

@freezed
abstract class RequestAuthenSocial with _$RequestAuthenSocial {
  factory RequestAuthenSocial({
    required String statusSocial,
    required String activity,
    required String nivauEtude,
    required String matrimonial,
    required String orphelin,
    required bool submitSocial,
  }) = _RequestAuthenSocial;

  factory RequestAuthenSocial.fromJson(Map<String, dynamic> json) =>
      _$RequestAuthenSocialFromJson(json);
}

@freezed
abstract class RequestAuthenSpiritualLife with _$RequestAuthenSpiritualLife {
  factory RequestAuthenSpiritualLife({
    required String statusSpirituel,
    required String dateBaptme,
    required String cellulePriere,
    required String encadreur,
    required bool submitSpiritual,
    required String celluleCode,
    required String celluleId,
  }) = _RequestAuthenSpiritualLife;

  factory RequestAuthenSpiritualLife.fromJson(Map<String, dynamic> json) =>
      _$RequestAuthenSpiritualLifeFromJson(json);
}

@freezed
abstract class RequestAuthenEngagement with _$RequestAuthenEngagement {
  factory RequestAuthenEngagement({
    required String departement,
    required String competence,
    required String disponibiliry,
    required bool submitEngagement,
    required String endCreationDate,
  }) = _RequestAuthenEngagement;

  factory RequestAuthenEngagement.fromJson(Map<String, dynamic> json) =>
      _$RequestAuthenEngagementFromJson(json);
}

@freezed
abstract class RequestAuthenProfileUpdateKey
    with _$RequestAuthenProfileUpdateKey {
  factory RequestAuthenProfileUpdateKey({required String menberId}) =
      // menberId
      _RequestAuthenProfileUpdateKey;

  factory RequestAuthenProfileUpdateKey.fromJson(Map<String, dynamic> json) =>
      _$RequestAuthenProfileUpdateKeyFromJson(json);
}

@freezed
abstract class RequestAuthenProfileUpdateCellule
    with _$RequestAuthenProfileUpdateCellule {
  factory RequestAuthenProfileUpdateCellule({required String celluleId}) =
      // celluleId
      _RequestAuthenProfileUpdateCellule;

  factory RequestAuthenProfileUpdateCellule.fromJson(
    Map<String, dynamic> json,
  ) => _$RequestAuthenProfileUpdateCelluleFromJson(json);
}

@freezed
abstract class RequestAuthenProfileUpdateImage
    with _$RequestAuthenProfileUpdateImage {
  factory RequestAuthenProfileUpdateImage({
    required String profileImage,
    required String menberId,
    required String createAt,
  }) = _RequestAuthenProfileUpdateImage;

  factory RequestAuthenProfileUpdateImage.fromJson(Map<String, dynamic> json) =>
      _$RequestAuthenProfileUpdateImageFromJson(json);
}

@freezed
abstract class RequestAuthenSignIn with _$RequestAuthenSignIn {
  factory RequestAuthenSignIn({
    required String contact,
    required String email,
    required String password,
  }) = _RequestAuthenSignIn;

  factory RequestAuthenSignIn.fromJson(Map<String, dynamic> json) =>
      _$RequestAuthenSignInFromJson(json);
}


@freezed
abstract class RequestAuthenUpdateProfileKey with _$RequestAuthenUpdateProfileKey {
  factory RequestAuthenUpdateProfileKey({
    required String menberId,
    required String deviceId,
  }) = _RequestAuthenUpdateProfileKey;

  factory RequestAuthenUpdateProfileKey.fromJson(Map<String, dynamic> json) =>
      _$RequestAuthenUpdateProfileKeyFromJson(json);
}



