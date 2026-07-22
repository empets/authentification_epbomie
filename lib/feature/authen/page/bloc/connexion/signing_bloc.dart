import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/core/extension/extention.dart';
import 'package:grace_church/feature/authen/domaine/entities/request/authen_request.dart';
import 'package:grace_church/feature/authen/domaine/usercase/update_profile_deviceid_usercase.dart';
import 'package:grace_church/feature/authen/page/bloc/connexion/event/signin_event.dart';
import 'package:grace_church/feature/authen/page/bloc/connexion/state/signin_state.dart';
import 'package:grace_church/feature/authen/domaine/usercase/signin_profile.dart';

class SigningBloc extends Bloc<SigninEvent, SigninState> {
  SigningBloc({required this.createSignInProfileUsercase, required this.updateProfileDeviceIdUsercase})
    : super(SigninState.initial()) {
    on<SigninEvent>(_onEvent);
  }

  final CreateSignInProfileUsercase createSignInProfileUsercase;
  final UpdateProfileDeviceIdUsercase updateProfileDeviceIdUsercase;

  void _onEvent(SigninEvent event, Emitter<SigninState> emit) async {
    switch (event) {
      case ChangeEmailSigninEvent(:final email):
        final updatedState = state.copyWith(
          email: TextFormz.dirty(email),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValid: _validate(updatedState)));
        break;

      case ChangePasswordSigninEvent(:final password):
        final updatedState = state.copyWith(
          password: TextFormz.dirty(password),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValid: _validate(updatedState)));
        break;

      case ChangeContactSigninEvent(:final contact):
        final updatedState = state.copyWith(
          contact: PhoneFormz.dirty(contact),
          status: FormzSubmissionStatus.initial,
        );
        emit(updatedState.copyWith(isValid: _validate(updatedState)));
        break;

      case SubmitSigninEvent():
        if (state.isValid) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

          final deviceId = await getDeviceFingerprint();


          final response = await createSignInProfileUsercase.call(
            RequestAuthenSignIn(
              email: state.email.value,
              password: state.password.value,
              contact: state.contact.value,
            ),
          );

          emit(
            response.fold(
              (failure) => state.copyWith(
                errorMessage: 'Ce profile n\'existe pas merci de vous inscrire',
                status: FormzSubmissionStatus.failure,
              ),
              (profile) {

                log('deviceID ::----------->>  $deviceId');

                 updateProfileDeviceIdUsercase.call(
                  RequestAuthenUpdateProfileKey(deviceId: deviceId, menberId: profile.toString())
                );
                return state.copyWith(
                errorMessage: profile.toString(),
                status: FormzSubmissionStatus.success,
                
              );
              },
            ),
          );
        }
        break;
    }



  }

  bool _validate(SigninState state) {
    return state.email.isValid &&
        state.password.isValid &&
        state.contact.isValid;
  }
}
