
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/usecase/rapport_cellule_admine_usercase.dart';
import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/event/rapport_cellule_event.dart';
import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/state/rapport_cellule_state.dart';

class RapportCelluleRequestSectionAdministrationBloc
    extends
        Bloc<
          RapportCelluleRequestSectionAdministrationEvent,
          RapportCelluleRequestSectionAdministrationState
        > {
  RapportCelluleRequestSectionAdministrationBloc({
    required this.sendRapportCelluleStepAdministrationUsercase,
  }) : super(RapportCelluleRequestSectionAdministrationState.initial()) {
    on<RapportCelluleRequestSectionAdministrationEvent>(_onEvent);
  }

  final SendRapportCelluleStepAdministrationUsercase
  sendRapportCelluleStepAdministrationUsercase;

  void _onEvent(
    RapportCelluleRequestSectionAdministrationEvent event,
    Emitter<RapportCelluleRequestSectionAdministrationState> emit,
  ) async {
    switch (event) {
      // -------------------------
      // ZONE
      // -------------------------
      case ChangeCodeZoneRapportCelluleRequestSectionAdministrationEvent(
        :final codeZone,
      ):
        final updatedState = state.copyWith(
          codeZone: TextFormz.dirty(codeZone),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      case ChangeFullNameRespoZoneRapportCelluleRequestSectionAdministrationEvent(
        :final fullNameRespoZone,
      ):
        final updatedState = state.copyWith(
          fullNameRespoZone: TextFormz.dirty(fullNameRespoZone),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      case ChangeContactRespoZoneRapportCelluleRequestSectionAdministrationEvent(
        :final contactRespoZone,
      ):
        final updatedState = state.copyWith(
          contactRespoZone: TextFormz.dirty(contactRespoZone),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      // -------------------------
      // SECTEUR
      // -------------------------
      case ChangeCodeSecteurRapportCelluleRequestSectionAdministrationEvent(
        :final codeSecteur,
      ):
        final updatedState = state.copyWith(
          codeSecteur: TextFormz.dirty(codeSecteur),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      case ChangeFullNameRespoSecteurRapportCelluleRequestSectionAdministrationEvent(
        :final fullNameRespoSecteur,
      ):
        final updatedState = state.copyWith(
          fullNameRespoSecteur: TextFormz.dirty(fullNameRespoSecteur),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      case ChangeContactRespoSecteurRapportCelluleRequestSectionAdministrationEvent(
        :final contactRespoSecteur,
      ):
        final updatedState = state.copyWith(
          contactRespoSecteur: TextFormz.dirty(contactRespoSecteur),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      // -------------------------
      // CELLULE
      // -------------------------
      case ChangeCodeCelluleRapportCelluleRequestSectionAdministrationEvent(
        :final codeCellule,
      ):
        final updatedState = state.copyWith(
          codeCellule: TextFormz.dirty(codeCellule),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      case ChangeFullNameRespoCelluleRapportCelluleRequestSectionAdministrationEvent(
        :final fullNameRespoCellule,
      ):
        final updatedState = state.copyWith(
          fullNameRespoCellule: TextFormz.dirty(fullNameRespoCellule),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      case ChangeContactRespoCelluleRapportCelluleRequestSectionAdministrationEvent(
        :final contactRespoCellule,
      ):
        final updatedState = state.copyWith(
          contactRespoCellule: TextFormz.dirty(contactRespoCellule),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      // -------------------------
      // INFOS CELLULE
      // -------------------------
      case ChangeJourCelluleRapportCelluleRequestSectionAdministrationEvent(
        :final jourCellule,
      ):
        final updatedState = state.copyWith(
          jourCellule: TextFormz.dirty(jourCellule),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      case ChangeOffrandeRapportCelluleRequestSectionAdministrationEvent(
        :final offrande,
      ):
        final updatedState = state.copyWith(
          offrande: TextFormz.dirty(offrande),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      // -------------------------
      // STATS
      // -------------------------
      case ChangeNombreBaptiserRapportCelluleRequestSectionAdministrationEvent(
        :final nombreBaptiser,
      ):
        final updatedState = state.copyWith(
          nombreBaptiser: TextFormz.dirty(nombreBaptiser),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      case ChangeNombreNonBaptiserRapportCelluleRequestSectionAdministrationEvent(
        :final nombreNonBaptiser,
      ):
        final updatedState = state.copyWith(
          nombreNonBaptiser: TextFormz.dirty(nombreNonBaptiser),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      // -------------------------
      // LISTE DISCIPLES
      // -------------------------
      case ChangeNombreListDicipleCelluleRapportCelluleRequestSectionAdministrationEvent(
        :final discipleCelluleResponse,
      ):
        final updatedState = state.copyWith(
          discipleCelluleList: discipleCelluleResponse,
        );

        // Vérification des erreurs
        if (discipleCelluleResponse.any(
          (item) => item.fullName.trim().isEmpty,
        )) {
          emit(
            updatedState.copyWith(
              errorMessage: "Nom obligatoire",
              isValide: false,
            ),
          );
          return;
        }

        // Si pas d'erreur → validation normale
        emit(
          updatedState.copyWith(
            errorMessage: "",
            isValide: _validate(updatedState),
          ),
        );
        break;

      case ChangeReponsableCelluleIdRapportCelluleRequestSectionAdministrationEvent(
        :final reponsableCelluleId,
      ):
        final updatedState = state.copyWith(
          reponsableCelluleId: TextFormz.dirty(reponsableCelluleId),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;


      case ChangeLieuRapportCelluleRequestSectionAdministrationEvent(
        :final lieu,
      ):
        final updatedState = state.copyWith(
          lieu: TextFormz.dirty(lieu),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      // -------------------------
      // 🔥 SUBMIT (optionnel)
      // -------------------------
      case SubmitRapportCelluleRequestSectionAdministrationEvent():
        if (state.isValide) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          await Future.delayed(const Duration(seconds: 4));
          final result = await sendRapportCelluleStepAdministrationUsercase
              .call(
                RequestRapportCelluleAdministration(
                  responsableCelluleId: state.reponsableCelluleId.value,
                  codeZone: state.codeZone.value,
                  fullNameRespoZone: state.fullNameRespoZone.value,
                  contactRespoZone: state.contactRespoZone.value,
                  codeSecteur: state.codeSecteur.value,
                  fullNameRespoSecteur: state.fullNameRespoSecteur.value,
                  contactRespoSecteur: state.contactRespoSecteur.value,
                  codeCellule: state.codeCellule.value,
                  fullNameRespoCellule: state.fullNameRespoCellule.value,
                  contactRespoCellule: state.contactRespoCellule.value,
                  jourCellule: state.jourCellule.value,
                  offrande: state.offrande.value,
                  nombreBaptiser: state.nombreBaptiser.value,
                  nombreNonBaptiser: state.nombreNonBaptiser.value,
                  discipleCellule: state.discipleCelluleList
                      .map((e) => e.toJson())
                      .toList(),
                  id: "",
                  formAdministrationIsSubmit: "true",
                  tag: "en_cours",
                  formAdministrationSubmitDate: DateTime.now()
                      .toIso8601String(),
                ),
              );

          emit(
            result.fold(
              (l) {
                return state.copyWith(status: FormzSubmissionStatus.failure);
              },
              (r) {
                return state.copyWith(
                  status: FormzSubmissionStatus.success,
                  errorMessage: r,
                  
                );
              },
            ),
          );
        }

        break;
    }
  }

  // =============================
  // 🔍 VALIDATION CENTRALISÉE
  // =============================
  bool _validate(RapportCelluleRequestSectionAdministrationState s) {
    return Formz.validate([
      s.codeZone,
      s.fullNameRespoZone,
      s.contactRespoZone,
      s.codeSecteur,
      s.fullNameRespoSecteur,
      s.contactRespoSecteur,
      s.codeCellule,
      s.fullNameRespoCellule,
      s.contactRespoCellule,
      s.jourCellule,
      s.offrande,
      s.nombreBaptiser,
      s.nombreNonBaptiser,
      s.reponsableCelluleId,
      s.lieu,
    ]);
  }
}
