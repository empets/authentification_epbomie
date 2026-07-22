import 'package:formz/formz.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/feature/authen/domaine/entities/request/authen_request.dart';
import 'package:grace_church/feature/authen/domaine/usercase/create_profile_engagement.dart';
import 'package:grace_church/feature/authen/page/bloc/create_compte/event/event_create_compte.dart';
import 'package:grace_church/feature/authen/page/bloc/create_compte/state/state_create_compte.dart';
import 'package:bloc/bloc.dart';

class CreateComteProfileEngagementBloc
    extends Bloc<EventCreateCompteEngagment, CreateCompteEngagementState> {
  CreateComteProfileEngagementBloc({
    required this.createEngagementProfileUsercase,
  }) : super(CreateCompteEngagementState.initial()) {
    on<EventCreateCompteEngagment>(engagement);
  }

  final CreateEngagementProfileUsercase createEngagementProfileUsercase;

  Future<void> engagement(
    EventCreateCompteEngagment event,
    Emitter<CreateCompteEngagementState> emit,
  ) async {
    switch (event) {
      case ChangeDepartementCreateCompteSocial(:final departement):
        final departementInput = TextFormz.dirty(departement);

        emit(
          state.copyWith(
            departement: departementInput,
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              departementInput,
              state.competence,
              state.disponibiliry,
            ]),
          ),
        );
        break;

      case ChangeCompetenceEtudeEventCreateCompteEngagment(:final competence):
        final competenceInput = TextFormz.dirty(competence);

        emit(
          state.copyWith(
            competence: competenceInput,
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              state.departement,
              competenceInput,
              state.disponibiliry,
            ]),
          ),
        );
        break;

      case DisponibiliryEventCreateCompteEngagment(:final disponibiliry):
        final disponibiliryInput = TextFormz.dirty(disponibiliry);

        emit(
          state.copyWith(
            disponibiliry: disponibiliryInput,
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              state.departement,
              state.competence,
              disponibiliryInput,
            ]),
          ),
        );
        break;

      case SubmitEventCreateCompteEngagment():
        if (state.isValide) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          final response = await createEngagementProfileUsercase.call(
            RequestAuthenEngagement(
              departement: state.departement.value,
              competence: state.competence.value,
              disponibiliry: state.disponibiliry.value,
              submitEngagement: true,
              endCreationDate: DateTime.now().toIso8601String(),
            ),
          );

          emit(
            response.fold(
              (l) => state.copyWith(status: FormzSubmissionStatus.failure),
              (r) => state.copyWith(status: FormzSubmissionStatus.success),
            ),
          );
        }
        break;
    }
  }
}
