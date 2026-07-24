// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authen_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthenResponse _$AuthenResponseFromJson(Map<String, dynamic> json) =>
    _AuthenResponse(
      nom: json['nom'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      contact: json['contact'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$AuthenResponseToJson(_AuthenResponse instance) =>
    <String, dynamic>{
      'nom': instance.nom,
      'email': instance.email,
      'password': instance.password,
      'contact': instance.contact,
      'role': instance.role,
    };
