// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_alternatif_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactAlternatifEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ContactAlternatifEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ContactAlternatifEvent()';
  }
}

/// @nodoc
class $ContactAlternatifEventCopyWith<$Res> {
  $ContactAlternatifEventCopyWith(
      ContactAlternatifEvent _, $Res Function(ContactAlternatifEvent) __);
}

/// Adds pattern-matching-related methods to [ContactAlternatifEvent].
extension ContactAlternatifEventPatterns on ContactAlternatifEvent {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecondContactContactAlternatifEvent value)? secondContact,
    TResult Function(IsSelectOtherContactContactAlternatifEvent value)?
        isSelectOtherContact,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case SecondContactContactAlternatifEvent() when secondContact != null:
        return secondContact(_that);
      case IsSelectOtherContactContactAlternatifEvent()
          when isSelectOtherContact != null:
        return isSelectOtherContact(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SecondContactContactAlternatifEvent value)
        secondContact,
    required TResult Function(IsSelectOtherContactContactAlternatifEvent value)
        isSelectOtherContact,
  }) {
    final _that = this;
    switch (_that) {
      case SecondContactContactAlternatifEvent():
        return secondContact(_that);
      case IsSelectOtherContactContactAlternatifEvent():
        return isSelectOtherContact(_that);
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SecondContactContactAlternatifEvent value)? secondContact,
    TResult? Function(IsSelectOtherContactContactAlternatifEvent value)?
        isSelectOtherContact,
  }) {
    final _that = this;
    switch (_that) {
      case SecondContactContactAlternatifEvent() when secondContact != null:
        return secondContact(_that);
      case IsSelectOtherContactContactAlternatifEvent()
          when isSelectOtherContact != null:
        return isSelectOtherContact(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactAternatif)? secondContact,
    TResult Function(bool isSelectOtherContact)? isSelectOtherContact,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case SecondContactContactAlternatifEvent() when secondContact != null:
        return secondContact(_that.contactAternatif);
      case IsSelectOtherContactContactAlternatifEvent()
          when isSelectOtherContact != null:
        return isSelectOtherContact(_that.isSelectOtherContact);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactAternatif) secondContact,
    required TResult Function(bool isSelectOtherContact) isSelectOtherContact,
  }) {
    final _that = this;
    switch (_that) {
      case SecondContactContactAlternatifEvent():
        return secondContact(_that.contactAternatif);
      case IsSelectOtherContactContactAlternatifEvent():
        return isSelectOtherContact(_that.isSelectOtherContact);
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactAternatif)? secondContact,
    TResult? Function(bool isSelectOtherContact)? isSelectOtherContact,
  }) {
    final _that = this;
    switch (_that) {
      case SecondContactContactAlternatifEvent() when secondContact != null:
        return secondContact(_that.contactAternatif);
      case IsSelectOtherContactContactAlternatifEvent()
          when isSelectOtherContact != null:
        return isSelectOtherContact(_that.isSelectOtherContact);
      case _:
        return null;
    }
  }
}

/// @nodoc

class SecondContactContactAlternatifEvent implements ContactAlternatifEvent {
  const SecondContactContactAlternatifEvent(this.contactAternatif);

  final String contactAternatif;

  /// Create a copy of ContactAlternatifEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SecondContactContactAlternatifEventCopyWith<
          SecondContactContactAlternatifEvent>
      get copyWith => _$SecondContactContactAlternatifEventCopyWithImpl<
          SecondContactContactAlternatifEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecondContactContactAlternatifEvent &&
            (identical(other.contactAternatif, contactAternatif) ||
                other.contactAternatif == contactAternatif));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactAternatif);

  @override
  String toString() {
    return 'ContactAlternatifEvent.secondContact(contactAternatif: $contactAternatif)';
  }
}

/// @nodoc
abstract mixin class $SecondContactContactAlternatifEventCopyWith<$Res>
    implements $ContactAlternatifEventCopyWith<$Res> {
  factory $SecondContactContactAlternatifEventCopyWith(
          SecondContactContactAlternatifEvent value,
          $Res Function(SecondContactContactAlternatifEvent) _then) =
      _$SecondContactContactAlternatifEventCopyWithImpl;
  @useResult
  $Res call({String contactAternatif});
}

/// @nodoc
class _$SecondContactContactAlternatifEventCopyWithImpl<$Res>
    implements $SecondContactContactAlternatifEventCopyWith<$Res> {
  _$SecondContactContactAlternatifEventCopyWithImpl(this._self, this._then);

  final SecondContactContactAlternatifEvent _self;
  final $Res Function(SecondContactContactAlternatifEvent) _then;

  /// Create a copy of ContactAlternatifEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? contactAternatif = null,
  }) {
    return _then(SecondContactContactAlternatifEvent(
      null == contactAternatif
          ? _self.contactAternatif
          : contactAternatif // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class IsSelectOtherContactContactAlternatifEvent
    implements ContactAlternatifEvent {
  const IsSelectOtherContactContactAlternatifEvent(this.isSelectOtherContact);

  final bool isSelectOtherContact;

  /// Create a copy of ContactAlternatifEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IsSelectOtherContactContactAlternatifEventCopyWith<
          IsSelectOtherContactContactAlternatifEvent>
      get copyWith => _$IsSelectOtherContactContactAlternatifEventCopyWithImpl<
          IsSelectOtherContactContactAlternatifEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IsSelectOtherContactContactAlternatifEvent &&
            (identical(other.isSelectOtherContact, isSelectOtherContact) ||
                other.isSelectOtherContact == isSelectOtherContact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelectOtherContact);

  @override
  String toString() {
    return 'ContactAlternatifEvent.isSelectOtherContact(isSelectOtherContact: $isSelectOtherContact)';
  }
}

/// @nodoc
abstract mixin class $IsSelectOtherContactContactAlternatifEventCopyWith<$Res>
    implements $ContactAlternatifEventCopyWith<$Res> {
  factory $IsSelectOtherContactContactAlternatifEventCopyWith(
          IsSelectOtherContactContactAlternatifEvent value,
          $Res Function(IsSelectOtherContactContactAlternatifEvent) _then) =
      _$IsSelectOtherContactContactAlternatifEventCopyWithImpl;
  @useResult
  $Res call({bool isSelectOtherContact});
}

/// @nodoc
class _$IsSelectOtherContactContactAlternatifEventCopyWithImpl<$Res>
    implements $IsSelectOtherContactContactAlternatifEventCopyWith<$Res> {
  _$IsSelectOtherContactContactAlternatifEventCopyWithImpl(
      this._self, this._then);

  final IsSelectOtherContactContactAlternatifEvent _self;
  final $Res Function(IsSelectOtherContactContactAlternatifEvent) _then;

  /// Create a copy of ContactAlternatifEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSelectOtherContact = null,
  }) {
    return _then(IsSelectOtherContactContactAlternatifEvent(
      null == isSelectOtherContact
          ? _self.isSelectOtherContact
          : isSelectOtherContact // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
