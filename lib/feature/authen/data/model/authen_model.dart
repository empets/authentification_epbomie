import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grace_church/core/extension/extention.dart';
import 'package:grace_church/feature/authen/domaine/entities/response/authen_response.dart';

part 'authen_model.freezed.dart';
part 'authen_model.g.dart';

@freezed
sealed class AuthenResponseModel with _$AuthenResponseModel {
  const factory AuthenResponseModel({
    required String nom,
    required String email,
    required String password,
    required String contact,
    required String role,
  }) = _AuthenResponseModel;

  factory AuthenResponseModel.fromJson(Map<String, dynamic> json) => _$AuthenResponseModelFromJson(json);

  static AuthenResponse domaine(AuthenResponseModel model) {
    return AuthenResponse(
      nom: model.nom.getOrEmpty(),
      email: model.email.getOrEmpty(),
      password: model.password.getOrEmpty(),
      contact: model.contact.getOrEmpty(),
      role: model.role.getOrEmpty(),
    );
  }
}
