// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authen_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestAuthenProfile {

 String get name; String get dateNaissance; String get zoneResidence; String get profileImage; String get contact; String get email; String get nationalite; String get dateInscription; String get password; bool get submitProfile; bool get isUpdate; String? get deviceId;
/// Create a copy of RequestAuthenProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuthenProfileCopyWith<RequestAuthenProfile> get copyWith => _$RequestAuthenProfileCopyWithImpl<RequestAuthenProfile>(this as RequestAuthenProfile, _$identity);

  /// Serializes this RequestAuthenProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuthenProfile&&(identical(other.name, name) || other.name == name)&&(identical(other.dateNaissance, dateNaissance) || other.dateNaissance == dateNaissance)&&(identical(other.zoneResidence, zoneResidence) || other.zoneResidence == zoneResidence)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.email, email) || other.email == email)&&(identical(other.nationalite, nationalite) || other.nationalite == nationalite)&&(identical(other.dateInscription, dateInscription) || other.dateInscription == dateInscription)&&(identical(other.password, password) || other.password == password)&&(identical(other.submitProfile, submitProfile) || other.submitProfile == submitProfile)&&(identical(other.isUpdate, isUpdate) || other.isUpdate == isUpdate)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,dateNaissance,zoneResidence,profileImage,contact,email,nationalite,dateInscription,password,submitProfile,isUpdate,deviceId);

@override
String toString() {
  return 'RequestAuthenProfile(name: $name, dateNaissance: $dateNaissance, zoneResidence: $zoneResidence, profileImage: $profileImage, contact: $contact, email: $email, nationalite: $nationalite, dateInscription: $dateInscription, password: $password, submitProfile: $submitProfile, isUpdate: $isUpdate, deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class $RequestAuthenProfileCopyWith<$Res>  {
  factory $RequestAuthenProfileCopyWith(RequestAuthenProfile value, $Res Function(RequestAuthenProfile) _then) = _$RequestAuthenProfileCopyWithImpl;
@useResult
$Res call({
 String name, String dateNaissance, String zoneResidence, String profileImage, String contact, String email, String nationalite, String dateInscription, String password, bool submitProfile, bool isUpdate, String? deviceId
});




}
/// @nodoc
class _$RequestAuthenProfileCopyWithImpl<$Res>
    implements $RequestAuthenProfileCopyWith<$Res> {
  _$RequestAuthenProfileCopyWithImpl(this._self, this._then);

  final RequestAuthenProfile _self;
  final $Res Function(RequestAuthenProfile) _then;

/// Create a copy of RequestAuthenProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? dateNaissance = null,Object? zoneResidence = null,Object? profileImage = null,Object? contact = null,Object? email = null,Object? nationalite = null,Object? dateInscription = null,Object? password = null,Object? submitProfile = null,Object? isUpdate = null,Object? deviceId = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dateNaissance: null == dateNaissance ? _self.dateNaissance : dateNaissance // ignore: cast_nullable_to_non_nullable
as String,zoneResidence: null == zoneResidence ? _self.zoneResidence : zoneResidence // ignore: cast_nullable_to_non_nullable
as String,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,nationalite: null == nationalite ? _self.nationalite : nationalite // ignore: cast_nullable_to_non_nullable
as String,dateInscription: null == dateInscription ? _self.dateInscription : dateInscription // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,submitProfile: null == submitProfile ? _self.submitProfile : submitProfile // ignore: cast_nullable_to_non_nullable
as bool,isUpdate: null == isUpdate ? _self.isUpdate : isUpdate // ignore: cast_nullable_to_non_nullable
as bool,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAuthenProfile].
extension RequestAuthenProfilePatterns on RequestAuthenProfile {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestAuthenProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestAuthenProfile() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestAuthenProfile value)  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenProfile():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestAuthenProfile value)?  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenProfile() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String dateNaissance,  String zoneResidence,  String profileImage,  String contact,  String email,  String nationalite,  String dateInscription,  String password,  bool submitProfile,  bool isUpdate,  String? deviceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestAuthenProfile() when $default != null:
return $default(_that.name,_that.dateNaissance,_that.zoneResidence,_that.profileImage,_that.contact,_that.email,_that.nationalite,_that.dateInscription,_that.password,_that.submitProfile,_that.isUpdate,_that.deviceId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String dateNaissance,  String zoneResidence,  String profileImage,  String contact,  String email,  String nationalite,  String dateInscription,  String password,  bool submitProfile,  bool isUpdate,  String? deviceId)  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenProfile():
return $default(_that.name,_that.dateNaissance,_that.zoneResidence,_that.profileImage,_that.contact,_that.email,_that.nationalite,_that.dateInscription,_that.password,_that.submitProfile,_that.isUpdate,_that.deviceId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String dateNaissance,  String zoneResidence,  String profileImage,  String contact,  String email,  String nationalite,  String dateInscription,  String password,  bool submitProfile,  bool isUpdate,  String? deviceId)?  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenProfile() when $default != null:
return $default(_that.name,_that.dateNaissance,_that.zoneResidence,_that.profileImage,_that.contact,_that.email,_that.nationalite,_that.dateInscription,_that.password,_that.submitProfile,_that.isUpdate,_that.deviceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestAuthenProfile implements RequestAuthenProfile {
   _RequestAuthenProfile({required this.name, required this.dateNaissance, required this.zoneResidence, required this.profileImage, required this.contact, required this.email, required this.nationalite, required this.dateInscription, required this.password, required this.submitProfile, required this.isUpdate, required this.deviceId});
  factory _RequestAuthenProfile.fromJson(Map<String, dynamic> json) => _$RequestAuthenProfileFromJson(json);

@override final  String name;
@override final  String dateNaissance;
@override final  String zoneResidence;
@override final  String profileImage;
@override final  String contact;
@override final  String email;
@override final  String nationalite;
@override final  String dateInscription;
@override final  String password;
@override final  bool submitProfile;
@override final  bool isUpdate;
@override final  String? deviceId;

/// Create a copy of RequestAuthenProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestAuthenProfileCopyWith<_RequestAuthenProfile> get copyWith => __$RequestAuthenProfileCopyWithImpl<_RequestAuthenProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestAuthenProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestAuthenProfile&&(identical(other.name, name) || other.name == name)&&(identical(other.dateNaissance, dateNaissance) || other.dateNaissance == dateNaissance)&&(identical(other.zoneResidence, zoneResidence) || other.zoneResidence == zoneResidence)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.email, email) || other.email == email)&&(identical(other.nationalite, nationalite) || other.nationalite == nationalite)&&(identical(other.dateInscription, dateInscription) || other.dateInscription == dateInscription)&&(identical(other.password, password) || other.password == password)&&(identical(other.submitProfile, submitProfile) || other.submitProfile == submitProfile)&&(identical(other.isUpdate, isUpdate) || other.isUpdate == isUpdate)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,dateNaissance,zoneResidence,profileImage,contact,email,nationalite,dateInscription,password,submitProfile,isUpdate,deviceId);

@override
String toString() {
  return 'RequestAuthenProfile(name: $name, dateNaissance: $dateNaissance, zoneResidence: $zoneResidence, profileImage: $profileImage, contact: $contact, email: $email, nationalite: $nationalite, dateInscription: $dateInscription, password: $password, submitProfile: $submitProfile, isUpdate: $isUpdate, deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class _$RequestAuthenProfileCopyWith<$Res> implements $RequestAuthenProfileCopyWith<$Res> {
  factory _$RequestAuthenProfileCopyWith(_RequestAuthenProfile value, $Res Function(_RequestAuthenProfile) _then) = __$RequestAuthenProfileCopyWithImpl;
@override @useResult
$Res call({
 String name, String dateNaissance, String zoneResidence, String profileImage, String contact, String email, String nationalite, String dateInscription, String password, bool submitProfile, bool isUpdate, String? deviceId
});




}
/// @nodoc
class __$RequestAuthenProfileCopyWithImpl<$Res>
    implements _$RequestAuthenProfileCopyWith<$Res> {
  __$RequestAuthenProfileCopyWithImpl(this._self, this._then);

  final _RequestAuthenProfile _self;
  final $Res Function(_RequestAuthenProfile) _then;

/// Create a copy of RequestAuthenProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? dateNaissance = null,Object? zoneResidence = null,Object? profileImage = null,Object? contact = null,Object? email = null,Object? nationalite = null,Object? dateInscription = null,Object? password = null,Object? submitProfile = null,Object? isUpdate = null,Object? deviceId = freezed,}) {
  return _then(_RequestAuthenProfile(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dateNaissance: null == dateNaissance ? _self.dateNaissance : dateNaissance // ignore: cast_nullable_to_non_nullable
as String,zoneResidence: null == zoneResidence ? _self.zoneResidence : zoneResidence // ignore: cast_nullable_to_non_nullable
as String,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,nationalite: null == nationalite ? _self.nationalite : nationalite // ignore: cast_nullable_to_non_nullable
as String,dateInscription: null == dateInscription ? _self.dateInscription : dateInscription // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,submitProfile: null == submitProfile ? _self.submitProfile : submitProfile // ignore: cast_nullable_to_non_nullable
as bool,isUpdate: null == isUpdate ? _self.isUpdate : isUpdate // ignore: cast_nullable_to_non_nullable
as bool,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RequestAuthenSocial {

 String get statusSocial; String get activity; String get nivauEtude; String get matrimonial; String get orphelin; bool get submitSocial;
/// Create a copy of RequestAuthenSocial
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuthenSocialCopyWith<RequestAuthenSocial> get copyWith => _$RequestAuthenSocialCopyWithImpl<RequestAuthenSocial>(this as RequestAuthenSocial, _$identity);

  /// Serializes this RequestAuthenSocial to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuthenSocial&&(identical(other.statusSocial, statusSocial) || other.statusSocial == statusSocial)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.nivauEtude, nivauEtude) || other.nivauEtude == nivauEtude)&&(identical(other.matrimonial, matrimonial) || other.matrimonial == matrimonial)&&(identical(other.orphelin, orphelin) || other.orphelin == orphelin)&&(identical(other.submitSocial, submitSocial) || other.submitSocial == submitSocial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusSocial,activity,nivauEtude,matrimonial,orphelin,submitSocial);

@override
String toString() {
  return 'RequestAuthenSocial(statusSocial: $statusSocial, activity: $activity, nivauEtude: $nivauEtude, matrimonial: $matrimonial, orphelin: $orphelin, submitSocial: $submitSocial)';
}


}

/// @nodoc
abstract mixin class $RequestAuthenSocialCopyWith<$Res>  {
  factory $RequestAuthenSocialCopyWith(RequestAuthenSocial value, $Res Function(RequestAuthenSocial) _then) = _$RequestAuthenSocialCopyWithImpl;
@useResult
$Res call({
 String statusSocial, String activity, String nivauEtude, String matrimonial, String orphelin, bool submitSocial
});




}
/// @nodoc
class _$RequestAuthenSocialCopyWithImpl<$Res>
    implements $RequestAuthenSocialCopyWith<$Res> {
  _$RequestAuthenSocialCopyWithImpl(this._self, this._then);

  final RequestAuthenSocial _self;
  final $Res Function(RequestAuthenSocial) _then;

/// Create a copy of RequestAuthenSocial
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusSocial = null,Object? activity = null,Object? nivauEtude = null,Object? matrimonial = null,Object? orphelin = null,Object? submitSocial = null,}) {
  return _then(_self.copyWith(
statusSocial: null == statusSocial ? _self.statusSocial : statusSocial // ignore: cast_nullable_to_non_nullable
as String,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as String,nivauEtude: null == nivauEtude ? _self.nivauEtude : nivauEtude // ignore: cast_nullable_to_non_nullable
as String,matrimonial: null == matrimonial ? _self.matrimonial : matrimonial // ignore: cast_nullable_to_non_nullable
as String,orphelin: null == orphelin ? _self.orphelin : orphelin // ignore: cast_nullable_to_non_nullable
as String,submitSocial: null == submitSocial ? _self.submitSocial : submitSocial // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAuthenSocial].
extension RequestAuthenSocialPatterns on RequestAuthenSocial {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestAuthenSocial value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestAuthenSocial() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestAuthenSocial value)  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenSocial():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestAuthenSocial value)?  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenSocial() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusSocial,  String activity,  String nivauEtude,  String matrimonial,  String orphelin,  bool submitSocial)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestAuthenSocial() when $default != null:
return $default(_that.statusSocial,_that.activity,_that.nivauEtude,_that.matrimonial,_that.orphelin,_that.submitSocial);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusSocial,  String activity,  String nivauEtude,  String matrimonial,  String orphelin,  bool submitSocial)  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenSocial():
return $default(_that.statusSocial,_that.activity,_that.nivauEtude,_that.matrimonial,_that.orphelin,_that.submitSocial);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusSocial,  String activity,  String nivauEtude,  String matrimonial,  String orphelin,  bool submitSocial)?  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenSocial() when $default != null:
return $default(_that.statusSocial,_that.activity,_that.nivauEtude,_that.matrimonial,_that.orphelin,_that.submitSocial);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestAuthenSocial implements RequestAuthenSocial {
   _RequestAuthenSocial({required this.statusSocial, required this.activity, required this.nivauEtude, required this.matrimonial, required this.orphelin, required this.submitSocial});
  factory _RequestAuthenSocial.fromJson(Map<String, dynamic> json) => _$RequestAuthenSocialFromJson(json);

@override final  String statusSocial;
@override final  String activity;
@override final  String nivauEtude;
@override final  String matrimonial;
@override final  String orphelin;
@override final  bool submitSocial;

/// Create a copy of RequestAuthenSocial
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestAuthenSocialCopyWith<_RequestAuthenSocial> get copyWith => __$RequestAuthenSocialCopyWithImpl<_RequestAuthenSocial>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestAuthenSocialToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestAuthenSocial&&(identical(other.statusSocial, statusSocial) || other.statusSocial == statusSocial)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.nivauEtude, nivauEtude) || other.nivauEtude == nivauEtude)&&(identical(other.matrimonial, matrimonial) || other.matrimonial == matrimonial)&&(identical(other.orphelin, orphelin) || other.orphelin == orphelin)&&(identical(other.submitSocial, submitSocial) || other.submitSocial == submitSocial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusSocial,activity,nivauEtude,matrimonial,orphelin,submitSocial);

@override
String toString() {
  return 'RequestAuthenSocial(statusSocial: $statusSocial, activity: $activity, nivauEtude: $nivauEtude, matrimonial: $matrimonial, orphelin: $orphelin, submitSocial: $submitSocial)';
}


}

/// @nodoc
abstract mixin class _$RequestAuthenSocialCopyWith<$Res> implements $RequestAuthenSocialCopyWith<$Res> {
  factory _$RequestAuthenSocialCopyWith(_RequestAuthenSocial value, $Res Function(_RequestAuthenSocial) _then) = __$RequestAuthenSocialCopyWithImpl;
@override @useResult
$Res call({
 String statusSocial, String activity, String nivauEtude, String matrimonial, String orphelin, bool submitSocial
});




}
/// @nodoc
class __$RequestAuthenSocialCopyWithImpl<$Res>
    implements _$RequestAuthenSocialCopyWith<$Res> {
  __$RequestAuthenSocialCopyWithImpl(this._self, this._then);

  final _RequestAuthenSocial _self;
  final $Res Function(_RequestAuthenSocial) _then;

/// Create a copy of RequestAuthenSocial
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusSocial = null,Object? activity = null,Object? nivauEtude = null,Object? matrimonial = null,Object? orphelin = null,Object? submitSocial = null,}) {
  return _then(_RequestAuthenSocial(
statusSocial: null == statusSocial ? _self.statusSocial : statusSocial // ignore: cast_nullable_to_non_nullable
as String,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as String,nivauEtude: null == nivauEtude ? _self.nivauEtude : nivauEtude // ignore: cast_nullable_to_non_nullable
as String,matrimonial: null == matrimonial ? _self.matrimonial : matrimonial // ignore: cast_nullable_to_non_nullable
as String,orphelin: null == orphelin ? _self.orphelin : orphelin // ignore: cast_nullable_to_non_nullable
as String,submitSocial: null == submitSocial ? _self.submitSocial : submitSocial // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$RequestAuthenSpiritualLife {

 String get statusSpirituel; String get dateBaptme; String get cellulePriere; String get encadreur; bool get submitSpiritual; String get celluleCode; String get celluleId;
/// Create a copy of RequestAuthenSpiritualLife
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuthenSpiritualLifeCopyWith<RequestAuthenSpiritualLife> get copyWith => _$RequestAuthenSpiritualLifeCopyWithImpl<RequestAuthenSpiritualLife>(this as RequestAuthenSpiritualLife, _$identity);

  /// Serializes this RequestAuthenSpiritualLife to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuthenSpiritualLife&&(identical(other.statusSpirituel, statusSpirituel) || other.statusSpirituel == statusSpirituel)&&(identical(other.dateBaptme, dateBaptme) || other.dateBaptme == dateBaptme)&&(identical(other.cellulePriere, cellulePriere) || other.cellulePriere == cellulePriere)&&(identical(other.encadreur, encadreur) || other.encadreur == encadreur)&&(identical(other.submitSpiritual, submitSpiritual) || other.submitSpiritual == submitSpiritual)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusSpirituel,dateBaptme,cellulePriere,encadreur,submitSpiritual,celluleCode,celluleId);

@override
String toString() {
  return 'RequestAuthenSpiritualLife(statusSpirituel: $statusSpirituel, dateBaptme: $dateBaptme, cellulePriere: $cellulePriere, encadreur: $encadreur, submitSpiritual: $submitSpiritual, celluleCode: $celluleCode, celluleId: $celluleId)';
}


}

/// @nodoc
abstract mixin class $RequestAuthenSpiritualLifeCopyWith<$Res>  {
  factory $RequestAuthenSpiritualLifeCopyWith(RequestAuthenSpiritualLife value, $Res Function(RequestAuthenSpiritualLife) _then) = _$RequestAuthenSpiritualLifeCopyWithImpl;
@useResult
$Res call({
 String statusSpirituel, String dateBaptme, String cellulePriere, String encadreur, bool submitSpiritual, String celluleCode, String celluleId
});




}
/// @nodoc
class _$RequestAuthenSpiritualLifeCopyWithImpl<$Res>
    implements $RequestAuthenSpiritualLifeCopyWith<$Res> {
  _$RequestAuthenSpiritualLifeCopyWithImpl(this._self, this._then);

  final RequestAuthenSpiritualLife _self;
  final $Res Function(RequestAuthenSpiritualLife) _then;

/// Create a copy of RequestAuthenSpiritualLife
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusSpirituel = null,Object? dateBaptme = null,Object? cellulePriere = null,Object? encadreur = null,Object? submitSpiritual = null,Object? celluleCode = null,Object? celluleId = null,}) {
  return _then(_self.copyWith(
statusSpirituel: null == statusSpirituel ? _self.statusSpirituel : statusSpirituel // ignore: cast_nullable_to_non_nullable
as String,dateBaptme: null == dateBaptme ? _self.dateBaptme : dateBaptme // ignore: cast_nullable_to_non_nullable
as String,cellulePriere: null == cellulePriere ? _self.cellulePriere : cellulePriere // ignore: cast_nullable_to_non_nullable
as String,encadreur: null == encadreur ? _self.encadreur : encadreur // ignore: cast_nullable_to_non_nullable
as String,submitSpiritual: null == submitSpiritual ? _self.submitSpiritual : submitSpiritual // ignore: cast_nullable_to_non_nullable
as bool,celluleCode: null == celluleCode ? _self.celluleCode : celluleCode // ignore: cast_nullable_to_non_nullable
as String,celluleId: null == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAuthenSpiritualLife].
extension RequestAuthenSpiritualLifePatterns on RequestAuthenSpiritualLife {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestAuthenSpiritualLife value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestAuthenSpiritualLife() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestAuthenSpiritualLife value)  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenSpiritualLife():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestAuthenSpiritualLife value)?  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenSpiritualLife() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusSpirituel,  String dateBaptme,  String cellulePriere,  String encadreur,  bool submitSpiritual,  String celluleCode,  String celluleId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestAuthenSpiritualLife() when $default != null:
return $default(_that.statusSpirituel,_that.dateBaptme,_that.cellulePriere,_that.encadreur,_that.submitSpiritual,_that.celluleCode,_that.celluleId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusSpirituel,  String dateBaptme,  String cellulePriere,  String encadreur,  bool submitSpiritual,  String celluleCode,  String celluleId)  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenSpiritualLife():
return $default(_that.statusSpirituel,_that.dateBaptme,_that.cellulePriere,_that.encadreur,_that.submitSpiritual,_that.celluleCode,_that.celluleId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusSpirituel,  String dateBaptme,  String cellulePriere,  String encadreur,  bool submitSpiritual,  String celluleCode,  String celluleId)?  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenSpiritualLife() when $default != null:
return $default(_that.statusSpirituel,_that.dateBaptme,_that.cellulePriere,_that.encadreur,_that.submitSpiritual,_that.celluleCode,_that.celluleId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestAuthenSpiritualLife implements RequestAuthenSpiritualLife {
   _RequestAuthenSpiritualLife({required this.statusSpirituel, required this.dateBaptme, required this.cellulePriere, required this.encadreur, required this.submitSpiritual, required this.celluleCode, required this.celluleId});
  factory _RequestAuthenSpiritualLife.fromJson(Map<String, dynamic> json) => _$RequestAuthenSpiritualLifeFromJson(json);

@override final  String statusSpirituel;
@override final  String dateBaptme;
@override final  String cellulePriere;
@override final  String encadreur;
@override final  bool submitSpiritual;
@override final  String celluleCode;
@override final  String celluleId;

/// Create a copy of RequestAuthenSpiritualLife
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestAuthenSpiritualLifeCopyWith<_RequestAuthenSpiritualLife> get copyWith => __$RequestAuthenSpiritualLifeCopyWithImpl<_RequestAuthenSpiritualLife>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestAuthenSpiritualLifeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestAuthenSpiritualLife&&(identical(other.statusSpirituel, statusSpirituel) || other.statusSpirituel == statusSpirituel)&&(identical(other.dateBaptme, dateBaptme) || other.dateBaptme == dateBaptme)&&(identical(other.cellulePriere, cellulePriere) || other.cellulePriere == cellulePriere)&&(identical(other.encadreur, encadreur) || other.encadreur == encadreur)&&(identical(other.submitSpiritual, submitSpiritual) || other.submitSpiritual == submitSpiritual)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusSpirituel,dateBaptme,cellulePriere,encadreur,submitSpiritual,celluleCode,celluleId);

@override
String toString() {
  return 'RequestAuthenSpiritualLife(statusSpirituel: $statusSpirituel, dateBaptme: $dateBaptme, cellulePriere: $cellulePriere, encadreur: $encadreur, submitSpiritual: $submitSpiritual, celluleCode: $celluleCode, celluleId: $celluleId)';
}


}

/// @nodoc
abstract mixin class _$RequestAuthenSpiritualLifeCopyWith<$Res> implements $RequestAuthenSpiritualLifeCopyWith<$Res> {
  factory _$RequestAuthenSpiritualLifeCopyWith(_RequestAuthenSpiritualLife value, $Res Function(_RequestAuthenSpiritualLife) _then) = __$RequestAuthenSpiritualLifeCopyWithImpl;
@override @useResult
$Res call({
 String statusSpirituel, String dateBaptme, String cellulePriere, String encadreur, bool submitSpiritual, String celluleCode, String celluleId
});




}
/// @nodoc
class __$RequestAuthenSpiritualLifeCopyWithImpl<$Res>
    implements _$RequestAuthenSpiritualLifeCopyWith<$Res> {
  __$RequestAuthenSpiritualLifeCopyWithImpl(this._self, this._then);

  final _RequestAuthenSpiritualLife _self;
  final $Res Function(_RequestAuthenSpiritualLife) _then;

/// Create a copy of RequestAuthenSpiritualLife
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusSpirituel = null,Object? dateBaptme = null,Object? cellulePriere = null,Object? encadreur = null,Object? submitSpiritual = null,Object? celluleCode = null,Object? celluleId = null,}) {
  return _then(_RequestAuthenSpiritualLife(
statusSpirituel: null == statusSpirituel ? _self.statusSpirituel : statusSpirituel // ignore: cast_nullable_to_non_nullable
as String,dateBaptme: null == dateBaptme ? _self.dateBaptme : dateBaptme // ignore: cast_nullable_to_non_nullable
as String,cellulePriere: null == cellulePriere ? _self.cellulePriere : cellulePriere // ignore: cast_nullable_to_non_nullable
as String,encadreur: null == encadreur ? _self.encadreur : encadreur // ignore: cast_nullable_to_non_nullable
as String,submitSpiritual: null == submitSpiritual ? _self.submitSpiritual : submitSpiritual // ignore: cast_nullable_to_non_nullable
as bool,celluleCode: null == celluleCode ? _self.celluleCode : celluleCode // ignore: cast_nullable_to_non_nullable
as String,celluleId: null == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RequestAuthenEngagement {

 String get departement; String get competence; String get disponibiliry; bool get submitEngagement; String get endCreationDate;
/// Create a copy of RequestAuthenEngagement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuthenEngagementCopyWith<RequestAuthenEngagement> get copyWith => _$RequestAuthenEngagementCopyWithImpl<RequestAuthenEngagement>(this as RequestAuthenEngagement, _$identity);

  /// Serializes this RequestAuthenEngagement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuthenEngagement&&(identical(other.departement, departement) || other.departement == departement)&&(identical(other.competence, competence) || other.competence == competence)&&(identical(other.disponibiliry, disponibiliry) || other.disponibiliry == disponibiliry)&&(identical(other.submitEngagement, submitEngagement) || other.submitEngagement == submitEngagement)&&(identical(other.endCreationDate, endCreationDate) || other.endCreationDate == endCreationDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,departement,competence,disponibiliry,submitEngagement,endCreationDate);

@override
String toString() {
  return 'RequestAuthenEngagement(departement: $departement, competence: $competence, disponibiliry: $disponibiliry, submitEngagement: $submitEngagement, endCreationDate: $endCreationDate)';
}


}

/// @nodoc
abstract mixin class $RequestAuthenEngagementCopyWith<$Res>  {
  factory $RequestAuthenEngagementCopyWith(RequestAuthenEngagement value, $Res Function(RequestAuthenEngagement) _then) = _$RequestAuthenEngagementCopyWithImpl;
@useResult
$Res call({
 String departement, String competence, String disponibiliry, bool submitEngagement, String endCreationDate
});




}
/// @nodoc
class _$RequestAuthenEngagementCopyWithImpl<$Res>
    implements $RequestAuthenEngagementCopyWith<$Res> {
  _$RequestAuthenEngagementCopyWithImpl(this._self, this._then);

  final RequestAuthenEngagement _self;
  final $Res Function(RequestAuthenEngagement) _then;

/// Create a copy of RequestAuthenEngagement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? departement = null,Object? competence = null,Object? disponibiliry = null,Object? submitEngagement = null,Object? endCreationDate = null,}) {
  return _then(_self.copyWith(
departement: null == departement ? _self.departement : departement // ignore: cast_nullable_to_non_nullable
as String,competence: null == competence ? _self.competence : competence // ignore: cast_nullable_to_non_nullable
as String,disponibiliry: null == disponibiliry ? _self.disponibiliry : disponibiliry // ignore: cast_nullable_to_non_nullable
as String,submitEngagement: null == submitEngagement ? _self.submitEngagement : submitEngagement // ignore: cast_nullable_to_non_nullable
as bool,endCreationDate: null == endCreationDate ? _self.endCreationDate : endCreationDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAuthenEngagement].
extension RequestAuthenEngagementPatterns on RequestAuthenEngagement {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestAuthenEngagement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestAuthenEngagement() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestAuthenEngagement value)  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenEngagement():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestAuthenEngagement value)?  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenEngagement() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String departement,  String competence,  String disponibiliry,  bool submitEngagement,  String endCreationDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestAuthenEngagement() when $default != null:
return $default(_that.departement,_that.competence,_that.disponibiliry,_that.submitEngagement,_that.endCreationDate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String departement,  String competence,  String disponibiliry,  bool submitEngagement,  String endCreationDate)  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenEngagement():
return $default(_that.departement,_that.competence,_that.disponibiliry,_that.submitEngagement,_that.endCreationDate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String departement,  String competence,  String disponibiliry,  bool submitEngagement,  String endCreationDate)?  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenEngagement() when $default != null:
return $default(_that.departement,_that.competence,_that.disponibiliry,_that.submitEngagement,_that.endCreationDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestAuthenEngagement implements RequestAuthenEngagement {
   _RequestAuthenEngagement({required this.departement, required this.competence, required this.disponibiliry, required this.submitEngagement, required this.endCreationDate});
  factory _RequestAuthenEngagement.fromJson(Map<String, dynamic> json) => _$RequestAuthenEngagementFromJson(json);

@override final  String departement;
@override final  String competence;
@override final  String disponibiliry;
@override final  bool submitEngagement;
@override final  String endCreationDate;

/// Create a copy of RequestAuthenEngagement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestAuthenEngagementCopyWith<_RequestAuthenEngagement> get copyWith => __$RequestAuthenEngagementCopyWithImpl<_RequestAuthenEngagement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestAuthenEngagementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestAuthenEngagement&&(identical(other.departement, departement) || other.departement == departement)&&(identical(other.competence, competence) || other.competence == competence)&&(identical(other.disponibiliry, disponibiliry) || other.disponibiliry == disponibiliry)&&(identical(other.submitEngagement, submitEngagement) || other.submitEngagement == submitEngagement)&&(identical(other.endCreationDate, endCreationDate) || other.endCreationDate == endCreationDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,departement,competence,disponibiliry,submitEngagement,endCreationDate);

@override
String toString() {
  return 'RequestAuthenEngagement(departement: $departement, competence: $competence, disponibiliry: $disponibiliry, submitEngagement: $submitEngagement, endCreationDate: $endCreationDate)';
}


}

/// @nodoc
abstract mixin class _$RequestAuthenEngagementCopyWith<$Res> implements $RequestAuthenEngagementCopyWith<$Res> {
  factory _$RequestAuthenEngagementCopyWith(_RequestAuthenEngagement value, $Res Function(_RequestAuthenEngagement) _then) = __$RequestAuthenEngagementCopyWithImpl;
@override @useResult
$Res call({
 String departement, String competence, String disponibiliry, bool submitEngagement, String endCreationDate
});




}
/// @nodoc
class __$RequestAuthenEngagementCopyWithImpl<$Res>
    implements _$RequestAuthenEngagementCopyWith<$Res> {
  __$RequestAuthenEngagementCopyWithImpl(this._self, this._then);

  final _RequestAuthenEngagement _self;
  final $Res Function(_RequestAuthenEngagement) _then;

/// Create a copy of RequestAuthenEngagement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? departement = null,Object? competence = null,Object? disponibiliry = null,Object? submitEngagement = null,Object? endCreationDate = null,}) {
  return _then(_RequestAuthenEngagement(
departement: null == departement ? _self.departement : departement // ignore: cast_nullable_to_non_nullable
as String,competence: null == competence ? _self.competence : competence // ignore: cast_nullable_to_non_nullable
as String,disponibiliry: null == disponibiliry ? _self.disponibiliry : disponibiliry // ignore: cast_nullable_to_non_nullable
as String,submitEngagement: null == submitEngagement ? _self.submitEngagement : submitEngagement // ignore: cast_nullable_to_non_nullable
as bool,endCreationDate: null == endCreationDate ? _self.endCreationDate : endCreationDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RequestAuthenProfileUpdateKey {

 String get menberId;
/// Create a copy of RequestAuthenProfileUpdateKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuthenProfileUpdateKeyCopyWith<RequestAuthenProfileUpdateKey> get copyWith => _$RequestAuthenProfileUpdateKeyCopyWithImpl<RequestAuthenProfileUpdateKey>(this as RequestAuthenProfileUpdateKey, _$identity);

  /// Serializes this RequestAuthenProfileUpdateKey to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuthenProfileUpdateKey&&(identical(other.menberId, menberId) || other.menberId == menberId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,menberId);

@override
String toString() {
  return 'RequestAuthenProfileUpdateKey(menberId: $menberId)';
}


}

/// @nodoc
abstract mixin class $RequestAuthenProfileUpdateKeyCopyWith<$Res>  {
  factory $RequestAuthenProfileUpdateKeyCopyWith(RequestAuthenProfileUpdateKey value, $Res Function(RequestAuthenProfileUpdateKey) _then) = _$RequestAuthenProfileUpdateKeyCopyWithImpl;
@useResult
$Res call({
 String menberId
});




}
/// @nodoc
class _$RequestAuthenProfileUpdateKeyCopyWithImpl<$Res>
    implements $RequestAuthenProfileUpdateKeyCopyWith<$Res> {
  _$RequestAuthenProfileUpdateKeyCopyWithImpl(this._self, this._then);

  final RequestAuthenProfileUpdateKey _self;
  final $Res Function(RequestAuthenProfileUpdateKey) _then;

/// Create a copy of RequestAuthenProfileUpdateKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? menberId = null,}) {
  return _then(_self.copyWith(
menberId: null == menberId ? _self.menberId : menberId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAuthenProfileUpdateKey].
extension RequestAuthenProfileUpdateKeyPatterns on RequestAuthenProfileUpdateKey {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestAuthenProfileUpdateKey value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateKey() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestAuthenProfileUpdateKey value)  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateKey():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestAuthenProfileUpdateKey value)?  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateKey() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String menberId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateKey() when $default != null:
return $default(_that.menberId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String menberId)  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateKey():
return $default(_that.menberId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String menberId)?  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateKey() when $default != null:
return $default(_that.menberId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestAuthenProfileUpdateKey implements RequestAuthenProfileUpdateKey {
   _RequestAuthenProfileUpdateKey({required this.menberId});
  factory _RequestAuthenProfileUpdateKey.fromJson(Map<String, dynamic> json) => _$RequestAuthenProfileUpdateKeyFromJson(json);

@override final  String menberId;

/// Create a copy of RequestAuthenProfileUpdateKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestAuthenProfileUpdateKeyCopyWith<_RequestAuthenProfileUpdateKey> get copyWith => __$RequestAuthenProfileUpdateKeyCopyWithImpl<_RequestAuthenProfileUpdateKey>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestAuthenProfileUpdateKeyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestAuthenProfileUpdateKey&&(identical(other.menberId, menberId) || other.menberId == menberId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,menberId);

@override
String toString() {
  return 'RequestAuthenProfileUpdateKey(menberId: $menberId)';
}


}

/// @nodoc
abstract mixin class _$RequestAuthenProfileUpdateKeyCopyWith<$Res> implements $RequestAuthenProfileUpdateKeyCopyWith<$Res> {
  factory _$RequestAuthenProfileUpdateKeyCopyWith(_RequestAuthenProfileUpdateKey value, $Res Function(_RequestAuthenProfileUpdateKey) _then) = __$RequestAuthenProfileUpdateKeyCopyWithImpl;
@override @useResult
$Res call({
 String menberId
});




}
/// @nodoc
class __$RequestAuthenProfileUpdateKeyCopyWithImpl<$Res>
    implements _$RequestAuthenProfileUpdateKeyCopyWith<$Res> {
  __$RequestAuthenProfileUpdateKeyCopyWithImpl(this._self, this._then);

  final _RequestAuthenProfileUpdateKey _self;
  final $Res Function(_RequestAuthenProfileUpdateKey) _then;

/// Create a copy of RequestAuthenProfileUpdateKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? menberId = null,}) {
  return _then(_RequestAuthenProfileUpdateKey(
menberId: null == menberId ? _self.menberId : menberId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RequestAuthenProfileUpdateCellule {

 String get celluleId;
/// Create a copy of RequestAuthenProfileUpdateCellule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuthenProfileUpdateCelluleCopyWith<RequestAuthenProfileUpdateCellule> get copyWith => _$RequestAuthenProfileUpdateCelluleCopyWithImpl<RequestAuthenProfileUpdateCellule>(this as RequestAuthenProfileUpdateCellule, _$identity);

  /// Serializes this RequestAuthenProfileUpdateCellule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuthenProfileUpdateCellule&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,celluleId);

@override
String toString() {
  return 'RequestAuthenProfileUpdateCellule(celluleId: $celluleId)';
}


}

/// @nodoc
abstract mixin class $RequestAuthenProfileUpdateCelluleCopyWith<$Res>  {
  factory $RequestAuthenProfileUpdateCelluleCopyWith(RequestAuthenProfileUpdateCellule value, $Res Function(RequestAuthenProfileUpdateCellule) _then) = _$RequestAuthenProfileUpdateCelluleCopyWithImpl;
@useResult
$Res call({
 String celluleId
});




}
/// @nodoc
class _$RequestAuthenProfileUpdateCelluleCopyWithImpl<$Res>
    implements $RequestAuthenProfileUpdateCelluleCopyWith<$Res> {
  _$RequestAuthenProfileUpdateCelluleCopyWithImpl(this._self, this._then);

  final RequestAuthenProfileUpdateCellule _self;
  final $Res Function(RequestAuthenProfileUpdateCellule) _then;

/// Create a copy of RequestAuthenProfileUpdateCellule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? celluleId = null,}) {
  return _then(_self.copyWith(
celluleId: null == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAuthenProfileUpdateCellule].
extension RequestAuthenProfileUpdateCellulePatterns on RequestAuthenProfileUpdateCellule {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestAuthenProfileUpdateCellule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateCellule() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestAuthenProfileUpdateCellule value)  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateCellule():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestAuthenProfileUpdateCellule value)?  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateCellule() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String celluleId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateCellule() when $default != null:
return $default(_that.celluleId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String celluleId)  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateCellule():
return $default(_that.celluleId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String celluleId)?  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateCellule() when $default != null:
return $default(_that.celluleId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestAuthenProfileUpdateCellule implements RequestAuthenProfileUpdateCellule {
   _RequestAuthenProfileUpdateCellule({required this.celluleId});
  factory _RequestAuthenProfileUpdateCellule.fromJson(Map<String, dynamic> json) => _$RequestAuthenProfileUpdateCelluleFromJson(json);

@override final  String celluleId;

/// Create a copy of RequestAuthenProfileUpdateCellule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestAuthenProfileUpdateCelluleCopyWith<_RequestAuthenProfileUpdateCellule> get copyWith => __$RequestAuthenProfileUpdateCelluleCopyWithImpl<_RequestAuthenProfileUpdateCellule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestAuthenProfileUpdateCelluleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestAuthenProfileUpdateCellule&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,celluleId);

@override
String toString() {
  return 'RequestAuthenProfileUpdateCellule(celluleId: $celluleId)';
}


}

/// @nodoc
abstract mixin class _$RequestAuthenProfileUpdateCelluleCopyWith<$Res> implements $RequestAuthenProfileUpdateCelluleCopyWith<$Res> {
  factory _$RequestAuthenProfileUpdateCelluleCopyWith(_RequestAuthenProfileUpdateCellule value, $Res Function(_RequestAuthenProfileUpdateCellule) _then) = __$RequestAuthenProfileUpdateCelluleCopyWithImpl;
@override @useResult
$Res call({
 String celluleId
});




}
/// @nodoc
class __$RequestAuthenProfileUpdateCelluleCopyWithImpl<$Res>
    implements _$RequestAuthenProfileUpdateCelluleCopyWith<$Res> {
  __$RequestAuthenProfileUpdateCelluleCopyWithImpl(this._self, this._then);

  final _RequestAuthenProfileUpdateCellule _self;
  final $Res Function(_RequestAuthenProfileUpdateCellule) _then;

/// Create a copy of RequestAuthenProfileUpdateCellule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? celluleId = null,}) {
  return _then(_RequestAuthenProfileUpdateCellule(
celluleId: null == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RequestAuthenProfileUpdateImage {

 String get profileImage; String get menberId; String get createAt;
/// Create a copy of RequestAuthenProfileUpdateImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuthenProfileUpdateImageCopyWith<RequestAuthenProfileUpdateImage> get copyWith => _$RequestAuthenProfileUpdateImageCopyWithImpl<RequestAuthenProfileUpdateImage>(this as RequestAuthenProfileUpdateImage, _$identity);

  /// Serializes this RequestAuthenProfileUpdateImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuthenProfileUpdateImage&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.menberId, menberId) || other.menberId == menberId)&&(identical(other.createAt, createAt) || other.createAt == createAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileImage,menberId,createAt);

@override
String toString() {
  return 'RequestAuthenProfileUpdateImage(profileImage: $profileImage, menberId: $menberId, createAt: $createAt)';
}


}

/// @nodoc
abstract mixin class $RequestAuthenProfileUpdateImageCopyWith<$Res>  {
  factory $RequestAuthenProfileUpdateImageCopyWith(RequestAuthenProfileUpdateImage value, $Res Function(RequestAuthenProfileUpdateImage) _then) = _$RequestAuthenProfileUpdateImageCopyWithImpl;
@useResult
$Res call({
 String profileImage, String menberId, String createAt
});




}
/// @nodoc
class _$RequestAuthenProfileUpdateImageCopyWithImpl<$Res>
    implements $RequestAuthenProfileUpdateImageCopyWith<$Res> {
  _$RequestAuthenProfileUpdateImageCopyWithImpl(this._self, this._then);

  final RequestAuthenProfileUpdateImage _self;
  final $Res Function(RequestAuthenProfileUpdateImage) _then;

/// Create a copy of RequestAuthenProfileUpdateImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profileImage = null,Object? menberId = null,Object? createAt = null,}) {
  return _then(_self.copyWith(
profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,menberId: null == menberId ? _self.menberId : menberId // ignore: cast_nullable_to_non_nullable
as String,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAuthenProfileUpdateImage].
extension RequestAuthenProfileUpdateImagePatterns on RequestAuthenProfileUpdateImage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestAuthenProfileUpdateImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateImage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestAuthenProfileUpdateImage value)  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateImage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestAuthenProfileUpdateImage value)?  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateImage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String profileImage,  String menberId,  String createAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateImage() when $default != null:
return $default(_that.profileImage,_that.menberId,_that.createAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String profileImage,  String menberId,  String createAt)  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateImage():
return $default(_that.profileImage,_that.menberId,_that.createAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String profileImage,  String menberId,  String createAt)?  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateImage() when $default != null:
return $default(_that.profileImage,_that.menberId,_that.createAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestAuthenProfileUpdateImage implements RequestAuthenProfileUpdateImage {
   _RequestAuthenProfileUpdateImage({required this.profileImage, required this.menberId, required this.createAt});
  factory _RequestAuthenProfileUpdateImage.fromJson(Map<String, dynamic> json) => _$RequestAuthenProfileUpdateImageFromJson(json);

@override final  String profileImage;
@override final  String menberId;
@override final  String createAt;

/// Create a copy of RequestAuthenProfileUpdateImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestAuthenProfileUpdateImageCopyWith<_RequestAuthenProfileUpdateImage> get copyWith => __$RequestAuthenProfileUpdateImageCopyWithImpl<_RequestAuthenProfileUpdateImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestAuthenProfileUpdateImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestAuthenProfileUpdateImage&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.menberId, menberId) || other.menberId == menberId)&&(identical(other.createAt, createAt) || other.createAt == createAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileImage,menberId,createAt);

@override
String toString() {
  return 'RequestAuthenProfileUpdateImage(profileImage: $profileImage, menberId: $menberId, createAt: $createAt)';
}


}

/// @nodoc
abstract mixin class _$RequestAuthenProfileUpdateImageCopyWith<$Res> implements $RequestAuthenProfileUpdateImageCopyWith<$Res> {
  factory _$RequestAuthenProfileUpdateImageCopyWith(_RequestAuthenProfileUpdateImage value, $Res Function(_RequestAuthenProfileUpdateImage) _then) = __$RequestAuthenProfileUpdateImageCopyWithImpl;
@override @useResult
$Res call({
 String profileImage, String menberId, String createAt
});




}
/// @nodoc
class __$RequestAuthenProfileUpdateImageCopyWithImpl<$Res>
    implements _$RequestAuthenProfileUpdateImageCopyWith<$Res> {
  __$RequestAuthenProfileUpdateImageCopyWithImpl(this._self, this._then);

  final _RequestAuthenProfileUpdateImage _self;
  final $Res Function(_RequestAuthenProfileUpdateImage) _then;

/// Create a copy of RequestAuthenProfileUpdateImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileImage = null,Object? menberId = null,Object? createAt = null,}) {
  return _then(_RequestAuthenProfileUpdateImage(
profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,menberId: null == menberId ? _self.menberId : menberId // ignore: cast_nullable_to_non_nullable
as String,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RequestAuthenSignIn {

 String get contact; String get email; String get password;
/// Create a copy of RequestAuthenSignIn
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuthenSignInCopyWith<RequestAuthenSignIn> get copyWith => _$RequestAuthenSignInCopyWithImpl<RequestAuthenSignIn>(this as RequestAuthenSignIn, _$identity);

  /// Serializes this RequestAuthenSignIn to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuthenSignIn&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contact,email,password);

@override
String toString() {
  return 'RequestAuthenSignIn(contact: $contact, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $RequestAuthenSignInCopyWith<$Res>  {
  factory $RequestAuthenSignInCopyWith(RequestAuthenSignIn value, $Res Function(RequestAuthenSignIn) _then) = _$RequestAuthenSignInCopyWithImpl;
@useResult
$Res call({
 String contact, String email, String password
});




}
/// @nodoc
class _$RequestAuthenSignInCopyWithImpl<$Res>
    implements $RequestAuthenSignInCopyWith<$Res> {
  _$RequestAuthenSignInCopyWithImpl(this._self, this._then);

  final RequestAuthenSignIn _self;
  final $Res Function(RequestAuthenSignIn) _then;

/// Create a copy of RequestAuthenSignIn
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contact = null,Object? email = null,Object? password = null,}) {
  return _then(_self.copyWith(
contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAuthenSignIn].
extension RequestAuthenSignInPatterns on RequestAuthenSignIn {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestAuthenSignIn value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestAuthenSignIn() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestAuthenSignIn value)  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenSignIn():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestAuthenSignIn value)?  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenSignIn() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String contact,  String email,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestAuthenSignIn() when $default != null:
return $default(_that.contact,_that.email,_that.password);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String contact,  String email,  String password)  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenSignIn():
return $default(_that.contact,_that.email,_that.password);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String contact,  String email,  String password)?  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenSignIn() when $default != null:
return $default(_that.contact,_that.email,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestAuthenSignIn implements RequestAuthenSignIn {
   _RequestAuthenSignIn({required this.contact, required this.email, required this.password});
  factory _RequestAuthenSignIn.fromJson(Map<String, dynamic> json) => _$RequestAuthenSignInFromJson(json);

@override final  String contact;
@override final  String email;
@override final  String password;

/// Create a copy of RequestAuthenSignIn
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestAuthenSignInCopyWith<_RequestAuthenSignIn> get copyWith => __$RequestAuthenSignInCopyWithImpl<_RequestAuthenSignIn>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestAuthenSignInToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestAuthenSignIn&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contact,email,password);

@override
String toString() {
  return 'RequestAuthenSignIn(contact: $contact, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$RequestAuthenSignInCopyWith<$Res> implements $RequestAuthenSignInCopyWith<$Res> {
  factory _$RequestAuthenSignInCopyWith(_RequestAuthenSignIn value, $Res Function(_RequestAuthenSignIn) _then) = __$RequestAuthenSignInCopyWithImpl;
@override @useResult
$Res call({
 String contact, String email, String password
});




}
/// @nodoc
class __$RequestAuthenSignInCopyWithImpl<$Res>
    implements _$RequestAuthenSignInCopyWith<$Res> {
  __$RequestAuthenSignInCopyWithImpl(this._self, this._then);

  final _RequestAuthenSignIn _self;
  final $Res Function(_RequestAuthenSignIn) _then;

/// Create a copy of RequestAuthenSignIn
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contact = null,Object? email = null,Object? password = null,}) {
  return _then(_RequestAuthenSignIn(
contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RequestAuthenUpdateProfileKey {

 String get menberId; String get deviceId;
/// Create a copy of RequestAuthenUpdateProfileKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuthenUpdateProfileKeyCopyWith<RequestAuthenUpdateProfileKey> get copyWith => _$RequestAuthenUpdateProfileKeyCopyWithImpl<RequestAuthenUpdateProfileKey>(this as RequestAuthenUpdateProfileKey, _$identity);

  /// Serializes this RequestAuthenUpdateProfileKey to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuthenUpdateProfileKey&&(identical(other.menberId, menberId) || other.menberId == menberId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,menberId,deviceId);

@override
String toString() {
  return 'RequestAuthenUpdateProfileKey(menberId: $menberId, deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class $RequestAuthenUpdateProfileKeyCopyWith<$Res>  {
  factory $RequestAuthenUpdateProfileKeyCopyWith(RequestAuthenUpdateProfileKey value, $Res Function(RequestAuthenUpdateProfileKey) _then) = _$RequestAuthenUpdateProfileKeyCopyWithImpl;
@useResult
$Res call({
 String menberId, String deviceId
});




}
/// @nodoc
class _$RequestAuthenUpdateProfileKeyCopyWithImpl<$Res>
    implements $RequestAuthenUpdateProfileKeyCopyWith<$Res> {
  _$RequestAuthenUpdateProfileKeyCopyWithImpl(this._self, this._then);

  final RequestAuthenUpdateProfileKey _self;
  final $Res Function(RequestAuthenUpdateProfileKey) _then;

/// Create a copy of RequestAuthenUpdateProfileKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? menberId = null,Object? deviceId = null,}) {
  return _then(_self.copyWith(
menberId: null == menberId ? _self.menberId : menberId // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAuthenUpdateProfileKey].
extension RequestAuthenUpdateProfileKeyPatterns on RequestAuthenUpdateProfileKey {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestAuthenUpdateProfileKey value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestAuthenUpdateProfileKey() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestAuthenUpdateProfileKey value)  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenUpdateProfileKey():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestAuthenUpdateProfileKey value)?  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenUpdateProfileKey() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String menberId,  String deviceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestAuthenUpdateProfileKey() when $default != null:
return $default(_that.menberId,_that.deviceId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String menberId,  String deviceId)  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenUpdateProfileKey():
return $default(_that.menberId,_that.deviceId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String menberId,  String deviceId)?  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenUpdateProfileKey() when $default != null:
return $default(_that.menberId,_that.deviceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestAuthenUpdateProfileKey implements RequestAuthenUpdateProfileKey {
   _RequestAuthenUpdateProfileKey({required this.menberId, required this.deviceId});
  factory _RequestAuthenUpdateProfileKey.fromJson(Map<String, dynamic> json) => _$RequestAuthenUpdateProfileKeyFromJson(json);

@override final  String menberId;
@override final  String deviceId;

/// Create a copy of RequestAuthenUpdateProfileKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestAuthenUpdateProfileKeyCopyWith<_RequestAuthenUpdateProfileKey> get copyWith => __$RequestAuthenUpdateProfileKeyCopyWithImpl<_RequestAuthenUpdateProfileKey>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestAuthenUpdateProfileKeyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestAuthenUpdateProfileKey&&(identical(other.menberId, menberId) || other.menberId == menberId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,menberId,deviceId);

@override
String toString() {
  return 'RequestAuthenUpdateProfileKey(menberId: $menberId, deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class _$RequestAuthenUpdateProfileKeyCopyWith<$Res> implements $RequestAuthenUpdateProfileKeyCopyWith<$Res> {
  factory _$RequestAuthenUpdateProfileKeyCopyWith(_RequestAuthenUpdateProfileKey value, $Res Function(_RequestAuthenUpdateProfileKey) _then) = __$RequestAuthenUpdateProfileKeyCopyWithImpl;
@override @useResult
$Res call({
 String menberId, String deviceId
});




}
/// @nodoc
class __$RequestAuthenUpdateProfileKeyCopyWithImpl<$Res>
    implements _$RequestAuthenUpdateProfileKeyCopyWith<$Res> {
  __$RequestAuthenUpdateProfileKeyCopyWithImpl(this._self, this._then);

  final _RequestAuthenUpdateProfileKey _self;
  final $Res Function(_RequestAuthenUpdateProfileKey) _then;

/// Create a copy of RequestAuthenUpdateProfileKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? menberId = null,Object? deviceId = null,}) {
  return _then(_RequestAuthenUpdateProfileKey(
menberId: null == menberId ? _self.menberId : menberId // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
