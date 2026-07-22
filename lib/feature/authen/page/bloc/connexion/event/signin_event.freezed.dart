// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SigninEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SigninEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SigninEvent()';
}


}

/// @nodoc
class $SigninEventCopyWith<$Res>  {
$SigninEventCopyWith(SigninEvent _, $Res Function(SigninEvent) __);
}


/// Adds pattern-matching-related methods to [SigninEvent].
extension SigninEventPatterns on SigninEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangeEmailSigninEvent value)?  changeEmail,TResult Function( ChangePasswordSigninEvent value)?  changePassword,TResult Function( ChangeContactSigninEvent value)?  changeContact,TResult Function( SubmitSigninEvent value)?  submit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangeEmailSigninEvent() when changeEmail != null:
return changeEmail(_that);case ChangePasswordSigninEvent() when changePassword != null:
return changePassword(_that);case ChangeContactSigninEvent() when changeContact != null:
return changeContact(_that);case SubmitSigninEvent() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangeEmailSigninEvent value)  changeEmail,required TResult Function( ChangePasswordSigninEvent value)  changePassword,required TResult Function( ChangeContactSigninEvent value)  changeContact,required TResult Function( SubmitSigninEvent value)  submit,}){
final _that = this;
switch (_that) {
case ChangeEmailSigninEvent():
return changeEmail(_that);case ChangePasswordSigninEvent():
return changePassword(_that);case ChangeContactSigninEvent():
return changeContact(_that);case SubmitSigninEvent():
return submit(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangeEmailSigninEvent value)?  changeEmail,TResult? Function( ChangePasswordSigninEvent value)?  changePassword,TResult? Function( ChangeContactSigninEvent value)?  changeContact,TResult? Function( SubmitSigninEvent value)?  submit,}){
final _that = this;
switch (_that) {
case ChangeEmailSigninEvent() when changeEmail != null:
return changeEmail(_that);case ChangePasswordSigninEvent() when changePassword != null:
return changePassword(_that);case ChangeContactSigninEvent() when changeContact != null:
return changeContact(_that);case SubmitSigninEvent() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email)?  changeEmail,TResult Function( String password)?  changePassword,TResult Function( String contact)?  changeContact,TResult Function()?  submit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangeEmailSigninEvent() when changeEmail != null:
return changeEmail(_that.email);case ChangePasswordSigninEvent() when changePassword != null:
return changePassword(_that.password);case ChangeContactSigninEvent() when changeContact != null:
return changeContact(_that.contact);case SubmitSigninEvent() when submit != null:
return submit();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email)  changeEmail,required TResult Function( String password)  changePassword,required TResult Function( String contact)  changeContact,required TResult Function()  submit,}) {final _that = this;
switch (_that) {
case ChangeEmailSigninEvent():
return changeEmail(_that.email);case ChangePasswordSigninEvent():
return changePassword(_that.password);case ChangeContactSigninEvent():
return changeContact(_that.contact);case SubmitSigninEvent():
return submit();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email)?  changeEmail,TResult? Function( String password)?  changePassword,TResult? Function( String contact)?  changeContact,TResult? Function()?  submit,}) {final _that = this;
switch (_that) {
case ChangeEmailSigninEvent() when changeEmail != null:
return changeEmail(_that.email);case ChangePasswordSigninEvent() when changePassword != null:
return changePassword(_that.password);case ChangeContactSigninEvent() when changeContact != null:
return changeContact(_that.contact);case SubmitSigninEvent() when submit != null:
return submit();case _:
  return null;

}
}

}

/// @nodoc


class ChangeEmailSigninEvent implements SigninEvent {
   ChangeEmailSigninEvent(this.email);
  

 final  String email;

/// Create a copy of SigninEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeEmailSigninEventCopyWith<ChangeEmailSigninEvent> get copyWith => _$ChangeEmailSigninEventCopyWithImpl<ChangeEmailSigninEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeEmailSigninEvent&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'SigninEvent.changeEmail(email: $email)';
}


}

/// @nodoc
abstract mixin class $ChangeEmailSigninEventCopyWith<$Res> implements $SigninEventCopyWith<$Res> {
  factory $ChangeEmailSigninEventCopyWith(ChangeEmailSigninEvent value, $Res Function(ChangeEmailSigninEvent) _then) = _$ChangeEmailSigninEventCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ChangeEmailSigninEventCopyWithImpl<$Res>
    implements $ChangeEmailSigninEventCopyWith<$Res> {
  _$ChangeEmailSigninEventCopyWithImpl(this._self, this._then);

  final ChangeEmailSigninEvent _self;
  final $Res Function(ChangeEmailSigninEvent) _then;

/// Create a copy of SigninEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ChangeEmailSigninEvent(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangePasswordSigninEvent implements SigninEvent {
   ChangePasswordSigninEvent(this.password);
  

 final  String password;

/// Create a copy of SigninEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordSigninEventCopyWith<ChangePasswordSigninEvent> get copyWith => _$ChangePasswordSigninEventCopyWithImpl<ChangePasswordSigninEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordSigninEvent&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'SigninEvent.changePassword(password: $password)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordSigninEventCopyWith<$Res> implements $SigninEventCopyWith<$Res> {
  factory $ChangePasswordSigninEventCopyWith(ChangePasswordSigninEvent value, $Res Function(ChangePasswordSigninEvent) _then) = _$ChangePasswordSigninEventCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$ChangePasswordSigninEventCopyWithImpl<$Res>
    implements $ChangePasswordSigninEventCopyWith<$Res> {
  _$ChangePasswordSigninEventCopyWithImpl(this._self, this._then);

  final ChangePasswordSigninEvent _self;
  final $Res Function(ChangePasswordSigninEvent) _then;

/// Create a copy of SigninEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(ChangePasswordSigninEvent(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangeContactSigninEvent implements SigninEvent {
   ChangeContactSigninEvent(this.contact);
  

 final  String contact;

/// Create a copy of SigninEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeContactSigninEventCopyWith<ChangeContactSigninEvent> get copyWith => _$ChangeContactSigninEventCopyWithImpl<ChangeContactSigninEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeContactSigninEvent&&(identical(other.contact, contact) || other.contact == contact));
}


@override
int get hashCode => Object.hash(runtimeType,contact);

@override
String toString() {
  return 'SigninEvent.changeContact(contact: $contact)';
}


}

/// @nodoc
abstract mixin class $ChangeContactSigninEventCopyWith<$Res> implements $SigninEventCopyWith<$Res> {
  factory $ChangeContactSigninEventCopyWith(ChangeContactSigninEvent value, $Res Function(ChangeContactSigninEvent) _then) = _$ChangeContactSigninEventCopyWithImpl;
@useResult
$Res call({
 String contact
});




}
/// @nodoc
class _$ChangeContactSigninEventCopyWithImpl<$Res>
    implements $ChangeContactSigninEventCopyWith<$Res> {
  _$ChangeContactSigninEventCopyWithImpl(this._self, this._then);

  final ChangeContactSigninEvent _self;
  final $Res Function(ChangeContactSigninEvent) _then;

/// Create a copy of SigninEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contact = null,}) {
  return _then(ChangeContactSigninEvent(
null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SubmitSigninEvent implements SigninEvent {
   SubmitSigninEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitSigninEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SigninEvent.submit()';
}


}




// dart format on
