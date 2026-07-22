// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_create_compte.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateCompteProfileState {

 TextFormz get name; TextFormz get dateNaissance; TextFormz get zoneResidence; TextFormz get profileImage; PhoneFormz get contact; TextFormz get email; TextFormz get nationalite; TextFormz get password; TextFormz get isUpdate;// required String responsableCelluleId,
 FormzSubmissionStatus get status; String get errorMessage; bool get isValide;
/// Create a copy of CreateCompteProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCompteProfileStateCopyWith<CreateCompteProfileState> get copyWith => _$CreateCompteProfileStateCopyWithImpl<CreateCompteProfileState>(this as CreateCompteProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCompteProfileState&&(identical(other.name, name) || other.name == name)&&(identical(other.dateNaissance, dateNaissance) || other.dateNaissance == dateNaissance)&&(identical(other.zoneResidence, zoneResidence) || other.zoneResidence == zoneResidence)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.email, email) || other.email == email)&&(identical(other.nationalite, nationalite) || other.nationalite == nationalite)&&(identical(other.password, password) || other.password == password)&&(identical(other.isUpdate, isUpdate) || other.isUpdate == isUpdate)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,name,dateNaissance,zoneResidence,profileImage,contact,email,nationalite,password,isUpdate,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteProfileState(name: $name, dateNaissance: $dateNaissance, zoneResidence: $zoneResidence, profileImage: $profileImage, contact: $contact, email: $email, nationalite: $nationalite, password: $password, isUpdate: $isUpdate, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class $CreateCompteProfileStateCopyWith<$Res>  {
  factory $CreateCompteProfileStateCopyWith(CreateCompteProfileState value, $Res Function(CreateCompteProfileState) _then) = _$CreateCompteProfileStateCopyWithImpl;
@useResult
$Res call({
 TextFormz name, TextFormz dateNaissance, TextFormz zoneResidence, TextFormz profileImage, PhoneFormz contact, TextFormz email, TextFormz nationalite, TextFormz password, TextFormz isUpdate, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class _$CreateCompteProfileStateCopyWithImpl<$Res>
    implements $CreateCompteProfileStateCopyWith<$Res> {
  _$CreateCompteProfileStateCopyWithImpl(this._self, this._then);

  final CreateCompteProfileState _self;
  final $Res Function(CreateCompteProfileState) _then;

/// Create a copy of CreateCompteProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? dateNaissance = null,Object? zoneResidence = null,Object? profileImage = null,Object? contact = null,Object? email = null,Object? nationalite = null,Object? password = null,Object? isUpdate = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as TextFormz,dateNaissance: null == dateNaissance ? _self.dateNaissance : dateNaissance // ignore: cast_nullable_to_non_nullable
as TextFormz,zoneResidence: null == zoneResidence ? _self.zoneResidence : zoneResidence // ignore: cast_nullable_to_non_nullable
as TextFormz,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as TextFormz,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as PhoneFormz,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as TextFormz,nationalite: null == nationalite ? _self.nationalite : nationalite // ignore: cast_nullable_to_non_nullable
as TextFormz,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as TextFormz,isUpdate: null == isUpdate ? _self.isUpdate : isUpdate // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCompteProfileState].
extension CreateCompteProfileStatePatterns on CreateCompteProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCompteProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCompteProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCompteProfileState value)  $default,){
final _that = this;
switch (_that) {
case _CreateCompteProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCompteProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCompteProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextFormz name,  TextFormz dateNaissance,  TextFormz zoneResidence,  TextFormz profileImage,  PhoneFormz contact,  TextFormz email,  TextFormz nationalite,  TextFormz password,  TextFormz isUpdate,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCompteProfileState() when $default != null:
return $default(_that.name,_that.dateNaissance,_that.zoneResidence,_that.profileImage,_that.contact,_that.email,_that.nationalite,_that.password,_that.isUpdate,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextFormz name,  TextFormz dateNaissance,  TextFormz zoneResidence,  TextFormz profileImage,  PhoneFormz contact,  TextFormz email,  TextFormz nationalite,  TextFormz password,  TextFormz isUpdate,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)  $default,) {final _that = this;
switch (_that) {
case _CreateCompteProfileState():
return $default(_that.name,_that.dateNaissance,_that.zoneResidence,_that.profileImage,_that.contact,_that.email,_that.nationalite,_that.password,_that.isUpdate,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextFormz name,  TextFormz dateNaissance,  TextFormz zoneResidence,  TextFormz profileImage,  PhoneFormz contact,  TextFormz email,  TextFormz nationalite,  TextFormz password,  TextFormz isUpdate,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,) {final _that = this;
switch (_that) {
case _CreateCompteProfileState() when $default != null:
return $default(_that.name,_that.dateNaissance,_that.zoneResidence,_that.profileImage,_that.contact,_that.email,_that.nationalite,_that.password,_that.isUpdate,_that.status,_that.errorMessage,_that.isValide);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCompteProfileState implements CreateCompteProfileState {
   _CreateCompteProfileState({required this.name, required this.dateNaissance, required this.zoneResidence, required this.profileImage, required this.contact, required this.email, required this.nationalite, required this.password, required this.isUpdate, required this.status, required this.errorMessage, required this.isValide});
  

@override final  TextFormz name;
@override final  TextFormz dateNaissance;
@override final  TextFormz zoneResidence;
@override final  TextFormz profileImage;
@override final  PhoneFormz contact;
@override final  TextFormz email;
@override final  TextFormz nationalite;
@override final  TextFormz password;
@override final  TextFormz isUpdate;
// required String responsableCelluleId,
@override final  FormzSubmissionStatus status;
@override final  String errorMessage;
@override final  bool isValide;

/// Create a copy of CreateCompteProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCompteProfileStateCopyWith<_CreateCompteProfileState> get copyWith => __$CreateCompteProfileStateCopyWithImpl<_CreateCompteProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCompteProfileState&&(identical(other.name, name) || other.name == name)&&(identical(other.dateNaissance, dateNaissance) || other.dateNaissance == dateNaissance)&&(identical(other.zoneResidence, zoneResidence) || other.zoneResidence == zoneResidence)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.email, email) || other.email == email)&&(identical(other.nationalite, nationalite) || other.nationalite == nationalite)&&(identical(other.password, password) || other.password == password)&&(identical(other.isUpdate, isUpdate) || other.isUpdate == isUpdate)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,name,dateNaissance,zoneResidence,profileImage,contact,email,nationalite,password,isUpdate,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteProfileState(name: $name, dateNaissance: $dateNaissance, zoneResidence: $zoneResidence, profileImage: $profileImage, contact: $contact, email: $email, nationalite: $nationalite, password: $password, isUpdate: $isUpdate, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class _$CreateCompteProfileStateCopyWith<$Res> implements $CreateCompteProfileStateCopyWith<$Res> {
  factory _$CreateCompteProfileStateCopyWith(_CreateCompteProfileState value, $Res Function(_CreateCompteProfileState) _then) = __$CreateCompteProfileStateCopyWithImpl;
@override @useResult
$Res call({
 TextFormz name, TextFormz dateNaissance, TextFormz zoneResidence, TextFormz profileImage, PhoneFormz contact, TextFormz email, TextFormz nationalite, TextFormz password, TextFormz isUpdate, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class __$CreateCompteProfileStateCopyWithImpl<$Res>
    implements _$CreateCompteProfileStateCopyWith<$Res> {
  __$CreateCompteProfileStateCopyWithImpl(this._self, this._then);

  final _CreateCompteProfileState _self;
  final $Res Function(_CreateCompteProfileState) _then;

/// Create a copy of CreateCompteProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? dateNaissance = null,Object? zoneResidence = null,Object? profileImage = null,Object? contact = null,Object? email = null,Object? nationalite = null,Object? password = null,Object? isUpdate = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_CreateCompteProfileState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as TextFormz,dateNaissance: null == dateNaissance ? _self.dateNaissance : dateNaissance // ignore: cast_nullable_to_non_nullable
as TextFormz,zoneResidence: null == zoneResidence ? _self.zoneResidence : zoneResidence // ignore: cast_nullable_to_non_nullable
as TextFormz,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as TextFormz,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as PhoneFormz,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as TextFormz,nationalite: null == nationalite ? _self.nationalite : nationalite // ignore: cast_nullable_to_non_nullable
as TextFormz,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as TextFormz,isUpdate: null == isUpdate ? _self.isUpdate : isUpdate // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$CreateCompteSocialState {

 TextFormz get statusSocial; TextFormz get activity; TextFormz get nivauEtude; TextFormz get matrimonial; TextFormz get orphelin; FormzSubmissionStatus get status; String get errorMessage; bool get isValide;
/// Create a copy of CreateCompteSocialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCompteSocialStateCopyWith<CreateCompteSocialState> get copyWith => _$CreateCompteSocialStateCopyWithImpl<CreateCompteSocialState>(this as CreateCompteSocialState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCompteSocialState&&(identical(other.statusSocial, statusSocial) || other.statusSocial == statusSocial)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.nivauEtude, nivauEtude) || other.nivauEtude == nivauEtude)&&(identical(other.matrimonial, matrimonial) || other.matrimonial == matrimonial)&&(identical(other.orphelin, orphelin) || other.orphelin == orphelin)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,statusSocial,activity,nivauEtude,matrimonial,orphelin,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteSocialState(statusSocial: $statusSocial, activity: $activity, nivauEtude: $nivauEtude, matrimonial: $matrimonial, orphelin: $orphelin, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class $CreateCompteSocialStateCopyWith<$Res>  {
  factory $CreateCompteSocialStateCopyWith(CreateCompteSocialState value, $Res Function(CreateCompteSocialState) _then) = _$CreateCompteSocialStateCopyWithImpl;
@useResult
$Res call({
 TextFormz statusSocial, TextFormz activity, TextFormz nivauEtude, TextFormz matrimonial, TextFormz orphelin, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class _$CreateCompteSocialStateCopyWithImpl<$Res>
    implements $CreateCompteSocialStateCopyWith<$Res> {
  _$CreateCompteSocialStateCopyWithImpl(this._self, this._then);

  final CreateCompteSocialState _self;
  final $Res Function(CreateCompteSocialState) _then;

/// Create a copy of CreateCompteSocialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusSocial = null,Object? activity = null,Object? nivauEtude = null,Object? matrimonial = null,Object? orphelin = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_self.copyWith(
statusSocial: null == statusSocial ? _self.statusSocial : statusSocial // ignore: cast_nullable_to_non_nullable
as TextFormz,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as TextFormz,nivauEtude: null == nivauEtude ? _self.nivauEtude : nivauEtude // ignore: cast_nullable_to_non_nullable
as TextFormz,matrimonial: null == matrimonial ? _self.matrimonial : matrimonial // ignore: cast_nullable_to_non_nullable
as TextFormz,orphelin: null == orphelin ? _self.orphelin : orphelin // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCompteSocialState].
extension CreateCompteSocialStatePatterns on CreateCompteSocialState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCompteSocialState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCompteSocialState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCompteSocialState value)  $default,){
final _that = this;
switch (_that) {
case _CreateCompteSocialState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCompteSocialState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCompteSocialState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextFormz statusSocial,  TextFormz activity,  TextFormz nivauEtude,  TextFormz matrimonial,  TextFormz orphelin,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCompteSocialState() when $default != null:
return $default(_that.statusSocial,_that.activity,_that.nivauEtude,_that.matrimonial,_that.orphelin,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextFormz statusSocial,  TextFormz activity,  TextFormz nivauEtude,  TextFormz matrimonial,  TextFormz orphelin,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)  $default,) {final _that = this;
switch (_that) {
case _CreateCompteSocialState():
return $default(_that.statusSocial,_that.activity,_that.nivauEtude,_that.matrimonial,_that.orphelin,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextFormz statusSocial,  TextFormz activity,  TextFormz nivauEtude,  TextFormz matrimonial,  TextFormz orphelin,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,) {final _that = this;
switch (_that) {
case _CreateCompteSocialState() when $default != null:
return $default(_that.statusSocial,_that.activity,_that.nivauEtude,_that.matrimonial,_that.orphelin,_that.status,_that.errorMessage,_that.isValide);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCompteSocialState implements CreateCompteSocialState {
  const _CreateCompteSocialState({required this.statusSocial, required this.activity, required this.nivauEtude, required this.matrimonial, required this.orphelin, required this.status, required this.errorMessage, required this.isValide});
  

@override final  TextFormz statusSocial;
@override final  TextFormz activity;
@override final  TextFormz nivauEtude;
@override final  TextFormz matrimonial;
@override final  TextFormz orphelin;
@override final  FormzSubmissionStatus status;
@override final  String errorMessage;
@override final  bool isValide;

/// Create a copy of CreateCompteSocialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCompteSocialStateCopyWith<_CreateCompteSocialState> get copyWith => __$CreateCompteSocialStateCopyWithImpl<_CreateCompteSocialState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCompteSocialState&&(identical(other.statusSocial, statusSocial) || other.statusSocial == statusSocial)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.nivauEtude, nivauEtude) || other.nivauEtude == nivauEtude)&&(identical(other.matrimonial, matrimonial) || other.matrimonial == matrimonial)&&(identical(other.orphelin, orphelin) || other.orphelin == orphelin)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,statusSocial,activity,nivauEtude,matrimonial,orphelin,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteSocialState(statusSocial: $statusSocial, activity: $activity, nivauEtude: $nivauEtude, matrimonial: $matrimonial, orphelin: $orphelin, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class _$CreateCompteSocialStateCopyWith<$Res> implements $CreateCompteSocialStateCopyWith<$Res> {
  factory _$CreateCompteSocialStateCopyWith(_CreateCompteSocialState value, $Res Function(_CreateCompteSocialState) _then) = __$CreateCompteSocialStateCopyWithImpl;
@override @useResult
$Res call({
 TextFormz statusSocial, TextFormz activity, TextFormz nivauEtude, TextFormz matrimonial, TextFormz orphelin, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class __$CreateCompteSocialStateCopyWithImpl<$Res>
    implements _$CreateCompteSocialStateCopyWith<$Res> {
  __$CreateCompteSocialStateCopyWithImpl(this._self, this._then);

  final _CreateCompteSocialState _self;
  final $Res Function(_CreateCompteSocialState) _then;

/// Create a copy of CreateCompteSocialState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusSocial = null,Object? activity = null,Object? nivauEtude = null,Object? matrimonial = null,Object? orphelin = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_CreateCompteSocialState(
statusSocial: null == statusSocial ? _self.statusSocial : statusSocial // ignore: cast_nullable_to_non_nullable
as TextFormz,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as TextFormz,nivauEtude: null == nivauEtude ? _self.nivauEtude : nivauEtude // ignore: cast_nullable_to_non_nullable
as TextFormz,matrimonial: null == matrimonial ? _self.matrimonial : matrimonial // ignore: cast_nullable_to_non_nullable
as TextFormz,orphelin: null == orphelin ? _self.orphelin : orphelin // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$CreateCompteSpiritualLifeState {

 TextFormz get statusSpirituel; TextFormz get dateBaptme; TextFormz get cellulePriere; TextFormz get encadreur; TextFormz get celluleCode; TextFormz get celluleId; FormzSubmissionStatus get status; String get errorMessage; bool get isValide;
/// Create a copy of CreateCompteSpiritualLifeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCompteSpiritualLifeStateCopyWith<CreateCompteSpiritualLifeState> get copyWith => _$CreateCompteSpiritualLifeStateCopyWithImpl<CreateCompteSpiritualLifeState>(this as CreateCompteSpiritualLifeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCompteSpiritualLifeState&&(identical(other.statusSpirituel, statusSpirituel) || other.statusSpirituel == statusSpirituel)&&(identical(other.dateBaptme, dateBaptme) || other.dateBaptme == dateBaptme)&&(identical(other.cellulePriere, cellulePriere) || other.cellulePriere == cellulePriere)&&(identical(other.encadreur, encadreur) || other.encadreur == encadreur)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,statusSpirituel,dateBaptme,cellulePriere,encadreur,celluleCode,celluleId,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteSpiritualLifeState(statusSpirituel: $statusSpirituel, dateBaptme: $dateBaptme, cellulePriere: $cellulePriere, encadreur: $encadreur, celluleCode: $celluleCode, celluleId: $celluleId, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class $CreateCompteSpiritualLifeStateCopyWith<$Res>  {
  factory $CreateCompteSpiritualLifeStateCopyWith(CreateCompteSpiritualLifeState value, $Res Function(CreateCompteSpiritualLifeState) _then) = _$CreateCompteSpiritualLifeStateCopyWithImpl;
@useResult
$Res call({
 TextFormz statusSpirituel, TextFormz dateBaptme, TextFormz cellulePriere, TextFormz encadreur, TextFormz celluleCode, TextFormz celluleId, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class _$CreateCompteSpiritualLifeStateCopyWithImpl<$Res>
    implements $CreateCompteSpiritualLifeStateCopyWith<$Res> {
  _$CreateCompteSpiritualLifeStateCopyWithImpl(this._self, this._then);

  final CreateCompteSpiritualLifeState _self;
  final $Res Function(CreateCompteSpiritualLifeState) _then;

/// Create a copy of CreateCompteSpiritualLifeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusSpirituel = null,Object? dateBaptme = null,Object? cellulePriere = null,Object? encadreur = null,Object? celluleCode = null,Object? celluleId = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_self.copyWith(
statusSpirituel: null == statusSpirituel ? _self.statusSpirituel : statusSpirituel // ignore: cast_nullable_to_non_nullable
as TextFormz,dateBaptme: null == dateBaptme ? _self.dateBaptme : dateBaptme // ignore: cast_nullable_to_non_nullable
as TextFormz,cellulePriere: null == cellulePriere ? _self.cellulePriere : cellulePriere // ignore: cast_nullable_to_non_nullable
as TextFormz,encadreur: null == encadreur ? _self.encadreur : encadreur // ignore: cast_nullable_to_non_nullable
as TextFormz,celluleCode: null == celluleCode ? _self.celluleCode : celluleCode // ignore: cast_nullable_to_non_nullable
as TextFormz,celluleId: null == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCompteSpiritualLifeState].
extension CreateCompteSpiritualLifeStatePatterns on CreateCompteSpiritualLifeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCompteSpiritualLifeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCompteSpiritualLifeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCompteSpiritualLifeState value)  $default,){
final _that = this;
switch (_that) {
case _CreateCompteSpiritualLifeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCompteSpiritualLifeState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCompteSpiritualLifeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextFormz statusSpirituel,  TextFormz dateBaptme,  TextFormz cellulePriere,  TextFormz encadreur,  TextFormz celluleCode,  TextFormz celluleId,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCompteSpiritualLifeState() when $default != null:
return $default(_that.statusSpirituel,_that.dateBaptme,_that.cellulePriere,_that.encadreur,_that.celluleCode,_that.celluleId,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextFormz statusSpirituel,  TextFormz dateBaptme,  TextFormz cellulePriere,  TextFormz encadreur,  TextFormz celluleCode,  TextFormz celluleId,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)  $default,) {final _that = this;
switch (_that) {
case _CreateCompteSpiritualLifeState():
return $default(_that.statusSpirituel,_that.dateBaptme,_that.cellulePriere,_that.encadreur,_that.celluleCode,_that.celluleId,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextFormz statusSpirituel,  TextFormz dateBaptme,  TextFormz cellulePriere,  TextFormz encadreur,  TextFormz celluleCode,  TextFormz celluleId,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,) {final _that = this;
switch (_that) {
case _CreateCompteSpiritualLifeState() when $default != null:
return $default(_that.statusSpirituel,_that.dateBaptme,_that.cellulePriere,_that.encadreur,_that.celluleCode,_that.celluleId,_that.status,_that.errorMessage,_that.isValide);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCompteSpiritualLifeState implements CreateCompteSpiritualLifeState {
  const _CreateCompteSpiritualLifeState({required this.statusSpirituel, required this.dateBaptme, required this.cellulePriere, required this.encadreur, required this.celluleCode, required this.celluleId, required this.status, required this.errorMessage, required this.isValide});
  

@override final  TextFormz statusSpirituel;
@override final  TextFormz dateBaptme;
@override final  TextFormz cellulePriere;
@override final  TextFormz encadreur;
@override final  TextFormz celluleCode;
@override final  TextFormz celluleId;
@override final  FormzSubmissionStatus status;
@override final  String errorMessage;
@override final  bool isValide;

/// Create a copy of CreateCompteSpiritualLifeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCompteSpiritualLifeStateCopyWith<_CreateCompteSpiritualLifeState> get copyWith => __$CreateCompteSpiritualLifeStateCopyWithImpl<_CreateCompteSpiritualLifeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCompteSpiritualLifeState&&(identical(other.statusSpirituel, statusSpirituel) || other.statusSpirituel == statusSpirituel)&&(identical(other.dateBaptme, dateBaptme) || other.dateBaptme == dateBaptme)&&(identical(other.cellulePriere, cellulePriere) || other.cellulePriere == cellulePriere)&&(identical(other.encadreur, encadreur) || other.encadreur == encadreur)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,statusSpirituel,dateBaptme,cellulePriere,encadreur,celluleCode,celluleId,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteSpiritualLifeState(statusSpirituel: $statusSpirituel, dateBaptme: $dateBaptme, cellulePriere: $cellulePriere, encadreur: $encadreur, celluleCode: $celluleCode, celluleId: $celluleId, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class _$CreateCompteSpiritualLifeStateCopyWith<$Res> implements $CreateCompteSpiritualLifeStateCopyWith<$Res> {
  factory _$CreateCompteSpiritualLifeStateCopyWith(_CreateCompteSpiritualLifeState value, $Res Function(_CreateCompteSpiritualLifeState) _then) = __$CreateCompteSpiritualLifeStateCopyWithImpl;
@override @useResult
$Res call({
 TextFormz statusSpirituel, TextFormz dateBaptme, TextFormz cellulePriere, TextFormz encadreur, TextFormz celluleCode, TextFormz celluleId, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class __$CreateCompteSpiritualLifeStateCopyWithImpl<$Res>
    implements _$CreateCompteSpiritualLifeStateCopyWith<$Res> {
  __$CreateCompteSpiritualLifeStateCopyWithImpl(this._self, this._then);

  final _CreateCompteSpiritualLifeState _self;
  final $Res Function(_CreateCompteSpiritualLifeState) _then;

/// Create a copy of CreateCompteSpiritualLifeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusSpirituel = null,Object? dateBaptme = null,Object? cellulePriere = null,Object? encadreur = null,Object? celluleCode = null,Object? celluleId = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_CreateCompteSpiritualLifeState(
statusSpirituel: null == statusSpirituel ? _self.statusSpirituel : statusSpirituel // ignore: cast_nullable_to_non_nullable
as TextFormz,dateBaptme: null == dateBaptme ? _self.dateBaptme : dateBaptme // ignore: cast_nullable_to_non_nullable
as TextFormz,cellulePriere: null == cellulePriere ? _self.cellulePriere : cellulePriere // ignore: cast_nullable_to_non_nullable
as TextFormz,encadreur: null == encadreur ? _self.encadreur : encadreur // ignore: cast_nullable_to_non_nullable
as TextFormz,celluleCode: null == celluleCode ? _self.celluleCode : celluleCode // ignore: cast_nullable_to_non_nullable
as TextFormz,celluleId: null == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$CreateCompteEngagementState {

 TextFormz get departement; TextFormz get competence; TextFormz get disponibiliry; FormzSubmissionStatus get status; String get errorMessage; bool get isValide;
/// Create a copy of CreateCompteEngagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCompteEngagementStateCopyWith<CreateCompteEngagementState> get copyWith => _$CreateCompteEngagementStateCopyWithImpl<CreateCompteEngagementState>(this as CreateCompteEngagementState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCompteEngagementState&&(identical(other.departement, departement) || other.departement == departement)&&(identical(other.competence, competence) || other.competence == competence)&&(identical(other.disponibiliry, disponibiliry) || other.disponibiliry == disponibiliry)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,departement,competence,disponibiliry,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteEngagementState(departement: $departement, competence: $competence, disponibiliry: $disponibiliry, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class $CreateCompteEngagementStateCopyWith<$Res>  {
  factory $CreateCompteEngagementStateCopyWith(CreateCompteEngagementState value, $Res Function(CreateCompteEngagementState) _then) = _$CreateCompteEngagementStateCopyWithImpl;
@useResult
$Res call({
 TextFormz departement, TextFormz competence, TextFormz disponibiliry, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class _$CreateCompteEngagementStateCopyWithImpl<$Res>
    implements $CreateCompteEngagementStateCopyWith<$Res> {
  _$CreateCompteEngagementStateCopyWithImpl(this._self, this._then);

  final CreateCompteEngagementState _self;
  final $Res Function(CreateCompteEngagementState) _then;

/// Create a copy of CreateCompteEngagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? departement = null,Object? competence = null,Object? disponibiliry = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_self.copyWith(
departement: null == departement ? _self.departement : departement // ignore: cast_nullable_to_non_nullable
as TextFormz,competence: null == competence ? _self.competence : competence // ignore: cast_nullable_to_non_nullable
as TextFormz,disponibiliry: null == disponibiliry ? _self.disponibiliry : disponibiliry // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCompteEngagementState].
extension CreateCompteEngagementStatePatterns on CreateCompteEngagementState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCompteEngagementState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCompteEngagementState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCompteEngagementState value)  $default,){
final _that = this;
switch (_that) {
case _CreateCompteEngagementState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCompteEngagementState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCompteEngagementState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextFormz departement,  TextFormz competence,  TextFormz disponibiliry,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCompteEngagementState() when $default != null:
return $default(_that.departement,_that.competence,_that.disponibiliry,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextFormz departement,  TextFormz competence,  TextFormz disponibiliry,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)  $default,) {final _that = this;
switch (_that) {
case _CreateCompteEngagementState():
return $default(_that.departement,_that.competence,_that.disponibiliry,_that.status,_that.errorMessage,_that.isValide);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextFormz departement,  TextFormz competence,  TextFormz disponibiliry,  FormzSubmissionStatus status,  String errorMessage,  bool isValide)?  $default,) {final _that = this;
switch (_that) {
case _CreateCompteEngagementState() when $default != null:
return $default(_that.departement,_that.competence,_that.disponibiliry,_that.status,_that.errorMessage,_that.isValide);case _:
  return null;

}
}

}

/// @nodoc


class _CreateCompteEngagementState implements CreateCompteEngagementState {
  const _CreateCompteEngagementState({required this.departement, required this.competence, required this.disponibiliry, required this.status, required this.errorMessage, required this.isValide});
  

@override final  TextFormz departement;
@override final  TextFormz competence;
@override final  TextFormz disponibiliry;
@override final  FormzSubmissionStatus status;
@override final  String errorMessage;
@override final  bool isValide;

/// Create a copy of CreateCompteEngagementState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCompteEngagementStateCopyWith<_CreateCompteEngagementState> get copyWith => __$CreateCompteEngagementStateCopyWithImpl<_CreateCompteEngagementState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCompteEngagementState&&(identical(other.departement, departement) || other.departement == departement)&&(identical(other.competence, competence) || other.competence == competence)&&(identical(other.disponibiliry, disponibiliry) || other.disponibiliry == disponibiliry)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isValide, isValide) || other.isValide == isValide));
}


@override
int get hashCode => Object.hash(runtimeType,departement,competence,disponibiliry,status,errorMessage,isValide);

@override
String toString() {
  return 'CreateCompteEngagementState(departement: $departement, competence: $competence, disponibiliry: $disponibiliry, status: $status, errorMessage: $errorMessage, isValide: $isValide)';
}


}

/// @nodoc
abstract mixin class _$CreateCompteEngagementStateCopyWith<$Res> implements $CreateCompteEngagementStateCopyWith<$Res> {
  factory _$CreateCompteEngagementStateCopyWith(_CreateCompteEngagementState value, $Res Function(_CreateCompteEngagementState) _then) = __$CreateCompteEngagementStateCopyWithImpl;
@override @useResult
$Res call({
 TextFormz departement, TextFormz competence, TextFormz disponibiliry, FormzSubmissionStatus status, String errorMessage, bool isValide
});




}
/// @nodoc
class __$CreateCompteEngagementStateCopyWithImpl<$Res>
    implements _$CreateCompteEngagementStateCopyWith<$Res> {
  __$CreateCompteEngagementStateCopyWithImpl(this._self, this._then);

  final _CreateCompteEngagementState _self;
  final $Res Function(_CreateCompteEngagementState) _then;

/// Create a copy of CreateCompteEngagementState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? departement = null,Object? competence = null,Object? disponibiliry = null,Object? status = null,Object? errorMessage = null,Object? isValide = null,}) {
  return _then(_CreateCompteEngagementState(
departement: null == departement ? _self.departement : departement // ignore: cast_nullable_to_non_nullable
as TextFormz,competence: null == competence ? _self.competence : competence // ignore: cast_nullable_to_non_nullable
as TextFormz,disponibiliry: null == disponibiliry ? _self.disponibiliry : disponibiliry // ignore: cast_nullable_to_non_nullable
as TextFormz,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isValide: null == isValide ? _self.isValide : isValide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
