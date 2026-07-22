import 'package:formz/formz.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'signin_state.freezed.dart';

@freezed
abstract class SigninState with _$SigninState {
  factory SigninState({
    required TextFormz email,
    required TextFormz password,
    required PhoneFormz contact,
    required String errorMessage,
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
  );
}
