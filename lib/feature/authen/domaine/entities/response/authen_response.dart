import 'package:freezed_annotation/freezed_annotation.dart';

part 'authen_response.freezed.dart';
part 'authen_response.g.dart';

@freezed
sealed class AuthenResponse with _$AuthenResponse {
  const factory AuthenResponse({
    required String nom,
    required String email,
    required String password,
    required String contact,
    required String role,
  }) = _AuthenResponse;

  factory AuthenResponse.fromJson(Map<String, dynamic> json) => _$AuthenResponseFromJson(json);
}
