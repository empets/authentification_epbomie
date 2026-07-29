// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigate_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NavigateState {

 NavigatEnum get selectedMenu;
/// Create a copy of NavigateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigateStateCopyWith<NavigateState> get copyWith => _$NavigateStateCopyWithImpl<NavigateState>(this as NavigateState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigateState&&(identical(other.selectedMenu, selectedMenu) || other.selectedMenu == selectedMenu));
}


@override
int get hashCode => Object.hash(runtimeType,selectedMenu);

@override
String toString() {
  return 'NavigateState(selectedMenu: $selectedMenu)';
}


}

/// @nodoc
abstract mixin class $NavigateStateCopyWith<$Res>  {
  factory $NavigateStateCopyWith(NavigateState value, $Res Function(NavigateState) _then) = _$NavigateStateCopyWithImpl;
@useResult
$Res call({
 NavigatEnum selectedMenu
});




}
/// @nodoc
class _$NavigateStateCopyWithImpl<$Res>
    implements $NavigateStateCopyWith<$Res> {
  _$NavigateStateCopyWithImpl(this._self, this._then);

  final NavigateState _self;
  final $Res Function(NavigateState) _then;

/// Create a copy of NavigateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedMenu = null,}) {
  return _then(_self.copyWith(
selectedMenu: null == selectedMenu ? _self.selectedMenu : selectedMenu // ignore: cast_nullable_to_non_nullable
as NavigatEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [NavigateState].
extension NavigateStatePatterns on NavigateState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NavigateState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NavigateState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NavigateState value)  $default,){
final _that = this;
switch (_that) {
case _NavigateState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NavigateState value)?  $default,){
final _that = this;
switch (_that) {
case _NavigateState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NavigatEnum selectedMenu)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NavigateState() when $default != null:
return $default(_that.selectedMenu);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NavigatEnum selectedMenu)  $default,) {final _that = this;
switch (_that) {
case _NavigateState():
return $default(_that.selectedMenu);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NavigatEnum selectedMenu)?  $default,) {final _that = this;
switch (_that) {
case _NavigateState() when $default != null:
return $default(_that.selectedMenu);case _:
  return null;

}
}

}

/// @nodoc


class _NavigateState implements NavigateState {
  const _NavigateState({this.selectedMenu = NavigatEnum.home});
  

@override@JsonKey() final  NavigatEnum selectedMenu;

/// Create a copy of NavigateState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NavigateStateCopyWith<_NavigateState> get copyWith => __$NavigateStateCopyWithImpl<_NavigateState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavigateState&&(identical(other.selectedMenu, selectedMenu) || other.selectedMenu == selectedMenu));
}


@override
int get hashCode => Object.hash(runtimeType,selectedMenu);

@override
String toString() {
  return 'NavigateState(selectedMenu: $selectedMenu)';
}


}

/// @nodoc
abstract mixin class _$NavigateStateCopyWith<$Res> implements $NavigateStateCopyWith<$Res> {
  factory _$NavigateStateCopyWith(_NavigateState value, $Res Function(_NavigateState) _then) = __$NavigateStateCopyWithImpl;
@override @useResult
$Res call({
 NavigatEnum selectedMenu
});




}
/// @nodoc
class __$NavigateStateCopyWithImpl<$Res>
    implements _$NavigateStateCopyWith<$Res> {
  __$NavigateStateCopyWithImpl(this._self, this._then);

  final _NavigateState _self;
  final $Res Function(_NavigateState) _then;

/// Create a copy of NavigateState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedMenu = null,}) {
  return _then(_NavigateState(
selectedMenu: null == selectedMenu ? _self.selectedMenu : selectedMenu // ignore: cast_nullable_to_non_nullable
as NavigatEnum,
  ));
}


}

// dart format on
