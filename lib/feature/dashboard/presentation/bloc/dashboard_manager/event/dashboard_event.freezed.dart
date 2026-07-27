// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardEvent {

 DashboardMenu get menu;
/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardEventCopyWith<DashboardEvent> get copyWith => _$DashboardEventCopyWithImpl<DashboardEvent>(this as DashboardEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardEvent&&(identical(other.menu, menu) || other.menu == menu));
}


@override
int get hashCode => Object.hash(runtimeType,menu);

@override
String toString() {
  return 'DashboardEvent(menu: $menu)';
}


}

/// @nodoc
abstract mixin class $DashboardEventCopyWith<$Res>  {
  factory $DashboardEventCopyWith(DashboardEvent value, $Res Function(DashboardEvent) _then) = _$DashboardEventCopyWithImpl;
@useResult
$Res call({
 DashboardMenu menu
});




}
/// @nodoc
class _$DashboardEventCopyWithImpl<$Res>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._self, this._then);

  final DashboardEvent _self;
  final $Res Function(DashboardEvent) _then;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? menu = null,}) {
  return _then(_self.copyWith(
menu: null == menu ? _self.menu : menu // ignore: cast_nullable_to_non_nullable
as DashboardMenu,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardEvent].
extension DashboardEventPatterns on DashboardEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MenuSelectedMenuSelected value)?  menuSelected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MenuSelectedMenuSelected() when menuSelected != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MenuSelectedMenuSelected value)  menuSelected,}){
final _that = this;
switch (_that) {
case MenuSelectedMenuSelected():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MenuSelectedMenuSelected value)?  menuSelected,}){
final _that = this;
switch (_that) {
case MenuSelectedMenuSelected() when menuSelected != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DashboardMenu menu)?  menuSelected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MenuSelectedMenuSelected() when menuSelected != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DashboardMenu menu)  menuSelected,}) {final _that = this;
switch (_that) {
case MenuSelectedMenuSelected():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DashboardMenu menu)?  menuSelected,}) {final _that = this;
switch (_that) {
case MenuSelectedMenuSelected() when menuSelected != null:
return menuSelected(_that.menu);case _:
  return null;

}
}

}

/// @nodoc


class MenuSelectedMenuSelected implements DashboardEvent {
   MenuSelectedMenuSelected(this.menu);
  

@override final  DashboardMenu menu;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuSelectedMenuSelectedCopyWith<MenuSelectedMenuSelected> get copyWith => _$MenuSelectedMenuSelectedCopyWithImpl<MenuSelectedMenuSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuSelectedMenuSelected&&(identical(other.menu, menu) || other.menu == menu));
}


@override
int get hashCode => Object.hash(runtimeType,menu);

@override
String toString() {
  return 'DashboardEvent.menuSelected(menu: $menu)';
}


}

/// @nodoc
abstract mixin class $MenuSelectedMenuSelectedCopyWith<$Res> implements $DashboardEventCopyWith<$Res> {
  factory $MenuSelectedMenuSelectedCopyWith(MenuSelectedMenuSelected value, $Res Function(MenuSelectedMenuSelected) _then) = _$MenuSelectedMenuSelectedCopyWithImpl;
@override @useResult
$Res call({
 DashboardMenu menu
});




}
/// @nodoc
class _$MenuSelectedMenuSelectedCopyWithImpl<$Res>
    implements $MenuSelectedMenuSelectedCopyWith<$Res> {
  _$MenuSelectedMenuSelectedCopyWithImpl(this._self, this._then);

  final MenuSelectedMenuSelected _self;
  final $Res Function(MenuSelectedMenuSelected) _then;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? menu = null,}) {
  return _then(MenuSelectedMenuSelected(
null == menu ? _self.menu : menu // ignore: cast_nullable_to_non_nullable
as DashboardMenu,
  ));
}


}

// dart format on
