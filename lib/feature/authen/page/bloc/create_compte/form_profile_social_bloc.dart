import 'package:formz/formz.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/feature/authen/domaine/entities/request/authen_request.dart';
import 'package:grace_church/feature/authen/domaine/usercase/create_social_profile_usercase.dart';
import 'package:grace_church/feature/authen/page/bloc/create_compte/event/event_create_compte.dart';
import 'package:grace_church/feature/authen/page/bloc/create_compte/state/state_create_compte.dart';
import 'package:bloc/bloc.dart';

class CreateCompteProfileSocialBloc
    extends Bloc<EventCreateCompteSocialSocial, CreateCompteSocialState> {
  CreateCompteProfileSocialBloc({required this.createSocialProfileUsercase})
    : super(CreateCompteSocialState.initial()) {
    on<EventCreateCompteSocialSocial>(_onEvent);
  }

  final CreateSocialProfileUsercase createSocialProfileUsercase;

  void _onEvent(
    EventCreateCompteSocialSocial event,
    Emitter<CreateCompteSocialState> emit,
  ) async {
    switch (event) {
      case ChangeActivityCreateCompteSocial(:final activity):
        final updatedState = state.copyWith(
          activity: TextFormz.dirty(activity),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      case ChangeStatusSocialCreateCompteSocial(:final statusSocial):
        final updatedState = state.copyWith(
          statusSocial: TextFormz.dirty(statusSocial),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      case ChangeNivauEtudeEventCreateCompteSocial(:final nivauEtude):
        final updatedState = state.copyWith(
          nivauEtude: TextFormz.dirty(nivauEtude),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      case ChangeMatrimonialCreateCompte(:final matrimonial):
        final updatedState = state.copyWith(
          matrimonial: TextFormz.dirty(matrimonial),
          status: FormzSubmissionStatus.initial,
        );

        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      case ChangeOrphelinCreateCompte(:final orphelin):
        final updatedState = state.copyWith(
          orphelin: TextFormz.dirty(orphelin),
          status: FormzSubmissionStatus.initial,
        );

        emit(updatedState.copyWith(isValide: _validate(updatedState)));
        break;

      /// 🔥 SUBMIT
      case SubmitEventCreateCompteSocial():
        if (state.isValide) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

          final response = await createSocialProfileUsercase.call(
            RequestAuthenSocial(
              statusSocial: state.statusSocial.value,
              activity: state.activity.value,
              nivauEtude: state.nivauEtude.value,
              matrimonial: state.matrimonial.value,
              orphelin: state.orphelin.value,
              submitSocial: true,
            ),
          );

          emit(
            response.fold(
              (failure) =>
                  state.copyWith(status: FormzSubmissionStatus.failure),
              (success) =>
                  state.copyWith(status: FormzSubmissionStatus.success),
            ),
          );
        }

        break;
    }
  }

  /// 🔍 VALIDATION CENTRALISÉE (propre)
  bool _validate(CreateCompteSocialState s) {
    return Formz.validate([
      s.statusSocial,
      s.activity,
      s.nivauEtude,
      s.matrimonial,
      s.orphelin,
    ]);
  }
}
