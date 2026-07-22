// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SigninState {

 TextFormz get email; TextFormz get password; PhoneFormz get contact; String get errorMessage; FormzSubmissionStatus get status; bool get isValid; bool get isSubmitting;
/// Create a copy of SigninState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SigninStateCopyWith<SigninState> get copyWith => _$SigninStateCopyWithImpl<SigninState>(this as SigninState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SigninState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.status, status) || other.status == status)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,contact,errorMessage,status,isValid,isSubmitting);

@override
String toString() {
  return 'SigninState(email: $email, password: $password, contact: $contact, errorMessage: $errorMessage, status: $status, isValid: $isValid, isSubmitting: $isSubmitting)';
}


}

/// @nodoc
abstract mixin class $SigninStateCopyWith<$Res>  {
  factory $SigninStateCopyWith(SigninState value, $Res Function(SigninState) _then) = _$SigninStateCopyWithImpl;
@useResult
$Res call({
 TextFormz email, TextFormz password, PhoneFormz contact, String errorMessage, FormzSubmissionStatus status, bool isValid, bool isSubmitting
});




}
/// @nodoc
class _$SigninStateCopyWithImpl<$Res>
    implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._self, this._then);

  final SigninState _self;
  final $Res Function(SigninState) _then;

/// Create a copy of SigninState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? contact = null,Object? errorMessage = null,Object? status = null,Object? isValid = null,Object? isSubmitting = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as TextFormz,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as TextFormz,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as PhoneFormz,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SigninState].
extension SigninStatePatterns on SigninState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SigninState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SigninState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SigninState value)  $default,){
final _that = this;
switch (_that) {
case _SigninState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SigninState value)?  $default,){
final _that = this;
switch (_that) {
case _SigninState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TextFormz email,  TextFormz password,  PhoneFormz contact,  String errorMessage,  FormzSubmissionStatus status,  bool isValid,  bool isSubmitting)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SigninState() when $default != null:
return $default(_that.email,_that.password,_that.contact,_that.errorMessage,_that.status,_that.isValid,_that.isSubmitting);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TextFormz email,  TextFormz password,  PhoneFormz contact,  String errorMessage,  FormzSubmissionStatus status,  bool isValid,  bool isSubmitting)  $default,) {final _that = this;
switch (_that) {
case _SigninState():
return $default(_that.email,_that.password,_that.contact,_that.errorMessage,_that.status,_that.isValid,_that.isSubmitting);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TextFormz email,  TextFormz password,  PhoneFormz contact,  String errorMessage,  FormzSubmissionStatus status,  bool isValid,  bool isSubmitting)?  $default,) {final _that = this;
switch (_that) {
case _SigninState() when $default != null:
return $default(_that.email,_that.password,_that.contact,_that.errorMessage,_that.status,_that.isValid,_that.isSubmitting);case _:
  return null;

}
}

}

/// @nodoc


class _SigninState implements SigninState {
   _SigninState({required this.email, required this.password, required this.contact, required this.errorMessage, required this.status, required this.isValid, required this.isSubmitting});
  

@override final  TextFormz email;
@override final  TextFormz password;
@override final  PhoneFormz contact;
@override final  String errorMessage;
@override final  FormzSubmissionStatus status;
@override final  bool isValid;
@override final  bool isSubmitting;

/// Create a copy of SigninState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SigninStateCopyWith<_SigninState> get copyWith => __$SigninStateCopyWithImpl<_SigninState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SigninState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.status, status) || other.status == status)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,contact,errorMessage,status,isValid,isSubmitting);

@override
String toString() {
  return 'SigninState(email: $email, password: $password, contact: $contact, errorMessage: $errorMessage, status: $status, isValid: $isValid, isSubmitting: $isSubmitting)';
}


}

/// @nodoc
abstract mixin class _$SigninStateCopyWith<$Res> implements $SigninStateCopyWith<$Res> {
  factory _$SigninStateCopyWith(_SigninState value, $Res Function(_SigninState) _then) = __$SigninStateCopyWithImpl;
@override @useResult
$Res call({
 TextFormz email, TextFormz password, PhoneFormz contact, String errorMessage, FormzSubmissionStatus status, bool isValid, bool isSubmitting
});




}
/// @nodoc
class __$SigninStateCopyWithImpl<$Res>
    implements _$SigninStateCopyWith<$Res> {
  __$SigninStateCopyWithImpl(this._self, this._then);

  final _SigninState _self;
  final $Res Function(_SigninState) _then;

/// Create a copy of SigninState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? contact = null,Object? errorMessage = null,Object? status = null,Object? isValid = null,Object? isSubmitting = null,}) {
  return _then(_SigninState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as TextFormz,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as TextFormz,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as PhoneFormz,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
