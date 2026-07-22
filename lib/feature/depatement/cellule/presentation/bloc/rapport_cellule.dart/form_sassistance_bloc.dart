
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/core/extension/extention.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/usecase/rapport_cellule_stat_usercase.dart';
import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/event/rapport_cellule_event.dart';
import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/state/rapport_cellule_state.dart';

class RapportCelluleSectionAssistanceBloc
    extends
        Bloc<
          RapportCelluleRequestSectionAssistanceEvent,
          RapportCelluleRequestSectionAssistanceState
        > {
  RapportCelluleSectionAssistanceBloc({
    required this.sendRapportCelluleStepStatUsercase,
  }) : super(RapportCelluleRequestSectionAssistanceState.initial()) {
    on<RapportCelluleRequestSectionAssistanceEvent>(_onEvent);
  }

  final SendRapportCelluleStepStatUsercase sendRapportCelluleStepStatUsercase;

  Future<void> _onEvent(
    RapportCelluleRequestSectionAssistanceEvent event,
    Emitter<RapportCelluleRequestSectionAssistanceState> emit,
  ) async {
    switch (event) {
      // =========================
      // 🔢 NOMBRE BAPTISER
      // =========================
      case ChangeNombreBaptiserRapportCelluleRequestSectionAssistanceEvent(
        :final nombreBaptiser,
      ):
        final updated = state.copyWith(
          nombreBaptiser: TextFormz.dirty(nombreBaptiser),
          status: FormzSubmissionStatus.initial,
        );
        emit(updated.copyWith(isValide: _validate(updated)));
        break;

      case RapportCelluleRequestSectionAssistanceEventUpdateSectionId(
        :final id,
      ):
        final updated = state.copyWith(
          id: TextFormz.dirty(id),
          status: FormzSubmissionStatus.initial,
        );
        emit(updated.copyWith(isValide: _validate(updated)));
        break;

      // =========================
      // 🧩 SECTIONS ASSISTANCE
      // =========================
      case ChangeNomBaptiserStaticRapportCelluleRequestSectionAssistanceEvent(
        :final nonBaptiserStatic,
      ):

        // ignore: dead_code
        final noonBaptiser = state.copyWith(nonBaptiserStatic: nonBaptiserStatic);

        // Vérification des erreurs
        if (nonBaptiserStatic
              .toutPetit.trim().isEmpty ||
              nonBaptiserStatic.cadets.trim().isEmpty ||
              nonBaptiserStatic.juniors.trim().isEmpty
        ) {
          emit(
            noonBaptiser.copyWith(
              errorMessage: "Ce champ est obligatoire",
              isValide: false,
            ),
          );
          return;
        }

        // Si pas d'erreur → validation normale
        emit(
          noonBaptiser.copyWith(
            errorMessage: "",
            isValide: _validate(noonBaptiser),
          ),
        );

        break;

      case ChangeNoveauBaptiserRapportCelluleRequestSectionAssistanceEvent(
        :final nouveauBaptiserStat,
      ):

        // ignore: dead_code
        final nonBaptiser = state.copyWith(
          nouveauBaptiser: nouveauBaptiserStat,
        );

        // Vérification des erreurs
        if (nouveauBaptiserStat.toutPetit.trim().isEmpty ||
            nouveauBaptiserStat.cadets.trim().isEmpty ||
            nouveauBaptiserStat.juniors.trim().isEmpty) {
          emit(
            nonBaptiser.copyWith(
              errorMessage: "Ce champ est obligatoire",
              isValide: false,
            ),
          );
          return;
        }

        // Si pas d'erreur → validation normale
        emit(
          nonBaptiser.copyWith(
            errorMessage: "",
            isValide: _validate(nonBaptiser),
          ),
        );

        break;

      case ChangeInviterRapportCelluleRequestSectionAssistanceEvent(
        :final inviterStat,
      ):

        // ignore: dead_code
        final inviter = state.copyWith(inviter: inviterStat);

        // Vérification des erreurs
        if (inviterStat.toutPetit.trim().isEmpty ||
            inviterStat.cadets.trim().isEmpty ||
            inviterStat.juniors.trim().isEmpty) {
          emit(
            inviter.copyWith(
              errorMessage: "Ce champ est obligatoire",
              isValide: false,
            ),
          );
          return;
        }

        // Si pas d'erreur → validation normale
        emit(inviter.copyWith(errorMessage: "", isValide: _validate(inviter)));

        break;


  case FormationNewDFBRapportCelluleRequestSectionAssistanceEvent(
    :final formationNewDFB,
  ):
    final newState = state.copyWith(formationNewDFB: formationNewDFB);

    if (formationNewDFB.isEmpty) {
      emit(newState.copyWith(
        errorMessage: "Ce champ est obligatoire",
        isValide: false,
      ));
      return;
    }

    emit(newState.copyWith(
      errorMessage: "",
      isValide: _validate(newState),
    ));
    break;

  case FormationNewBaptDFDRapportCelluleRequestSectionAssistanceEvent(
    :final formationNewBaptDFD,
  ):
    final newState = state.copyWith(formationNewBaptDFD: formationNewBaptDFD);

    if (formationNewBaptDFD.isEmpty) {
      emit(newState.copyWith(
        errorMessage: "Ce champ est obligatoire",
        isValide: false,
      ));
      return;
    }

    emit(newState.copyWith(
      errorMessage: "",
      isValide: _validate(newState),
    ));
    break;

  case VisiteMenbreRapportCelluleRequestSectionAssistanceEvent(
    :final visiteMenbre,
  ):
    final newState = state.copyWith(visiteMenbre: visiteMenbre);

    if (visiteMenbre.isEmpty) {
      emit(newState.copyWith(
        errorMessage: "Ce champ est obligatoire",
        isValide: false,
      ));
      return;
    }

    emit(newState.copyWith(
      errorMessage: "",
      isValide: _validate(newState),
    ));
    break;

  case VisiteDiscipleRapportCelluleRequestSectionAssistanceEvent(
    :final visiteDisciple,
  ):
    final newState = state.copyWith(visiteDisciple: visiteDisciple);

    if (visiteDisciple.isEmpty) {
      emit(newState.copyWith(
        errorMessage: "Ce champ est obligatoire",
        isValide: false,
      ));
      return;
    }

    emit(newState.copyWith(
      errorMessage: "",
      isValide: _validate(newState),
    ));
    break;

  case NbTravailleursRapportCelluleRequestSectionAssistanceEvent(
    :final nbTravailleurs,
  ):
    final newState = state.copyWith(nbTravailleurs: nbTravailleurs);

    if (nbTravailleurs.isEmpty) {
      emit(newState.copyWith(
        errorMessage: "Ce champ est obligatoire",
        isValide: false,
      ));
      return;
    }

    emit(newState.copyWith(
      errorMessage: "",
      isValide: _validate(newState),
    ));
    break;

  case NbEleveAndEtudiantsRapportCelluleRequestSectionAssistanceEvent(
    :final nbEleveAndEtudiants,
  ):
    final newState = state.copyWith(
      nbEleveAndEtudiants: nbEleveAndEtudiants,
    );

    if (nbEleveAndEtudiants.isEmpty) {
      emit(newState.copyWith(
        errorMessage: "Ce champ est obligatoire",
        isValide: false,
      ));
      return;
    }

    emit(newState.copyWith(
      errorMessage: "",
      isValide: _validate(newState),
    ));
    break;

  case NbOuvrierEMRapportCelluleRequestSectionAssistanceEvent(
    :final nbOuvrierEM,
  ):
    final newState = state.copyWith(nbOuvrierEM: nbOuvrierEM);

    if (nbOuvrierEM.isEmpty) {
      emit(newState.copyWith(
        errorMessage: "Ce champ est obligatoire",
        isValide: false,
      ));
      return;
    }

    emit(newState.copyWith(
      errorMessage: "",
      isValide: _validate(newState),
    ));
    break;

  case NbOuvrierAutreDepatementDirigeantEMRapportCelluleRequestSectionAssistanceEvent(
    :final nbOuvrierAutreDepatementDirigeantEM,
  ):
    final newState = state.copyWith(
      nbOuvrierAutreDepatementDirigeantEM:
          nbOuvrierAutreDepatementDirigeantEM,
    );

    if (nbOuvrierAutreDepatementDirigeantEM.isEmpty) {
      emit(newState.copyWith(
        errorMessage: "Ce champ est obligatoire",
        isValide: false,
      ));
      return;
    }

    emit(newState.copyWith(
      errorMessage: "",
      isValide: _validate(newState),
    ));
    break;

  case NbFormationNiveau2RapportCelluleRequestSectionAssistanceEvent(
    :final nbFormationNiveau2,
  ):
    final newState = state.copyWith(
      nbFormationNiveau2: nbFormationNiveau2,
    );

    if (nbFormationNiveau2.isEmpty) {
      emit(newState.copyWith(
        errorMessage: "Ce champ est obligatoire",
        isValide: false,
      ));
      return;
    }

    emit(newState.copyWith(
      errorMessage: "",
      isValide: _validate(newState),
    ));
    break;

  case NgAgendaEMRapportCelluleRequestSectionAssistanceEvent(
    :final ngAgendaEM,
  ):
    final newState = state.copyWith(ngAgendaEM: ngAgendaEM);

    if (ngAgendaEM.isEmpty) {
      emit(newState.copyWith(
        errorMessage: "Ce champ est obligatoire",
        isValide: false,
      ));
      return;
    }

    emit(newState.copyWith(
      errorMessage: "",
      isValide: _validate(newState),
    ));
    break;

  case NbDecisionnairesRapportCelluleRequestSectionAssistanceEvent(
    :final nbDecisionnaires,
  ):
    final newState = state.copyWith(
      nbDecisionnaires: nbDecisionnaires,
    );

    if (nbDecisionnaires.isEmpty) {
      emit(newState.copyWith(
        errorMessage: "Ce champ est obligatoire",
        isValide: false,
      ));
      return;
    }

    emit(newState.copyWith(
      errorMessage: "",
      isValide: _validate(newState),
    ));
    break;

      

      case ChangeAutresRapportCelluleRequestSectionAssistanceEvent(
        :final autres,
      ):

        // ignore: dead_code
        final autress = state.copyWith(sectionOuvrier: autres);

        // Vérification des erreurs
        if (autres.isEmpty) {
          emit(
            autress.copyWith(
              errorMessage: "Ce champ est obligatoire",
              isValide: false,
            ),
          );
          return;
        }

        // Si pas d'erreur → validation normale
        emit(autress.copyWith(errorMessage: "", isValide: _validate(autress)));

        break;


    



















      // =========================
      // 🔥 SUBMIT
      // =========================
      case SubmitRapportCelluleRequestSectionAssistanceEvent():
        emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

        // await Future.delayed(const Duration(seconds: 3));


        final response = await sendRapportCelluleStepStatUsercase.call(
          RequestRapportCelluleAssistance(
            nombreBaptiser: state.nombreBaptiser.value,
            assistanceNonBaptiser: state.nonBaptiserStatic.toJson(),
            assistanceNouveau: state.nouveauBaptiser.toJson(),
            assistanceInviter: state.inviter.toJson(),
            assistanceCellule: RequestAuherInformation(
              libelle: "",
              formationNewDFB: state.formationNewDFB,
              formationNewBaptDFD: state.formationNewBaptDFD,
              visiteMenbre: state.visiteMenbre,
              visiteDisciple: state.visiteDisciple,
              nbTravailleurs: state.nbTravailleurs,
              nbEleveAndEtudiants: state.nbEleveAndEtudiants,
              nbOuvrierEM: state.nbOuvrierEM,
              nbOuvrierAutreDepatementDirigeantEM: state.nbOuvrierAutreDepatementDirigeantEM,
              nbFormationNiveau2: state.nbFormationNiveau2,
              ngAgendaEM: state.ngAgendaEM,
              nbDecisionnaires: state.nbDecisionnaires,
              id: state.id.value,
              count: 0,
            ).toJson(),
            formAssistanceIsSubmit: 'true',
            tag: "en_cours",
            formAssistanceSubmitDate: DateTime.now().toIso8601String(),
            id: state.id.value,
          ),
        );

        emit(
          response.fold(
            (failure) {
              log('ERROR -------------------------------->> $failure');
              return state.copyWith(
                errorMessage: failure.message.getOrEmpty(),
                status: FormzSubmissionStatus.failure);
            },
            (success) => state.copyWith(status: FormzSubmissionStatus.success, errorMessage: state.id.value),
          ),
        );
  
    }
  }

  // =========================
  // 🔍 VALIDATION
  // =========================
  bool _validate(RapportCelluleRequestSectionAssistanceState s) {
    return Formz.validate([s.nombreBaptiser, s.id]);
  }
}


