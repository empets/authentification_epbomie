import 'package:freezed_annotation/freezed_annotation.dart';
part 'signin_event.freezed.dart';

@freezed
class SigninEvent with _$SigninEvent {
  factory SigninEvent.changeEmail(String email) = ChangeEmailSigninEvent;
  factory SigninEvent.changePassword(String password) =
      ChangePasswordSigninEvent;
  factory SigninEvent.changeContact(String contact) = ChangeContactSigninEvent;
  factory SigninEvent.submit() = SubmitSigninEvent;
}
