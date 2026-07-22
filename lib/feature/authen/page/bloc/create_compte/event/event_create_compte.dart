import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_create_compte.freezed.dart';

@freezed
class EventCreateCompteProfile with _$EventCreateCompteProfile {
  factory EventCreateCompteProfile.changeName(String name) =
      ChangeNameEventCreateCompteProfile;
  factory EventCreateCompteProfile.changeDateNaissance(String dateNaissance) =
      ChangeDateNaissanceEventCreateCompteProfile;
  factory EventCreateCompteProfile.changeZoneResidence(String zoneResidence) =
      ChangeZoneResidenceCreateCompteProfile;
  factory EventCreateCompteProfile.changeProfileImage(String profileImage) =
      ChangeProfileImageCreateCompteProfile;

  factory EventCreateCompteProfile.changeResponsableCelluleId(
          {required String responsableCelluleId}) =
      ChangeResponsableCelluleIdCreateCompteProfile;

  factory EventCreateCompteProfile.changeContact(String contact) =
      ChangeContactCreateCompteProfile;

  factory EventCreateCompteProfile.changePassword(String password) =
      ChangePasswordCreateCompteProfile;

  factory EventCreateCompteProfile.changeIsUpdate(bool isUpdate) =
      ChangeIsUpdateCreateCompteProfile;

  factory EventCreateCompteProfile.changeEmail(String email) =
      ChangeEmailCreateCompteProfile;
  factory EventCreateCompteProfile.changeNationalite(String nationalite) =
      ChangeNationaliteCreateCompteProfile;
  factory EventCreateCompteProfile.submit() = ChangeSubmitCreateCompte;
}

@freezed
class EventCreateCompteSocialSocial with _$EventCreateCompteSocialSocial {
  factory EventCreateCompteSocialSocial.changeStatusSocial(
    String statusSocial,
  ) = ChangeStatusSocialCreateCompteSocial;
  factory EventCreateCompteSocialSocial.changeActivity(String activity) =
      ChangeActivityCreateCompteSocial;
  factory EventCreateCompteSocialSocial.changeNivauEtude(String nivauEtude) =
      ChangeNivauEtudeEventCreateCompteSocial;
  factory EventCreateCompteSocialSocial.changeMatrimonial(String matrimonial) =
      ChangeMatrimonialCreateCompte;
  factory EventCreateCompteSocialSocial.changeOrphelin(String orphelin) =
      ChangeOrphelinCreateCompte;
  factory EventCreateCompteSocialSocial.submit() =
      SubmitEventCreateCompteSocial;
}

@freezed
class EventCreateCompteSpiritualLife with _$EventCreateCompteSpiritualLife {
  factory EventCreateCompteSpiritualLife.changeStatusSpirituel(
    String statusSpirituel,
  ) = ChangeStatusSpirituelCreateCompteSocial;
  factory EventCreateCompteSpiritualLife.changeDateBaptme(String dateBaptme) =
      ChangeDateBaptmeEtudeEventCreateCompteSpiritualLife;
  factory EventCreateCompteSpiritualLife.changeCellulePriere(
    String cellulePriere,
  ) = CellulePriereEventCreateCompteSpiritualLife;
  factory EventCreateCompteSpiritualLife.changeEncadreur(String encadreur) =
      EncadreurEventCreateCompteSpiritualLife;
  factory EventCreateCompteSpiritualLife.changeCelluleCode(String celluleCode) =
      CelluleCodeEventCreateCompteSpiritualLife;
  factory EventCreateCompteSpiritualLife.changeCelluleId(String celluleId) =
      CelluleIdEventCreateCompteSpiritualLife;

  factory EventCreateCompteSpiritualLife.submit() =
      SubmitEventCreateCompteSpiritualLife;
}

@freezed
class EventCreateCompteEngagment with _$EventCreateCompteEngagment {
  factory EventCreateCompteEngagment.changeDepartement(String departement) =
      ChangeDepartementCreateCompteSocial;
  factory EventCreateCompteEngagment.changeCompetence(String competence) =
      ChangeCompetenceEtudeEventCreateCompteEngagment;
  factory EventCreateCompteEngagment.changeDisponibiliry(String disponibiliry) =
      DisponibiliryEventCreateCompteEngagment;

  factory EventCreateCompteEngagment.submit() =
      SubmitEventCreateCompteEngagment;
}
