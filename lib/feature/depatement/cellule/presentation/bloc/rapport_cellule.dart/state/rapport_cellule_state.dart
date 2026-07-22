

import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/response/cellule_response.dart';


part 'rapport_cellule_state.freezed.dart';

@freezed
abstract class RapportCelluleRequestSectionAdministrationState with _$RapportCelluleRequestSectionAdministrationState {
  const factory RapportCelluleRequestSectionAdministrationState({
    // Zone
    required TextFormz codeZone,
    required TextFormz fullNameRespoZone,
    required TextFormz contactRespoZone,
    required TextFormz reponsableCelluleId,

    // Secteur
    required TextFormz codeSecteur,
    required TextFormz fullNameRespoSecteur,
    required TextFormz contactRespoSecteur,

    // Cellule
    required TextFormz codeCellule,
    required TextFormz fullNameRespoCellule,
    required TextFormz contactRespoCellule,

    // Infos cellule
    required TextFormz jourCellule,
    required TextFormz offrande,

    // Statistiques
    required TextFormz nombreBaptiser,
    required TextFormz nombreNonBaptiser,
    required TextFormz lieu,

    // Liste disciples
     required List<DiscipleCellule> discipleCelluleList,
      required FormzSubmissionStatus status,
    required String errorMessage,
    required bool isValide,
  }) = _RapportCelluleRequestSectionAdministrationState;
  
  factory RapportCelluleRequestSectionAdministrationState.initial() => const RapportCelluleRequestSectionAdministrationState(
    codeZone: TextFormz.pure(),
    fullNameRespoZone: TextFormz.pure(),
    contactRespoZone: TextFormz.pure(),
    reponsableCelluleId: TextFormz.pure(),
    codeSecteur: TextFormz.pure(),
    fullNameRespoSecteur: TextFormz.pure(),
    contactRespoSecteur: TextFormz.pure(),
    codeCellule: TextFormz.pure(),
    fullNameRespoCellule: TextFormz.pure(),
    contactRespoCellule: TextFormz.pure(),
    jourCellule: TextFormz.pure(),
    offrande: TextFormz.pure(),
    nombreBaptiser: TextFormz.pure(),
    nombreNonBaptiser: TextFormz.pure(),
    lieu: TextFormz.pure(),
    discipleCelluleList: [],
    status: FormzSubmissionStatus.initial,
    errorMessage: '',
    isValide: false,
  );
}




@freezed
abstract class RapportCelluleRequestSectionAssistanceState
    with _$RapportCelluleRequestSectionAssistanceState {
  const factory RapportCelluleRequestSectionAssistanceState({
    required TextFormz nombreBaptiser,
    required TextFormz id,
    required RequestHumaneSectionAssistance nonBaptiserStatic,
    required RequestHumaneSectionAssistance nouveauBaptiser,
    required RequestHumaneSectionAssistance inviter,
    required String formation,
    required String sectionVisite,
    required String sectionActivite,
   required String sectionOuvrier,
   required String autres,

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
    required FormzSubmissionStatus status,
    required String errorMessage,
    required bool isValide,
  }) = _RapportCelluleRequestSectionAssistanceState;






  factory RapportCelluleRequestSectionAssistanceState.initial() => RapportCelluleRequestSectionAssistanceState(
    nombreBaptiser: TextFormz.pure(),
    id: TextFormz.pure(),
    nonBaptiserStatic: RequestHumaneSectionAssistance(),
    nouveauBaptiser: RequestHumaneSectionAssistance(),
    inviter: RequestHumaneSectionAssistance(),
    formation: '',
    sectionVisite: '',
    sectionActivite: '',
    sectionOuvrier: '',
    autres: '',
    status: FormzSubmissionStatus.initial,
    errorMessage: '',
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
    isValide: false,
  );
}




@freezed
abstract class RapportCelluleRequestActivityState with _$RapportCelluleRequestActivityState {
  const factory RapportCelluleRequestActivityState({
      required TextFormz id,
     required List<VisiteDisciple> discipleVisiteList,
     required List<VisiteDisciple> discipleMenbreList,
     required List<WeekActivity> activity,
      required FormzSubmissionStatus status,
    required String errorMessage,
    required bool isValide,
  }) = _RapportCelluleRequestActivityState;
  
  factory RapportCelluleRequestActivityState.initial() => const RapportCelluleRequestActivityState(
    id: TextFormz.pure(),
    discipleVisiteList: [],
    discipleMenbreList: [],
    activity: [],
    status: FormzSubmissionStatus.initial,
    errorMessage: '',
    isValide: false,
  );
}


@freezed
abstract class RapportCelluleRequestSuggestionState with _$RapportCelluleRequestSuggestionState {
  const factory RapportCelluleRequestSuggestionState({
      required TextFormz faisAssignaler,
      required TextFormz ouvrierSpritualLive,
      required TextFormz resumerPredication,
      required TextFormz id,
     required List<RapportSuggestion> suggestions,
      required FormzSubmissionStatus status,
    required String errorMessage,
    required bool isValide,
  }) = _RapportCelluleRequestSuggestionState;
  
  factory RapportCelluleRequestSuggestionState.initial() => const RapportCelluleRequestSuggestionState(
    faisAssignaler: TextFormz.pure(),
    ouvrierSpritualLive: TextFormz.pure(),
    resumerPredication: TextFormz.pure(),
    id: TextFormz.pure(),
    suggestions: [],
    status: FormzSubmissionStatus.initial,
    errorMessage: '',
    isValide: false,
  );
}