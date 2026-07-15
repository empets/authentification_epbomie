// // GENERATED CODE - DO NOT MODIFY BY HAND
// // coverage:ignore-file
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'contact_alternatif_state.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// // dart format off
// T _$identity<T>(T value) => value;

// /// @nodoc
// mixin _$ContactAlternatifState {
//   PhoneAlternativeFormz get contactAternatif;
//   bool get isSelectOtherContact;
//   FormzSubmissionStatus get status;
//   String get messageError;
//   bool get isValid;
//   Failure? get errorType;

//   /// Create a copy of ContactAlternatifState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @pragma('vm:prefer-inline')
//   $ContactAlternatifStateCopyWith<ContactAlternatifState> get copyWith =>
//       _$ContactAlternatifStateCopyWithImpl<ContactAlternatifState>(
//           this as ContactAlternatifState, _$identity);

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is ContactAlternatifState &&
//             (identical(other.contactAternatif, contactAternatif) ||
//                 other.contactAternatif == contactAternatif) &&
//             (identical(other.isSelectOtherContact, isSelectOtherContact) ||
//                 other.isSelectOtherContact == isSelectOtherContact) &&
//             (identical(other.status, status) || other.status == status) &&
//             (identical(other.messageError, messageError) ||
//                 other.messageError == messageError) &&
//             (identical(other.isValid, isValid) || other.isValid == isValid) &&
//             (identical(other.errorType, errorType) ||
//                 other.errorType == errorType));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, contactAternatif,
//       isSelectOtherContact, status, messageError, isValid, errorType);

//   @override
//   String toString() {
//     return 'ContactAlternatifState(contactAternatif: $contactAternatif, isSelectOtherContact: $isSelectOtherContact, status: $status, messageError: $messageError, isValid: $isValid, errorType: $errorType)';
//   }
// }

// /// @nodoc
// abstract mixin class $ContactAlternatifStateCopyWith<$Res> {
//   factory $ContactAlternatifStateCopyWith(ContactAlternatifState value,
//           $Res Function(ContactAlternatifState) _then) =
//       _$ContactAlternatifStateCopyWithImpl;
//   @useResult
//   $Res call(
//       {PhoneAlternativeFormz contactAternatif,
//       bool isSelectOtherContact,
//       FormzSubmissionStatus status,
//       String messageError,
//       bool isValid,
//       Failure? errorType});
// }

// /// @nodoc
// class _$ContactAlternatifStateCopyWithImpl<$Res>
//     implements $ContactAlternatifStateCopyWith<$Res> {
//   _$ContactAlternatifStateCopyWithImpl(this._self, this._then);

//   final ContactAlternatifState _self;
//   final $Res Function(ContactAlternatifState) _then;

//   /// Create a copy of ContactAlternatifState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? contactAternatif = null,
//     Object? isSelectOtherContact = null,
//     Object? status = null,
//     Object? messageError = null,
//     Object? isValid = null,
//     Object? errorType = freezed,
//   }) {
//     return _then(_self.copyWith(
//       contactAternatif: null == contactAternatif
//           ? _self.contactAternatif
//           : contactAternatif // ignore: cast_nullable_to_non_nullable
//               as PhoneAlternativeFormz,
//       isSelectOtherContact: null == isSelectOtherContact
//           ? _self.isSelectOtherContact
//           : isSelectOtherContact // ignore: cast_nullable_to_non_nullable
//               as bool,
//       status: null == status
//           ? _self.status
//           : status // ignore: cast_nullable_to_non_nullable
//               as FormzSubmissionStatus,
//       messageError: null == messageError
//           ? _self.messageError
//           : messageError // ignore: cast_nullable_to_non_nullable
//               as String,
//       isValid: null == isValid
//           ? _self.isValid
//           : isValid // ignore: cast_nullable_to_non_nullable
//               as bool,
//       errorType: freezed == errorType
//           ? _self.errorType
//           : errorType // ignore: cast_nullable_to_non_nullable
//               as Failure?,
//     ));
//   }
// }

// /// Adds pattern-matching-related methods to [ContactAlternatifState].
// extension ContactAlternatifStatePatterns on ContactAlternatifState {
//   /// A variant of `map` that fallback to returning `orElse`.
//   ///
//   /// It is equivalent to doing:
//   /// ```dart
//   /// switch (sealedClass) {
//   ///   case final Subclass value:
//   ///     return ...;
//   ///   case _:
//   ///     return orElse();
//   /// }
//   /// ```

//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>(
//     TResult Function(_ContactAlternatifState value)? $default, {
//     required TResult orElse(),
//   }) {
//     final _that = this;
//     switch (_that) {
//       case _ContactAlternatifState() when $default != null:
//         return $default(_that);
//       case _:
//         return orElse();
//     }
//   }

//   /// A `switch`-like method, using callbacks.
//   ///
//   /// Callbacks receives the raw object, upcasted.
//   /// It is equivalent to doing:
//   /// ```dart
//   /// switch (sealedClass) {
//   ///   case final Subclass value:
//   ///     return ...;
//   ///   case final Subclass2 value:
//   ///     return ...;
//   /// }
//   /// ```

//   @optionalTypeArgs
//   TResult map<TResult extends Object?>(
//     TResult Function(_ContactAlternatifState value) $default,
//   ) {
//     final _that = this;
//     switch (_that) {
//       case _ContactAlternatifState():
//         return $default(_that);
//     }
//   }

//   /// A variant of `map` that fallback to returning `null`.
//   ///
//   /// It is equivalent to doing:
//   /// ```dart
//   /// switch (sealedClass) {
//   ///   case final Subclass value:
//   ///     return ...;
//   ///   case _:
//   ///     return null;
//   /// }
//   /// ```

//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>(
//     TResult? Function(_ContactAlternatifState value)? $default,
//   ) {
//     final _that = this;
//     switch (_that) {
//       case _ContactAlternatifState() when $default != null:
//         return $default(_that);
//       case _:
//         return null;
//     }
//   }

//   /// A variant of `when` that fallback to an `orElse` callback.
//   ///
//   /// It is equivalent to doing:
//   /// ```dart
//   /// switch (sealedClass) {
//   ///   case Subclass(:final field):
//   ///     return ...;
//   ///   case _:
//   ///     return orElse();
//   /// }
//   /// ```

//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>(
//     TResult Function(
//             PhoneAlternativeFormz contactAternatif,
//             bool isSelectOtherContact,
//             FormzSubmissionStatus status,
//             String messageError,
//             bool isValid,
//             Failure? errorType)?
//         $default, {
//     required TResult orElse(),
//   }) {
//     final _that = this;
//     switch (_that) {
//       case _ContactAlternatifState() when $default != null:
//         return $default(_that.contactAternatif, _that.isSelectOtherContact,
//             _that.status, _that.messageError, _that.isValid, _that.errorType);
//       case _:
//         return orElse();
//     }
//   }

//   /// A `switch`-like method, using callbacks.
//   ///
//   /// As opposed to `map`, this offers destructuring.
//   /// It is equivalent to doing:
//   /// ```dart
//   /// switch (sealedClass) {
//   ///   case Subclass(:final field):
//   ///     return ...;
//   ///   case Subclass2(:final field2):
//   ///     return ...;
//   /// }
//   /// ```

//   @optionalTypeArgs
//   TResult when<TResult extends Object?>(
//     TResult Function(
//             PhoneAlternativeFormz contactAternatif,
//             bool isSelectOtherContact,
//             FormzSubmissionStatus status,
//             String messageError,
//             bool isValid,
//             Failure? errorType)
//         $default,
//   ) {
//     final _that = this;
//     switch (_that) {
//       case _ContactAlternatifState():
//         return $default(_that.contactAternatif, _that.isSelectOtherContact,
//             _that.status, _that.messageError, _that.isValid, _that.errorType);
//     }
//   }

//   /// A variant of `when` that fallback to returning `null`
//   ///
//   /// It is equivalent to doing:
//   /// ```dart
//   /// switch (sealedClass) {
//   ///   case Subclass(:final field):
//   ///     return ...;
//   ///   case _:
//   ///     return null;
//   /// }
//   /// ```

//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>(
//     TResult? Function(
//             PhoneAlternativeFormz contactAternatif,
//             bool isSelectOtherContact,
//             FormzSubmissionStatus status,
//             String messageError,
//             bool isValid,
//             Failure? errorType)?
//         $default,
//   ) {
//     final _that = this;
//     switch (_that) {
//       case _ContactAlternatifState() when $default != null:
//         return $default(_that.contactAternatif, _that.isSelectOtherContact,
//             _that.status, _that.messageError, _that.isValid, _that.errorType);
//       case _:
//         return null;
//     }
//   }
// }

// /// @nodoc

// class _ContactAlternatifState implements ContactAlternatifState {
//   const _ContactAlternatifState(
//       {required this.contactAternatif,
//       required this.isSelectOtherContact,
//       required this.status,
//       required this.messageError,
//       required this.isValid,
//       required this.errorType});

//   @override
//   final PhoneAlternativeFormz contactAternatif;
//   @override
//   final bool isSelectOtherContact;
//   @override
//   final FormzSubmissionStatus status;
//   @override
//   final String messageError;
//   @override
//   final bool isValid;
//   @override
//   final Failure? errorType;

//   /// Create a copy of ContactAlternatifState
//   /// with the given fields replaced by the non-null parameter values.
//   @override
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @pragma('vm:prefer-inline')
//   _$ContactAlternatifStateCopyWith<_ContactAlternatifState> get copyWith =>
//       __$ContactAlternatifStateCopyWithImpl<_ContactAlternatifState>(
//           this, _$identity);

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _ContactAlternatifState &&
//             (identical(other.contactAternatif, contactAternatif) ||
//                 other.contactAternatif == contactAternatif) &&
//             (identical(other.isSelectOtherContact, isSelectOtherContact) ||
//                 other.isSelectOtherContact == isSelectOtherContact) &&
//             (identical(other.status, status) || other.status == status) &&
//             (identical(other.messageError, messageError) ||
//                 other.messageError == messageError) &&
//             (identical(other.isValid, isValid) || other.isValid == isValid) &&
//             (identical(other.errorType, errorType) ||
//                 other.errorType == errorType));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, contactAternatif,
//       isSelectOtherContact, status, messageError, isValid, errorType);

//   @override
//   String toString() {
//     return 'ContactAlternatifState(contactAternatif: $contactAternatif, isSelectOtherContact: $isSelectOtherContact, status: $status, messageError: $messageError, isValid: $isValid, errorType: $errorType)';
//   }
// }

// /// @nodoc
// abstract mixin class _$ContactAlternatifStateCopyWith<$Res>
//     implements $ContactAlternatifStateCopyWith<$Res> {
//   factory _$ContactAlternatifStateCopyWith(_ContactAlternatifState value,
//           $Res Function(_ContactAlternatifState) _then) =
//       __$ContactAlternatifStateCopyWithImpl;
//   @override
//   @useResult
//   $Res call(
//       {PhoneAlternativeFormz contactAternatif,
//       bool isSelectOtherContact,
//       FormzSubmissionStatus status,
//       String messageError,
//       bool isValid,
//       Failure? errorType});
// }

// /// @nodoc
// class __$ContactAlternatifStateCopyWithImpl<$Res>
//     implements _$ContactAlternatifStateCopyWith<$Res> {
//   __$ContactAlternatifStateCopyWithImpl(this._self, this._then);

//   final _ContactAlternatifState _self;
//   final $Res Function(_ContactAlternatifState) _then;

//   /// Create a copy of ContactAlternatifState
//   /// with the given fields replaced by the non-null parameter values.
//   @override
//   @pragma('vm:prefer-inline')
//   $Res call({
//     Object? contactAternatif = null,
//     Object? isSelectOtherContact = null,
//     Object? status = null,
//     Object? messageError = null,
//     Object? isValid = null,
//     Object? errorType = freezed,
//   }) {
//     return _then(_ContactAlternatifState(
//       contactAternatif: null == contactAternatif
//           ? _self.contactAternatif
//           : contactAternatif // ignore: cast_nullable_to_non_nullable
//               as PhoneAlternativeFormz,
//       isSelectOtherContact: null == isSelectOtherContact
//           ? _self.isSelectOtherContact
//           : isSelectOtherContact // ignore: cast_nullable_to_non_nullable
//               as bool,
//       status: null == status
//           ? _self.status
//           : status // ignore: cast_nullable_to_non_nullable
//               as FormzSubmissionStatus,
//       messageError: null == messageError
//           ? _self.messageError
//           : messageError // ignore: cast_nullable_to_non_nullable
//               as String,
//       isValid: null == isValid
//           ? _self.isValid
//           : isValid // ignore: cast_nullable_to_non_nullable
//               as bool,
//       errorType: freezed == errorType
//           ? _self.errorType
//           : errorType // ignore: cast_nullable_to_non_nullable
//               as Failure?,
//     ));
//   }
// }

// // dart format on
