import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/usecase/rapport_cellule_suggestion_usercase.dart';
import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/event/rapport_cellule_event.dart';
import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/state/rapport_cellule_state.dart';

class FormSuggestionBloc
    extends
        Bloc<
          RapportCelluleRequestSuggestionEvent,
          RapportCelluleRequestSuggestionState
        > {
  FormSuggestionBloc({required this.sendRapportCelluleStepSuggestionUsercase})
    : super(RapportCelluleRequestSuggestionState.initial()) {
    on<RapportCelluleRequestSuggestionEvent>(formSuggestionHandler);
  }
  final SendRapportCelluleStepSuggestionUsercase
  sendRapportCelluleStepSuggestionUsercase;
  Future<void> formSuggestionHandler(
    RapportCelluleRequestSuggestionEvent event,
    Emitter<RapportCelluleRequestSuggestionState> emit,
  ) async {
    switch (event) {
      case ChangeDiscipleRapportCelluleRequestSuggestionEvent(
        :final suggestion,
      ):

        // ignore: dead_code
        final menbreState = state.copyWith(suggestions: suggestion);

        // Vérification des erreurs
        if (suggestion.any(
          (item) =>
              item.temoignage.trim().isEmpty ||
              item.suggestions.trim().isEmpty ||
              item.probleme.trim().isEmpty,
        )) {
          emit(
            menbreState.copyWith(
              errorMessage: "Ce champ est obligatoire",
              isValide: false,
            ),
          );
          return;
        }

        // Si pas d'erreur → validation normale
        emit(
          menbreState.copyWith(
            errorMessage: "",
            isValide: _validate(menbreState),
          ),
        );

        break;
      case FaisAssignalerRapportCelluleRequestSuggestionEvent(
        :final isAssignaler,
      ):
        final faisAssignalerState = state.copyWith(
          faisAssignaler: TextFormz.dirty(isAssignaler),
          status: FormzSubmissionStatus.initial,
        );
        emit(
          faisAssignalerState.copyWith(
            isValide: _validate(faisAssignalerState),
          ),
        );

        break;
      case EtatsSprituelOuvrierRapportCelluleRequestSuggestionEvent(
        :final etatsSprituelOuvrier,
      ):
        final etatsSprituelOuvrierData = state.copyWith(
          ouvrierSpritualLive: TextFormz.dirty(etatsSprituelOuvrier),
          status: FormzSubmissionStatus.initial,
        );
        emit(
          etatsSprituelOuvrierData.copyWith(
            isValide: _validate(etatsSprituelOuvrierData),
          ),
        );

        break;
      case ChangeResumerPredicationRapportCelluleRequestSuggestionEvent(
        :final resumerPredication,
      ):
        final resumerPredicationData = state.copyWith(
          resumerPredication: TextFormz.dirty(resumerPredication),
          status: FormzSubmissionStatus.initial,
        );
        emit(
          resumerPredicationData.copyWith(
            isValide: _validate(resumerPredicationData),
          ),
        );

        case RapportCelluleRequestSuggestionEventUpdateSectionId(:final id):
        emit(state.copyWith(id: TextFormz.dirty(id)));
        break;
        
      case SubmitRapportCelluleRequestSuggestionEvent():
        if (state.isValide) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

          await Future.delayed(const Duration(seconds: 3));

          final response = await sendRapportCelluleStepSuggestionUsercase.call(
            RequestRapportCelluleSuggestion(
              suggestions: state.suggestions.map((e) => e.toJson()).toList(),
              faisAssignaler: state.faisAssignaler.value,
              ouvrierSpritualLive: state.ouvrierSpritualLive.value,
              formSuggestionIsSubmit: "true",
              formSuggestionSubmitDate: DateTime.now().toIso8601String(),
              resumerPredication: state.resumerPredication.value,
              tag:"terminer",
              id: state.id.value,
            ),
          );
          emit(
            response.fold(
              (l) => state.copyWith(status: FormzSubmissionStatus.failure),
              (r) => state.copyWith(status: FormzSubmissionStatus.success, errorMessage: state.errorMessage),
            ),
          );
        }

        break;
    }
  }
}

bool _validate(RapportCelluleRequestSuggestionState s) {
  return Formz.validate([s.faisAssignaler, s.ouvrierSpritualLive, s.resumerPredication]);
}
