// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigate_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NavigateEvent {

 NavigatEnum get menu;
/// Create a copy of NavigateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigateEventCopyWith<NavigateEvent> get copyWith => _$NavigateEventCopyWithImpl<NavigateEvent>(this as NavigateEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigateEvent&&(identical(other.menu, menu) || other.menu == menu));
}


@override
int get hashCode => Object.hash(runtimeType,menu);

@override
String toString() {
  return 'NavigateEvent(menu: $menu)';
}


}

/// @nodoc
abstract mixin class $NavigateEventCopyWith<$Res>  {
  factory $NavigateEventCopyWith(NavigateEvent value, $Res Function(NavigateEvent) _then) = _$NavigateEventCopyWithImpl;
@useResult
$Res call({
 NavigatEnum menu
});




}
/// @nodoc
class _$NavigateEventCopyWithImpl<$Res>
    implements $NavigateEventCopyWith<$Res> {
  _$NavigateEventCopyWithImpl(this._self, this._then);

  final NavigateEvent _self;
  final $Res Function(NavigateEvent) _then;

/// Create a copy of NavigateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? menu = null,}) {
  return _then(_self.copyWith(
menu: null == menu ? _self.menu : menu // ignore: cast_nullable_to_non_nullable
as NavigatEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [NavigateEvent].
extension NavigateEventPatterns on NavigateEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MenuSelectedNaviateEvent value)?  menuSelected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MenuSelectedNaviateEvent() when menuSelected != null:
return menuSelected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MenuSelectedNaviateEvent value)  menuSelected,}){
final _that = this;
switch (_that) {
case MenuSelectedNaviateEvent():
return menuSelected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MenuSelectedNaviateEvent value)?  menuSelected,}){
final _that = this;
switch (_that) {
case MenuSelectedNaviateEvent() when menuSelected != null:
return menuSelected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( NavigatEnum menu)?  menuSelected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MenuSelectedNaviateEvent() when menuSelected != null:
return menuSelected(_that.menu);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( NavigatEnum menu)  menuSelected,}) {final _that = this;
switch (_that) {
case MenuSelectedNaviateEvent():
return menuSelected(_that.menu);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( NavigatEnum menu)?  menuSelected,}) {final _that = this;
switch (_that) {
case MenuSelectedNaviateEvent() when menuSelected != null:
return menuSelected(_that.menu);case _:
  return null;

}
}

}

/// @nodoc


class MenuSelectedNaviateEvent implements NavigateEvent {
   MenuSelectedNaviateEvent(this.menu);
  

@override final  NavigatEnum menu;

/// Create a copy of NavigateEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuSelectedNaviateEventCopyWith<MenuSelectedNaviateEvent> get copyWith => _$MenuSelectedNaviateEventCopyWithImpl<MenuSelectedNaviateEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuSelectedNaviateEvent&&(identical(other.menu, menu) || other.menu == menu));
}


@override
int get hashCode => Object.hash(runtimeType,menu);

@override
String toString() {
  return 'NavigateEvent.menuSelected(menu: $menu)';
}


}

/// @nodoc
abstract mixin class $MenuSelectedNaviateEventCopyWith<$Res> implements $NavigateEventCopyWith<$Res> {
  factory $MenuSelectedNaviateEventCopyWith(MenuSelectedNaviateEvent value, $Res Function(MenuSelectedNaviateEvent) _then) = _$MenuSelectedNaviateEventCopyWithImpl;
@override @useResult
$Res call({
 NavigatEnum menu
});




}
/// @nodoc
class _$MenuSelectedNaviateEventCopyWithImpl<$Res>
    implements $MenuSelectedNaviateEventCopyWith<$Res> {
  _$MenuSelectedNaviateEventCopyWithImpl(this._self, this._then);

  final MenuSelectedNaviateEvent _self;
  final $Res Function(MenuSelectedNaviateEvent) _then;

/// Create a copy of NavigateEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? menu = null,}) {
  return _then(MenuSelectedNaviateEvent(
null == menu ? _self.menu : menu // ignore: cast_nullable_to_non_nullable
as NavigatEnum,
  ));
}


}

// dart format on
