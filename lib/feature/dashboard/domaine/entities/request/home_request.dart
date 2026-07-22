import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_request.freezed.dart';
part 'home_request.g.dart';

@freezed
abstract class EmptyRequest with _$EmptyRequest {
  factory EmptyRequest() = _EmptyRequest;
  factory EmptyRequest.fromJson(Map<String, dynamic> json) =>
      _$EmptyRequestFromJson(json);
}

@freezed
abstract class RequestGetProfile with _$RequestGetProfile {
  factory RequestGetProfile({required String numberId}) = _RequestGetProfile;
  factory RequestGetProfile.fromJson(Map<String, dynamic> json) =>
      _$RequestGetProfileFromJson(json);
}





