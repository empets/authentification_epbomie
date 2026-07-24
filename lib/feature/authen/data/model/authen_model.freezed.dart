// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthenResponseModel {

 String get nom; String get email; String get password; String get contact; String get role;
/// Create a copy of AuthenResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenResponseModelCopyWith<AuthenResponseModel> get copyWith => _$AuthenResponseModelCopyWithImpl<AuthenResponseModel>(this as AuthenResponseModel, _$identity);

  /// Serializes this AuthenResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenResponseModel&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nom,email,password,contact,role);

@override
String toString() {
  return 'AuthenResponseModel(nom: $nom, email: $email, password: $password, contact: $contact, role: $role)';
}


}

/// @nodoc
abstract mixin class $AuthenResponseModelCopyWith<$Res>  {
  factory $AuthenResponseModelCopyWith(AuthenResponseModel value, $Res Function(AuthenResponseModel) _then) = _$AuthenResponseModelCopyWithImpl;
@useResult
$Res call({
 String nom, String email, String password, String contact, String role
});




}
/// @nodoc
class _$AuthenResponseModelCopyWithImpl<$Res>
    implements $AuthenResponseModelCopyWith<$Res> {
  _$AuthenResponseModelCopyWithImpl(this._self, this._then);

  final AuthenResponseModel _self;
  final $Res Function(AuthenResponseModel) _then;

/// Create a copy of AuthenResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nom = null,Object? email = null,Object? password = null,Object? contact = null,Object? role = null,}) {
  return _then(_self.copyWith(
nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthenResponseModel].
extension AuthenResponseModelPatterns on AuthenResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthenResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthenResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthenResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthenResponseModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthenResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthenResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nom,  String email,  String password,  String contact,  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthenResponseModel() when $default != null:
return $default(_that.nom,_that.email,_that.password,_that.contact,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nom,  String email,  String password,  String contact,  String role)  $default,) {final _that = this;
switch (_that) {
case _AuthenResponseModel():
return $default(_that.nom,_that.email,_that.password,_that.contact,_that.role);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nom,  String email,  String password,  String contact,  String role)?  $default,) {final _that = this;
switch (_that) {
case _AuthenResponseModel() when $default != null:
return $default(_that.nom,_that.email,_that.password,_that.contact,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthenResponseModel implements AuthenResponseModel {
  const _AuthenResponseModel({required this.nom, required this.email, required this.password, required this.contact, required this.role});
  factory _AuthenResponseModel.fromJson(Map<String, dynamic> json) => _$AuthenResponseModelFromJson(json);

@override final  String nom;
@override final  String email;
@override final  String password;
@override final  String contact;
@override final  String role;

/// Create a copy of AuthenResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenResponseModelCopyWith<_AuthenResponseModel> get copyWith => __$AuthenResponseModelCopyWithImpl<_AuthenResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthenResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenResponseModel&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nom,email,password,contact,role);

@override
String toString() {
  return 'AuthenResponseModel(nom: $nom, email: $email, password: $password, contact: $contact, role: $role)';
}


}

/// @nodoc
abstract mixin class _$AuthenResponseModelCopyWith<$Res> implements $AuthenResponseModelCopyWith<$Res> {
  factory _$AuthenResponseModelCopyWith(_AuthenResponseModel value, $Res Function(_AuthenResponseModel) _then) = __$AuthenResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String nom, String email, String password, String contact, String role
});




}
/// @nodoc
class __$AuthenResponseModelCopyWithImpl<$Res>
    implements _$AuthenResponseModelCopyWith<$Res> {
  __$AuthenResponseModelCopyWithImpl(this._self, this._then);

  final _AuthenResponseModel _self;
  final $Res Function(_AuthenResponseModel) _then;

/// Create a copy of AuthenResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nom = null,Object? email = null,Object? password = null,Object? contact = null,Object? role = null,}) {
  return _then(_AuthenResponseModel(
nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
