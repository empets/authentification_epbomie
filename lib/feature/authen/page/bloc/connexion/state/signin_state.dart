import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/feature/authen/domaine/entities/response/authen_response.dart';

part 'signin_state.freezed.dart';

@freezed
abstract class SigninState with _$SigninState {
  factory SigninState({
    required TextFormz email,
    required TextFormz password,
    required PhoneFormz contact,
    required String errorMessage,
    @Default(AuthenResponse(nom: '', email: '', password: '', contact: '', role: '')) AuthenResponse admine,
    required FormzSubmissionStatus status,
    required bool isValid,
    required bool isSubmitting,
  }) = _SigninState;

  factory SigninState.initial() => SigninState(
    email: TextFormz.pure(),
    password: TextFormz.pure(),
    contact: PhoneFormz.pure(),
    errorMessage: '',
    status: FormzSubmissionStatus.initial,
    isValid: false,
    isSubmitting: false,
    admine: AuthenResponse(nom: '', email: '', password: '', contact: '', role: ''),
  );
}
