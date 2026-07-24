// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authen_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthenResponseModel _$AuthenResponseModelFromJson(Map<String, dynamic> json) =>
    _AuthenResponseModel(
      nom: json['nom'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      contact: json['contact'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$AuthenResponseModelToJson(
  _AuthenResponseModel instance,
) => <String, dynamic>{
  'nom': instance.nom,
  'email': instance.email,
  'password': instance.password,
  'contact': instance.contact,
  'role': instance.role,
};
