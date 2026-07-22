import 'package:formz/formz.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/feature/authen/domaine/entities/request/authen_request.dart';
import 'package:grace_church/feature/authen/domaine/usercase/create_spiritual_profile.dart';
import 'package:grace_church/feature/authen/page/bloc/create_compte/event/event_create_compte.dart';
import 'package:grace_church/feature/authen/page/bloc/create_compte/state/state_create_compte.dart';
import 'package:bloc/bloc.dart';

class CreateComteProfileSpiritualLifeBloc
    extends
        Bloc<EventCreateCompteSpiritualLife, CreateCompteSpiritualLifeState> {
  CreateComteProfileSpiritualLifeBloc({
    required this.createSpiritualProfileUsercase,
  }) : super(CreateCompteSpiritualLifeState.initial()) {
    on<EventCreateCompteSpiritualLife>(_onEvent);
  }

  final CreateSpiritualProfileUsercase createSpiritualProfileUsercase;

  void _onEvent(
    EventCreateCompteSpiritualLife event,
    Emitter<CreateCompteSpiritualLifeState> emit,
  ) async {
    switch (event) {
      case ChangeStatusSpirituelCreateCompteSocial(:final statusSpirituel):
        final statusInput = TextFormz.dirty(statusSpirituel);

        emit(
          state.copyWith(
            statusSpirituel: statusInput,
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              statusInput,
              state.dateBaptme,
              state.cellulePriere,
              state.encadreur,
            ]),
          ),
        );
        break;

      case ChangeDateBaptmeEtudeEventCreateCompteSpiritualLife(
        :final dateBaptme,
      ):
        final dateInput = TextFormz.dirty(dateBaptme);

        emit(
          state.copyWith(
            dateBaptme: dateInput,
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              state.statusSpirituel,
              dateInput,
              state.cellulePriere,
              state.encadreur,
            ]),
          ),
        );
        break;

      case CellulePriereEventCreateCompteSpiritualLife(:final cellulePriere):
        final celluleInput = TextFormz.dirty(cellulePriere);

        emit(
          state.copyWith(
            cellulePriere: celluleInput,
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              state.statusSpirituel,
              state.dateBaptme,
              celluleInput,
              state.encadreur,
            ]),
          ),
        );
        break;

      case EncadreurEventCreateCompteSpiritualLife(:final encadreur):
        final encadreurInput = TextFormz.dirty(encadreur);

        emit(
          state.copyWith(
            encadreur: encadreurInput,
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              state.statusSpirituel,
              state.dateBaptme,
              state.cellulePriere,
              encadreurInput,
            ]),
          ),
        );
        break;
        
      case CelluleCodeEventCreateCompteSpiritualLife(:final celluleCode):
        final celluleCodeInput = TextFormz.dirty(celluleCode);

        emit(
          state.copyWith(
            celluleCode: celluleCodeInput,
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              state.statusSpirituel,
              state.dateBaptme,
              state.cellulePriere,
              state.encadreur,
              celluleCodeInput,
            ]),
          ),
        );
        break;

      case CelluleIdEventCreateCompteSpiritualLife(:final celluleId):
        final celluleIdInput = TextFormz.dirty(celluleId);

        emit(
          state.copyWith(
            celluleId: celluleIdInput,
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              state.statusSpirituel,
              state.dateBaptme,
              state.cellulePriere,
              state.encadreur,
              celluleIdInput,
            ]),
          ),
        );
        break;




      case SubmitEventCreateCompteSpiritualLife():
        if (state.isValide)
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

        final response = await createSpiritualProfileUsercase.call(
          RequestAuthenSpiritualLife(
            statusSpirituel: state.statusSpirituel.value,
            dateBaptme: state.dateBaptme.value,
            cellulePriere: state.cellulePriere.value,
            encadreur: state.encadreur.value,
            celluleCode: state.celluleCode.value,
            celluleId: state.celluleId.value,
            submitSpiritual: true,
          ),
        );

        emit(
          response.fold(
            (failure) => state.copyWith(
              errorMessage: failure.toString(),
              status: FormzSubmissionStatus.failure,
            ),
            (success) => state.copyWith(status: FormzSubmissionStatus.success),
          ),
        );

        break;

      default:
    }
  }
}
