// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchProfileNumberIdProfileEventFetch value)?  fetchProfileNumberId,TResult Function( FetchProfileAllProfileEventFetch value)?  fetchProfileAll,TResult Function( GetProfileByDeviceIdProfileEventGetProfileId value)?  getProfileByDeviceId,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchProfileNumberIdProfileEventFetch() when fetchProfileNumberId != null:
return fetchProfileNumberId(_that);case FetchProfileAllProfileEventFetch() when fetchProfileAll != null:
return fetchProfileAll(_that);case GetProfileByDeviceIdProfileEventGetProfileId() when getProfileByDeviceId != null:
return getProfileByDeviceId(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchProfileNumberIdProfileEventFetch value)  fetchProfileNumberId,required TResult Function( FetchProfileAllProfileEventFetch value)  fetchProfileAll,required TResult Function( GetProfileByDeviceIdProfileEventGetProfileId value)  getProfileByDeviceId,}){
final _that = this;
switch (_that) {
case FetchProfileNumberIdProfileEventFetch():
return fetchProfileNumberId(_that);case FetchProfileAllProfileEventFetch():
return fetchProfileAll(_that);case GetProfileByDeviceIdProfileEventGetProfileId():
return getProfileByDeviceId(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchProfileNumberIdProfileEventFetch value)?  fetchProfileNumberId,TResult? Function( FetchProfileAllProfileEventFetch value)?  fetchProfileAll,TResult? Function( GetProfileByDeviceIdProfileEventGetProfileId value)?  getProfileByDeviceId,}){
final _that = this;
switch (_that) {
case FetchProfileNumberIdProfileEventFetch() when fetchProfileNumberId != null:
return fetchProfileNumberId(_that);case FetchProfileAllProfileEventFetch() when fetchProfileAll != null:
return fetchProfileAll(_that);case GetProfileByDeviceIdProfileEventGetProfileId() when getProfileByDeviceId != null:
return getProfileByDeviceId(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? numberId)?  fetchProfileNumberId,TResult Function()?  fetchProfileAll,TResult Function( String deviceId)?  getProfileByDeviceId,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchProfileNumberIdProfileEventFetch() when fetchProfileNumberId != null:
return fetchProfileNumberId(_that.numberId);case FetchProfileAllProfileEventFetch() when fetchProfileAll != null:
return fetchProfileAll();case GetProfileByDeviceIdProfileEventGetProfileId() when getProfileByDeviceId != null:
return getProfileByDeviceId(_that.deviceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? numberId)  fetchProfileNumberId,required TResult Function()  fetchProfileAll,required TResult Function( String deviceId)  getProfileByDeviceId,}) {final _that = this;
switch (_that) {
case FetchProfileNumberIdProfileEventFetch():
return fetchProfileNumberId(_that.numberId);case FetchProfileAllProfileEventFetch():
return fetchProfileAll();case GetProfileByDeviceIdProfileEventGetProfileId():
return getProfileByDeviceId(_that.deviceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? numberId)?  fetchProfileNumberId,TResult? Function()?  fetchProfileAll,TResult? Function( String deviceId)?  getProfileByDeviceId,}) {final _that = this;
switch (_that) {
case FetchProfileNumberIdProfileEventFetch() when fetchProfileNumberId != null:
return fetchProfileNumberId(_that.numberId);case FetchProfileAllProfileEventFetch() when fetchProfileAll != null:
return fetchProfileAll();case GetProfileByDeviceIdProfileEventGetProfileId() when getProfileByDeviceId != null:
return getProfileByDeviceId(_that.deviceId);case _:
  return null;

}
}

}

/// @nodoc


class FetchProfileNumberIdProfileEventFetch implements ProfileEvent {
  const FetchProfileNumberIdProfileEventFetch(this.numberId);
  

 final  String? numberId;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchProfileNumberIdProfileEventFetchCopyWith<FetchProfileNumberIdProfileEventFetch> get copyWith => _$FetchProfileNumberIdProfileEventFetchCopyWithImpl<FetchProfileNumberIdProfileEventFetch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchProfileNumberIdProfileEventFetch&&(identical(other.numberId, numberId) || other.numberId == numberId));
}


@override
int get hashCode => Object.hash(runtimeType,numberId);

@override
String toString() {
  return 'ProfileEvent.fetchProfileNumberId(numberId: $numberId)';
}


}

/// @nodoc
abstract mixin class $FetchProfileNumberIdProfileEventFetchCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $FetchProfileNumberIdProfileEventFetchCopyWith(FetchProfileNumberIdProfileEventFetch value, $Res Function(FetchProfileNumberIdProfileEventFetch) _then) = _$FetchProfileNumberIdProfileEventFetchCopyWithImpl;
@useResult
$Res call({
 String? numberId
});




}
/// @nodoc
class _$FetchProfileNumberIdProfileEventFetchCopyWithImpl<$Res>
    implements $FetchProfileNumberIdProfileEventFetchCopyWith<$Res> {
  _$FetchProfileNumberIdProfileEventFetchCopyWithImpl(this._self, this._then);

  final FetchProfileNumberIdProfileEventFetch _self;
  final $Res Function(FetchProfileNumberIdProfileEventFetch) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? numberId = freezed,}) {
  return _then(FetchProfileNumberIdProfileEventFetch(
freezed == numberId ? _self.numberId : numberId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class FetchProfileAllProfileEventFetch implements ProfileEvent {
  const FetchProfileAllProfileEventFetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchProfileAllProfileEventFetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.fetchProfileAll()';
}


}




/// @nodoc


class GetProfileByDeviceIdProfileEventGetProfileId implements ProfileEvent {
  const GetProfileByDeviceIdProfileEventGetProfileId(this.deviceId);
  

 final  String deviceId;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProfileByDeviceIdProfileEventGetProfileIdCopyWith<GetProfileByDeviceIdProfileEventGetProfileId> get copyWith => _$GetProfileByDeviceIdProfileEventGetProfileIdCopyWithImpl<GetProfileByDeviceIdProfileEventGetProfileId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileByDeviceIdProfileEventGetProfileId&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}


@override
int get hashCode => Object.hash(runtimeType,deviceId);

@override
String toString() {
  return 'ProfileEvent.getProfileByDeviceId(deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class $GetProfileByDeviceIdProfileEventGetProfileIdCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $GetProfileByDeviceIdProfileEventGetProfileIdCopyWith(GetProfileByDeviceIdProfileEventGetProfileId value, $Res Function(GetProfileByDeviceIdProfileEventGetProfileId) _then) = _$GetProfileByDeviceIdProfileEventGetProfileIdCopyWithImpl;
@useResult
$Res call({
 String deviceId
});




}
/// @nodoc
class _$GetProfileByDeviceIdProfileEventGetProfileIdCopyWithImpl<$Res>
    implements $GetProfileByDeviceIdProfileEventGetProfileIdCopyWith<$Res> {
  _$GetProfileByDeviceIdProfileEventGetProfileIdCopyWithImpl(this._self, this._then);

  final GetProfileByDeviceIdProfileEventGetProfileId _self;
  final $Res Function(GetProfileByDeviceIdProfileEventGetProfileId) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? deviceId = null,}) {
  return _then(GetProfileByDeviceIdProfileEventGetProfileId(
null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
