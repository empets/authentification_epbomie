import 'package:flutter/material.dart';

import 'package:formz/formz.dart';
import 'package:grace_church/core/extension/extention.dart';
import 'package:grace_church/core/style/app_theme.dart';



extension CustomHomeColorExtension on BuildContext {
  AppTypographieTheme get appTypographie =>
      Theme.of(this).extension<AppTypographieTheme>()!;
}

extension AppTypographieColorsheme on BuildContext {
  AppColorsTheme get appColor => Theme.of(this).extension<AppColorsTheme>()!;
}

enum TextFormzValidationError { empty }
enum TextLoginAndFibreFormzValidationError { empty }

class TextFormz extends FormzInput<String, TextFormzValidationError> {
  const TextFormz.dirty([super.value = '']) : super.dirty();
  const TextFormz.pure() : super.pure('');

  @override
  TextFormzValidationError? validator(String value) {
    final result = value.trim();

    return result.isNotEmpty ? null : TextFormzValidationError.empty;
  }
}


enum EmailFormzValidationError { empty }
class EmailFormz extends FormzInput<String, EmailFormzValidationError> {
  const EmailFormz.dirty([super.value = '']) : super.dirty();
  const EmailFormz.pure() : super.pure('');

  @override
  EmailFormzValidationError? validator(String value) {
    final result = value.trim();
    return result.isNotEmpty &&
            result.contains('@gmail.com') &&
            result.isValidEmail()
        ? null
        : EmailFormzValidationError.empty;
  }
}

class PhoneFormz extends FormzInput<String, EmailFormzValidationError> {
  const PhoneFormz.dirty([super.value = '']) : super.dirty();
  const PhoneFormz.pure() : super.pure('');

  @override
  EmailFormzValidationError? validator(String value) {
    final result = value.trim();

    return result.isNotEmpty && result.length == 10
        ? null
        : EmailFormzValidationError.empty;
  }
}
