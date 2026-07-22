// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cellule_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestCellule {

 String? get celluleId; String? get celluleCode; String? get nom; String? get date; String? get description; String? get adresse; double? get latitude; double? get longitude; String? get responsableCelluleId; String? get responsableCellule; String? get contactResponsableCellule; String? get emailResponsableCellule; String? get adresseResponsableCellule; String? get secteurId; String? get secteurCode; String? get jourCellule; String? get heureCellule;
/// Create a copy of RequestCellule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestCelluleCopyWith<RequestCellule> get copyWith => _$RequestCelluleCopyWithImpl<RequestCellule>(this as RequestCellule, _$identity);

  /// Serializes this RequestCellule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestCellule&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.date, date) || other.date == date)&&(identical(other.description, description) || other.description == description)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId)&&(identical(other.responsableCellule, responsableCellule) || other.responsableCellule == responsableCellule)&&(identical(other.contactResponsableCellule, contactResponsableCellule) || other.contactResponsableCellule == contactResponsableCellule)&&(identical(other.emailResponsableCellule, emailResponsableCellule) || other.emailResponsableCellule == emailResponsableCellule)&&(identical(other.adresseResponsableCellule, adresseResponsableCellule) || other.adresseResponsableCellule == adresseResponsableCellule)&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.jourCellule, jourCellule) || other.jourCellule == jourCellule)&&(identical(other.heureCellule, heureCellule) || other.heureCellule == heureCellule));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,celluleId,celluleCode,nom,date,description,adresse,latitude,longitude,responsableCelluleId,responsableCellule,contactResponsableCellule,emailResponsableCellule,adresseResponsableCellule,secteurId,secteurCode,jourCellule,heureCellule);

@override
String toString() {
  return 'RequestCellule(celluleId: $celluleId, celluleCode: $celluleCode, nom: $nom, date: $date, description: $description, adresse: $adresse, latitude: $latitude, longitude: $longitude, responsableCelluleId: $responsableCelluleId, responsableCellule: $responsableCellule, contactResponsableCellule: $contactResponsableCellule, emailResponsableCellule: $emailResponsableCellule, adresseResponsableCellule: $adresseResponsableCellule, secteurId: $secteurId, secteurCode: $secteurCode, jourCellule: $jourCellule, heureCellule: $heureCellule)';
}


}

/// @nodoc
abstract mixin class $RequestCelluleCopyWith<$Res>  {
  factory $RequestCelluleCopyWith(RequestCellule value, $Res Function(RequestCellule) _then) = _$RequestCelluleCopyWithImpl;
@useResult
$Res call({
 String? celluleId, String? celluleCode, String? nom, String? date, String? description, String? adresse, double? latitude, double? longitude, String? responsableCelluleId, String? responsableCellule, String? contactResponsableCellule, String? emailResponsableCellule, String? adresseResponsableCellule, String? secteurId, String? secteurCode, String? jourCellule, String? heureCellule
});




}
/// @nodoc
class _$RequestCelluleCopyWithImpl<$Res>
    implements $RequestCelluleCopyWith<$Res> {
  _$RequestCelluleCopyWithImpl(this._self, this._then);

  final RequestCellule _self;
  final $Res Function(RequestCellule) _then;

/// Create a copy of RequestCellule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? celluleId = freezed,Object? celluleCode = freezed,Object? nom = freezed,Object? date = freezed,Object? description = freezed,Object? adresse = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? responsableCelluleId = freezed,Object? responsableCellule = freezed,Object? contactResponsableCellule = freezed,Object? emailResponsableCellule = freezed,Object? adresseResponsableCellule = freezed,Object? secteurId = freezed,Object? secteurCode = freezed,Object? jourCellule = freezed,Object? heureCellule = freezed,}) {
  return _then(_self.copyWith(
celluleId: freezed == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as String?,celluleCode: freezed == celluleCode ? _self.celluleCode : celluleCode // ignore: cast_nullable_to_non_nullable
as String?,nom: freezed == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,responsableCelluleId: freezed == responsableCelluleId ? _self.responsableCelluleId : responsableCelluleId // ignore: cast_nullable_to_non_nullable
as String?,responsableCellule: freezed == responsableCellule ? _self.responsableCellule : responsableCellule // ignore: cast_nullable_to_non_nullable
as String?,contactResponsableCellule: freezed == contactResponsableCellule ? _self.contactResponsableCellule : contactResponsableCellule // ignore: cast_nullable_to_non_nullable
as String?,emailResponsableCellule: freezed == emailResponsableCellule ? _self.emailResponsableCellule : emailResponsableCellule // ignore: cast_nullable_to_non_nullable
as String?,adresseResponsableCellule: freezed == adresseResponsableCellule ? _self.adresseResponsableCellule : adresseResponsableCellule // ignore: cast_nullable_to_non_nullable
as String?,secteurId: freezed == secteurId ? _self.secteurId : secteurId // ignore: cast_nullable_to_non_nullable
as String?,secteurCode: freezed == secteurCode ? _self.secteurCode : secteurCode // ignore: cast_nullable_to_non_nullable
as String?,jourCellule: freezed == jourCellule ? _self.jourCellule : jourCellule // ignore: cast_nullable_to_non_nullable
as String?,heureCellule: freezed == heureCellule ? _self.heureCellule : heureCellule // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestCellule].
extension RequestCellulePatterns on RequestCellule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestCellule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestCellule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestCellule value)  $default,){
final _that = this;
switch (_that) {
case _RequestCellule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestCellule value)?  $default,){
final _that = this;
switch (_that) {
case _RequestCellule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? celluleId,  String? celluleCode,  String? nom,  String? date,  String? description,  String? adresse,  double? latitude,  double? longitude,  String? responsableCelluleId,  String? responsableCellule,  String? contactResponsableCellule,  String? emailResponsableCellule,  String? adresseResponsableCellule,  String? secteurId,  String? secteurCode,  String? jourCellule,  String? heureCellule)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestCellule() when $default != null:
return $default(_that.celluleId,_that.celluleCode,_that.nom,_that.date,_that.description,_that.adresse,_that.latitude,_that.longitude,_that.responsableCelluleId,_that.responsableCellule,_that.contactResponsableCellule,_that.emailResponsableCellule,_that.adresseResponsableCellule,_that.secteurId,_that.secteurCode,_that.jourCellule,_that.heureCellule);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? celluleId,  String? celluleCode,  String? nom,  String? date,  String? description,  String? adresse,  double? latitude,  double? longitude,  String? responsableCelluleId,  String? responsableCellule,  String? contactResponsableCellule,  String? emailResponsableCellule,  String? adresseResponsableCellule,  String? secteurId,  String? secteurCode,  String? jourCellule,  String? heureCellule)  $default,) {final _that = this;
switch (_that) {
case _RequestCellule():
return $default(_that.celluleId,_that.celluleCode,_that.nom,_that.date,_that.description,_that.adresse,_that.latitude,_that.longitude,_that.responsableCelluleId,_that.responsableCellule,_that.contactResponsableCellule,_that.emailResponsableCellule,_that.adresseResponsableCellule,_that.secteurId,_that.secteurCode,_that.jourCellule,_that.heureCellule);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? celluleId,  String? celluleCode,  String? nom,  String? date,  String? description,  String? adresse,  double? latitude,  double? longitude,  String? responsableCelluleId,  String? responsableCellule,  String? contactResponsableCellule,  String? emailResponsableCellule,  String? adresseResponsableCellule,  String? secteurId,  String? secteurCode,  String? jourCellule,  String? heureCellule)?  $default,) {final _that = this;
switch (_that) {
case _RequestCellule() when $default != null:
return $default(_that.celluleId,_that.celluleCode,_that.nom,_that.date,_that.description,_that.adresse,_that.latitude,_that.longitude,_that.responsableCelluleId,_that.responsableCellule,_that.contactResponsableCellule,_that.emailResponsableCellule,_that.adresseResponsableCellule,_that.secteurId,_that.secteurCode,_that.jourCellule,_that.heureCellule);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestCellule implements RequestCellule {
   _RequestCellule({this.celluleId, this.celluleCode, this.nom, this.date, this.description, this.adresse, this.latitude, this.longitude, this.responsableCelluleId, this.responsableCellule, this.contactResponsableCellule, this.emailResponsableCellule, this.adresseResponsableCellule, this.secteurId, this.secteurCode, this.jourCellule, this.heureCellule});
  factory _RequestCellule.fromJson(Map<String, dynamic> json) => _$RequestCelluleFromJson(json);

@override final  String? celluleId;
@override final  String? celluleCode;
@override final  String? nom;
@override final  String? date;
@override final  String? description;
@override final  String? adresse;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? responsableCelluleId;
@override final  String? responsableCellule;
@override final  String? contactResponsableCellule;
@override final  String? emailResponsableCellule;
@override final  String? adresseResponsableCellule;
@override final  String? secteurId;
@override final  String? secteurCode;
@override final  String? jourCellule;
@override final  String? heureCellule;

/// Create a copy of RequestCellule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestCelluleCopyWith<_RequestCellule> get copyWith => __$RequestCelluleCopyWithImpl<_RequestCellule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestCelluleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestCellule&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.date, date) || other.date == date)&&(identical(other.description, description) || other.description == description)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId)&&(identical(other.responsableCellule, responsableCellule) || other.responsableCellule == responsableCellule)&&(identical(other.contactResponsableCellule, contactResponsableCellule) || other.contactResponsableCellule == contactResponsableCellule)&&(identical(other.emailResponsableCellule, emailResponsableCellule) || other.emailResponsableCellule == emailResponsableCellule)&&(identical(other.adresseResponsableCellule, adresseResponsableCellule) || other.adresseResponsableCellule == adresseResponsableCellule)&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.jourCellule, jourCellule) || other.jourCellule == jourCellule)&&(identical(other.heureCellule, heureCellule) || other.heureCellule == heureCellule));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,celluleId,celluleCode,nom,date,description,adresse,latitude,longitude,responsableCelluleId,responsableCellule,contactResponsableCellule,emailResponsableCellule,adresseResponsableCellule,secteurId,secteurCode,jourCellule,heureCellule);

@override
String toString() {
  return 'RequestCellule(celluleId: $celluleId, celluleCode: $celluleCode, nom: $nom, date: $date, description: $description, adresse: $adresse, latitude: $latitude, longitude: $longitude, responsableCelluleId: $responsableCelluleId, responsableCellule: $responsableCellule, contactResponsableCellule: $contactResponsableCellule, emailResponsableCellule: $emailResponsableCellule, adresseResponsableCellule: $adresseResponsableCellule, secteurId: $secteurId, secteurCode: $secteurCode, jourCellule: $jourCellule, heureCellule: $heureCellule)';
}


}

/// @nodoc
abstract mixin class _$RequestCelluleCopyWith<$Res> implements $RequestCelluleCopyWith<$Res> {
  factory _$RequestCelluleCopyWith(_RequestCellule value, $Res Function(_RequestCellule) _then) = __$RequestCelluleCopyWithImpl;
@override @useResult
$Res call({
 String? celluleId, String? celluleCode, String? nom, String? date, String? description, String? adresse, double? latitude, double? longitude, String? responsableCelluleId, String? responsableCellule, String? contactResponsableCellule, String? emailResponsableCellule, String? adresseResponsableCellule, String? secteurId, String? secteurCode, String? jourCellule, String? heureCellule
});




}
/// @nodoc
class __$RequestCelluleCopyWithImpl<$Res>
    implements _$RequestCelluleCopyWith<$Res> {
  __$RequestCelluleCopyWithImpl(this._self, this._then);

  final _RequestCellule _self;
  final $Res Function(_RequestCellule) _then;

/// Create a copy of RequestCellule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? celluleId = freezed,Object? celluleCode = freezed,Object? nom = freezed,Object? date = freezed,Object? description = freezed,Object? adresse = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? responsableCelluleId = freezed,Object? responsableCellule = freezed,Object? contactResponsableCellule = freezed,Object? emailResponsableCellule = freezed,Object? adresseResponsableCellule = freezed,Object? secteurId = freezed,Object? secteurCode = freezed,Object? jourCellule = freezed,Object? heureCellule = freezed,}) {
  return _then(_RequestCellule(
celluleId: freezed == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as String?,celluleCode: freezed == celluleCode ? _self.celluleCode : celluleCode // ignore: cast_nullable_to_non_nullable
as String?,nom: freezed == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,responsableCelluleId: freezed == responsableCelluleId ? _self.responsableCelluleId : responsableCelluleId // ignore: cast_nullable_to_non_nullable
as String?,responsableCellule: freezed == responsableCellule ? _self.responsableCellule : responsableCellule // ignore: cast_nullable_to_non_nullable
as String?,contactResponsableCellule: freezed == contactResponsableCellule ? _self.contactResponsableCellule : contactResponsableCellule // ignore: cast_nullable_to_non_nullable
as String?,emailResponsableCellule: freezed == emailResponsableCellule ? _self.emailResponsableCellule : emailResponsableCellule // ignore: cast_nullable_to_non_nullable
as String?,adresseResponsableCellule: freezed == adresseResponsableCellule ? _self.adresseResponsableCellule : adresseResponsableCellule // ignore: cast_nullable_to_non_nullable
as String?,secteurId: freezed == secteurId ? _self.secteurId : secteurId // ignore: cast_nullable_to_non_nullable
as String?,secteurCode: freezed == secteurCode ? _self.secteurCode : secteurCode // ignore: cast_nullable_to_non_nullable
as String?,jourCellule: freezed == jourCellule ? _self.jourCellule : jourCellule // ignore: cast_nullable_to_non_nullable
as String?,heureCellule: freezed == heureCellule ? _self.heureCellule : heureCellule // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RequestReponsableCellule {

 String? get celluleResponsableName; String? get reponsableId; String? get celluleCode; String? get date; String? get celluleName; String? get contact; String? get email; String? get adresse; String? get celluleId; String? get secteurId; String? get secteurCode;
/// Create a copy of RequestReponsableCellule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestReponsableCelluleCopyWith<RequestReponsableCellule> get copyWith => _$RequestReponsableCelluleCopyWithImpl<RequestReponsableCellule>(this as RequestReponsableCellule, _$identity);

  /// Serializes this RequestReponsableCellule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestReponsableCellule&&(identical(other.celluleResponsableName, celluleResponsableName) || other.celluleResponsableName == celluleResponsableName)&&(identical(other.reponsableId, reponsableId) || other.reponsableId == reponsableId)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.date, date) || other.date == date)&&(identical(other.celluleName, celluleName) || other.celluleName == celluleName)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.email, email) || other.email == email)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId)&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,celluleResponsableName,reponsableId,celluleCode,date,celluleName,contact,email,adresse,celluleId,secteurId,secteurCode);

@override
String toString() {
  return 'RequestReponsableCellule(celluleResponsableName: $celluleResponsableName, reponsableId: $reponsableId, celluleCode: $celluleCode, date: $date, celluleName: $celluleName, contact: $contact, email: $email, adresse: $adresse, celluleId: $celluleId, secteurId: $secteurId, secteurCode: $secteurCode)';
}


}

/// @nodoc
abstract mixin class $RequestReponsableCelluleCopyWith<$Res>  {
  factory $RequestReponsableCelluleCopyWith(RequestReponsableCellule value, $Res Function(RequestReponsableCellule) _then) = _$RequestReponsableCelluleCopyWithImpl;
@useResult
$Res call({
 String? celluleResponsableName, String? reponsableId, String? celluleCode, String? date, String? celluleName, String? contact, String? email, String? adresse, String? celluleId, String? secteurId, String? secteurCode
});




}
/// @nodoc
class _$RequestReponsableCelluleCopyWithImpl<$Res>
    implements $RequestReponsableCelluleCopyWith<$Res> {
  _$RequestReponsableCelluleCopyWithImpl(this._self, this._then);

  final RequestReponsableCellule _self;
  final $Res Function(RequestReponsableCellule) _then;

/// Create a copy of RequestReponsableCellule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? celluleResponsableName = freezed,Object? reponsableId = freezed,Object? celluleCode = freezed,Object? date = freezed,Object? celluleName = freezed,Object? contact = freezed,Object? email = freezed,Object? adresse = freezed,Object? celluleId = freezed,Object? secteurId = freezed,Object? secteurCode = freezed,}) {
  return _then(_self.copyWith(
celluleResponsableName: freezed == celluleResponsableName ? _self.celluleResponsableName : celluleResponsableName // ignore: cast_nullable_to_non_nullable
as String?,reponsableId: freezed == reponsableId ? _self.reponsableId : reponsableId // ignore: cast_nullable_to_non_nullable
as String?,celluleCode: freezed == celluleCode ? _self.celluleCode : celluleCode // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,celluleName: freezed == celluleName ? _self.celluleName : celluleName // ignore: cast_nullable_to_non_nullable
as String?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,celluleId: freezed == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as String?,secteurId: freezed == secteurId ? _self.secteurId : secteurId // ignore: cast_nullable_to_non_nullable
as String?,secteurCode: freezed == secteurCode ? _self.secteurCode : secteurCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestReponsableCellule].
extension RequestReponsableCellulePatterns on RequestReponsableCellule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestReponsableCellule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestReponsableCellule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestReponsableCellule value)  $default,){
final _that = this;
switch (_that) {
case _RequestReponsableCellule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestReponsableCellule value)?  $default,){
final _that = this;
switch (_that) {
case _RequestReponsableCellule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? celluleResponsableName,  String? reponsableId,  String? celluleCode,  String? date,  String? celluleName,  String? contact,  String? email,  String? adresse,  String? celluleId,  String? secteurId,  String? secteurCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestReponsableCellule() when $default != null:
return $default(_that.celluleResponsableName,_that.reponsableId,_that.celluleCode,_that.date,_that.celluleName,_that.contact,_that.email,_that.adresse,_that.celluleId,_that.secteurId,_that.secteurCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? celluleResponsableName,  String? reponsableId,  String? celluleCode,  String? date,  String? celluleName,  String? contact,  String? email,  String? adresse,  String? celluleId,  String? secteurId,  String? secteurCode)  $default,) {final _that = this;
switch (_that) {
case _RequestReponsableCellule():
return $default(_that.celluleResponsableName,_that.reponsableId,_that.celluleCode,_that.date,_that.celluleName,_that.contact,_that.email,_that.adresse,_that.celluleId,_that.secteurId,_that.secteurCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? celluleResponsableName,  String? reponsableId,  String? celluleCode,  String? date,  String? celluleName,  String? contact,  String? email,  String? adresse,  String? celluleId,  String? secteurId,  String? secteurCode)?  $default,) {final _that = this;
switch (_that) {
case _RequestReponsableCellule() when $default != null:
return $default(_that.celluleResponsableName,_that.reponsableId,_that.celluleCode,_that.date,_that.celluleName,_that.contact,_that.email,_that.adresse,_that.celluleId,_that.secteurId,_that.secteurCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestReponsableCellule implements RequestReponsableCellule {
   _RequestReponsableCellule({this.celluleResponsableName, this.reponsableId, this.celluleCode, this.date, this.celluleName, this.contact, this.email, this.adresse, this.celluleId, this.secteurId, this.secteurCode});
  factory _RequestReponsableCellule.fromJson(Map<String, dynamic> json) => _$RequestReponsableCelluleFromJson(json);

@override final  String? celluleResponsableName;
@override final  String? reponsableId;
@override final  String? celluleCode;
@override final  String? date;
@override final  String? celluleName;
@override final  String? contact;
@override final  String? email;
@override final  String? adresse;
@override final  String? celluleId;
@override final  String? secteurId;
@override final  String? secteurCode;

/// Create a copy of RequestReponsableCellule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestReponsableCelluleCopyWith<_RequestReponsableCellule> get copyWith => __$RequestReponsableCelluleCopyWithImpl<_RequestReponsableCellule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestReponsableCelluleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestReponsableCellule&&(identical(other.celluleResponsableName, celluleResponsableName) || other.celluleResponsableName == celluleResponsableName)&&(identical(other.reponsableId, reponsableId) || other.reponsableId == reponsableId)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.date, date) || other.date == date)&&(identical(other.celluleName, celluleName) || other.celluleName == celluleName)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.email, email) || other.email == email)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId)&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,celluleResponsableName,reponsableId,celluleCode,date,celluleName,contact,email,adresse,celluleId,secteurId,secteurCode);

@override
String toString() {
  return 'RequestReponsableCellule(celluleResponsableName: $celluleResponsableName, reponsableId: $reponsableId, celluleCode: $celluleCode, date: $date, celluleName: $celluleName, contact: $contact, email: $email, adresse: $adresse, celluleId: $celluleId, secteurId: $secteurId, secteurCode: $secteurCode)';
}


}

/// @nodoc
abstract mixin class _$RequestReponsableCelluleCopyWith<$Res> implements $RequestReponsableCelluleCopyWith<$Res> {
  factory _$RequestReponsableCelluleCopyWith(_RequestReponsableCellule value, $Res Function(_RequestReponsableCellule) _then) = __$RequestReponsableCelluleCopyWithImpl;
@override @useResult
$Res call({
 String? celluleResponsableName, String? reponsableId, String? celluleCode, String? date, String? celluleName, String? contact, String? email, String? adresse, String? celluleId, String? secteurId, String? secteurCode
});




}
/// @nodoc
class __$RequestReponsableCelluleCopyWithImpl<$Res>
    implements _$RequestReponsableCelluleCopyWith<$Res> {
  __$RequestReponsableCelluleCopyWithImpl(this._self, this._then);

  final _RequestReponsableCellule _self;
  final $Res Function(_RequestReponsableCellule) _then;

/// Create a copy of RequestReponsableCellule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? celluleResponsableName = freezed,Object? reponsableId = freezed,Object? celluleCode = freezed,Object? date = freezed,Object? celluleName = freezed,Object? contact = freezed,Object? email = freezed,Object? adresse = freezed,Object? celluleId = freezed,Object? secteurId = freezed,Object? secteurCode = freezed,}) {
  return _then(_RequestReponsableCellule(
celluleResponsableName: freezed == celluleResponsableName ? _self.celluleResponsableName : celluleResponsableName // ignore: cast_nullable_to_non_nullable
as String?,reponsableId: freezed == reponsableId ? _self.reponsableId : reponsableId // ignore: cast_nullable_to_non_nullable
as String?,celluleCode: freezed == celluleCode ? _self.celluleCode : celluleCode // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,celluleName: freezed == celluleName ? _self.celluleName : celluleName // ignore: cast_nullable_to_non_nullable
as String?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,celluleId: freezed == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as String?,secteurId: freezed == secteurId ? _self.secteurId : secteurId // ignore: cast_nullable_to_non_nullable
as String?,secteurCode: freezed == secteurCode ? _self.secteurCode : secteurCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RequestSecteur {

 String? get secteurId; String? get secteurCode; String? get secteurName; String? get dateCreated; String? get secteurResponsableName; String? get contactResponsable; String? get emailResponsableSecteur; String? get adressResponsableSecteur; String? get responsableSecteurId; String? get adresse; String? get zoneId; String? get zoneCode;
/// Create a copy of RequestSecteur
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestSecteurCopyWith<RequestSecteur> get copyWith => _$RequestSecteurCopyWithImpl<RequestSecteur>(this as RequestSecteur, _$identity);

  /// Serializes this RequestSecteur to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestSecteur&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.secteurName, secteurName) || other.secteurName == secteurName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.secteurResponsableName, secteurResponsableName) || other.secteurResponsableName == secteurResponsableName)&&(identical(other.contactResponsable, contactResponsable) || other.contactResponsable == contactResponsable)&&(identical(other.emailResponsableSecteur, emailResponsableSecteur) || other.emailResponsableSecteur == emailResponsableSecteur)&&(identical(other.adressResponsableSecteur, adressResponsableSecteur) || other.adressResponsableSecteur == adressResponsableSecteur)&&(identical(other.responsableSecteurId, responsableSecteurId) || other.responsableSecteurId == responsableSecteurId)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.zoneCode, zoneCode) || other.zoneCode == zoneCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,secteurId,secteurCode,secteurName,dateCreated,secteurResponsableName,contactResponsable,emailResponsableSecteur,adressResponsableSecteur,responsableSecteurId,adresse,zoneId,zoneCode);

@override
String toString() {
  return 'RequestSecteur(secteurId: $secteurId, secteurCode: $secteurCode, secteurName: $secteurName, dateCreated: $dateCreated, secteurResponsableName: $secteurResponsableName, contactResponsable: $contactResponsable, emailResponsableSecteur: $emailResponsableSecteur, adressResponsableSecteur: $adressResponsableSecteur, responsableSecteurId: $responsableSecteurId, adresse: $adresse, zoneId: $zoneId, zoneCode: $zoneCode)';
}


}

/// @nodoc
abstract mixin class $RequestSecteurCopyWith<$Res>  {
  factory $RequestSecteurCopyWith(RequestSecteur value, $Res Function(RequestSecteur) _then) = _$RequestSecteurCopyWithImpl;
@useResult
$Res call({
 String? secteurId, String? secteurCode, String? secteurName, String? dateCreated, String? secteurResponsableName, String? contactResponsable, String? emailResponsableSecteur, String? adressResponsableSecteur, String? responsableSecteurId, String? adresse, String? zoneId, String? zoneCode
});




}
/// @nodoc
class _$RequestSecteurCopyWithImpl<$Res>
    implements $RequestSecteurCopyWith<$Res> {
  _$RequestSecteurCopyWithImpl(this._self, this._then);

  final RequestSecteur _self;
  final $Res Function(RequestSecteur) _then;

/// Create a copy of RequestSecteur
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? secteurId = freezed,Object? secteurCode = freezed,Object? secteurName = freezed,Object? dateCreated = freezed,Object? secteurResponsableName = freezed,Object? contactResponsable = freezed,Object? emailResponsableSecteur = freezed,Object? adressResponsableSecteur = freezed,Object? responsableSecteurId = freezed,Object? adresse = freezed,Object? zoneId = freezed,Object? zoneCode = freezed,}) {
  return _then(_self.copyWith(
secteurId: freezed == secteurId ? _self.secteurId : secteurId // ignore: cast_nullable_to_non_nullable
as String?,secteurCode: freezed == secteurCode ? _self.secteurCode : secteurCode // ignore: cast_nullable_to_non_nullable
as String?,secteurName: freezed == secteurName ? _self.secteurName : secteurName // ignore: cast_nullable_to_non_nullable
as String?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,secteurResponsableName: freezed == secteurResponsableName ? _self.secteurResponsableName : secteurResponsableName // ignore: cast_nullable_to_non_nullable
as String?,contactResponsable: freezed == contactResponsable ? _self.contactResponsable : contactResponsable // ignore: cast_nullable_to_non_nullable
as String?,emailResponsableSecteur: freezed == emailResponsableSecteur ? _self.emailResponsableSecteur : emailResponsableSecteur // ignore: cast_nullable_to_non_nullable
as String?,adressResponsableSecteur: freezed == adressResponsableSecteur ? _self.adressResponsableSecteur : adressResponsableSecteur // ignore: cast_nullable_to_non_nullable
as String?,responsableSecteurId: freezed == responsableSecteurId ? _self.responsableSecteurId : responsableSecteurId // ignore: cast_nullable_to_non_nullable
as String?,adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,zoneId: freezed == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as String?,zoneCode: freezed == zoneCode ? _self.zoneCode : zoneCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestSecteur].
extension RequestSecteurPatterns on RequestSecteur {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestSecteur value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestSecteur() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestSecteur value)  $default,){
final _that = this;
switch (_that) {
case _RequestSecteur():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestSecteur value)?  $default,){
final _that = this;
switch (_that) {
case _RequestSecteur() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? secteurId,  String? secteurCode,  String? secteurName,  String? dateCreated,  String? secteurResponsableName,  String? contactResponsable,  String? emailResponsableSecteur,  String? adressResponsableSecteur,  String? responsableSecteurId,  String? adresse,  String? zoneId,  String? zoneCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestSecteur() when $default != null:
return $default(_that.secteurId,_that.secteurCode,_that.secteurName,_that.dateCreated,_that.secteurResponsableName,_that.contactResponsable,_that.emailResponsableSecteur,_that.adressResponsableSecteur,_that.responsableSecteurId,_that.adresse,_that.zoneId,_that.zoneCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? secteurId,  String? secteurCode,  String? secteurName,  String? dateCreated,  String? secteurResponsableName,  String? contactResponsable,  String? emailResponsableSecteur,  String? adressResponsableSecteur,  String? responsableSecteurId,  String? adresse,  String? zoneId,  String? zoneCode)  $default,) {final _that = this;
switch (_that) {
case _RequestSecteur():
return $default(_that.secteurId,_that.secteurCode,_that.secteurName,_that.dateCreated,_that.secteurResponsableName,_that.contactResponsable,_that.emailResponsableSecteur,_that.adressResponsableSecteur,_that.responsableSecteurId,_that.adresse,_that.zoneId,_that.zoneCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? secteurId,  String? secteurCode,  String? secteurName,  String? dateCreated,  String? secteurResponsableName,  String? contactResponsable,  String? emailResponsableSecteur,  String? adressResponsableSecteur,  String? responsableSecteurId,  String? adresse,  String? zoneId,  String? zoneCode)?  $default,) {final _that = this;
switch (_that) {
case _RequestSecteur() when $default != null:
return $default(_that.secteurId,_that.secteurCode,_that.secteurName,_that.dateCreated,_that.secteurResponsableName,_that.contactResponsable,_that.emailResponsableSecteur,_that.adressResponsableSecteur,_that.responsableSecteurId,_that.adresse,_that.zoneId,_that.zoneCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestSecteur implements RequestSecteur {
   _RequestSecteur({this.secteurId, this.secteurCode, this.secteurName, this.dateCreated, this.secteurResponsableName, this.contactResponsable, this.emailResponsableSecteur, this.adressResponsableSecteur, this.responsableSecteurId, this.adresse, this.zoneId, this.zoneCode});
  factory _RequestSecteur.fromJson(Map<String, dynamic> json) => _$RequestSecteurFromJson(json);

@override final  String? secteurId;
@override final  String? secteurCode;
@override final  String? secteurName;
@override final  String? dateCreated;
@override final  String? secteurResponsableName;
@override final  String? contactResponsable;
@override final  String? emailResponsableSecteur;
@override final  String? adressResponsableSecteur;
@override final  String? responsableSecteurId;
@override final  String? adresse;
@override final  String? zoneId;
@override final  String? zoneCode;

/// Create a copy of RequestSecteur
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestSecteurCopyWith<_RequestSecteur> get copyWith => __$RequestSecteurCopyWithImpl<_RequestSecteur>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestSecteurToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestSecteur&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.secteurName, secteurName) || other.secteurName == secteurName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.secteurResponsableName, secteurResponsableName) || other.secteurResponsableName == secteurResponsableName)&&(identical(other.contactResponsable, contactResponsable) || other.contactResponsable == contactResponsable)&&(identical(other.emailResponsableSecteur, emailResponsableSecteur) || other.emailResponsableSecteur == emailResponsableSecteur)&&(identical(other.adressResponsableSecteur, adressResponsableSecteur) || other.adressResponsableSecteur == adressResponsableSecteur)&&(identical(other.responsableSecteurId, responsableSecteurId) || other.responsableSecteurId == responsableSecteurId)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.zoneCode, zoneCode) || other.zoneCode == zoneCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,secteurId,secteurCode,secteurName,dateCreated,secteurResponsableName,contactResponsable,emailResponsableSecteur,adressResponsableSecteur,responsableSecteurId,adresse,zoneId,zoneCode);

@override
String toString() {
  return 'RequestSecteur(secteurId: $secteurId, secteurCode: $secteurCode, secteurName: $secteurName, dateCreated: $dateCreated, secteurResponsableName: $secteurResponsableName, contactResponsable: $contactResponsable, emailResponsableSecteur: $emailResponsableSecteur, adressResponsableSecteur: $adressResponsableSecteur, responsableSecteurId: $responsableSecteurId, adresse: $adresse, zoneId: $zoneId, zoneCode: $zoneCode)';
}


}

/// @nodoc
abstract mixin class _$RequestSecteurCopyWith<$Res> implements $RequestSecteurCopyWith<$Res> {
  factory _$RequestSecteurCopyWith(_RequestSecteur value, $Res Function(_RequestSecteur) _then) = __$RequestSecteurCopyWithImpl;
@override @useResult
$Res call({
 String? secteurId, String? secteurCode, String? secteurName, String? dateCreated, String? secteurResponsableName, String? contactResponsable, String? emailResponsableSecteur, String? adressResponsableSecteur, String? responsableSecteurId, String? adresse, String? zoneId, String? zoneCode
});




}
/// @nodoc
class __$RequestSecteurCopyWithImpl<$Res>
    implements _$RequestSecteurCopyWith<$Res> {
  __$RequestSecteurCopyWithImpl(this._self, this._then);

  final _RequestSecteur _self;
  final $Res Function(_RequestSecteur) _then;

/// Create a copy of RequestSecteur
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? secteurId = freezed,Object? secteurCode = freezed,Object? secteurName = freezed,Object? dateCreated = freezed,Object? secteurResponsableName = freezed,Object? contactResponsable = freezed,Object? emailResponsableSecteur = freezed,Object? adressResponsableSecteur = freezed,Object? responsableSecteurId = freezed,Object? adresse = freezed,Object? zoneId = freezed,Object? zoneCode = freezed,}) {
  return _then(_RequestSecteur(
secteurId: freezed == secteurId ? _self.secteurId : secteurId // ignore: cast_nullable_to_non_nullable
as String?,secteurCode: freezed == secteurCode ? _self.secteurCode : secteurCode // ignore: cast_nullable_to_non_nullable
as String?,secteurName: freezed == secteurName ? _self.secteurName : secteurName // ignore: cast_nullable_to_non_nullable
as String?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,secteurResponsableName: freezed == secteurResponsableName ? _self.secteurResponsableName : secteurResponsableName // ignore: cast_nullable_to_non_nullable
as String?,contactResponsable: freezed == contactResponsable ? _self.contactResponsable : contactResponsable // ignore: cast_nullable_to_non_nullable
as String?,emailResponsableSecteur: freezed == emailResponsableSecteur ? _self.emailResponsableSecteur : emailResponsableSecteur // ignore: cast_nullable_to_non_nullable
as String?,adressResponsableSecteur: freezed == adressResponsableSecteur ? _self.adressResponsableSecteur : adressResponsableSecteur // ignore: cast_nullable_to_non_nullable
as String?,responsableSecteurId: freezed == responsableSecteurId ? _self.responsableSecteurId : responsableSecteurId // ignore: cast_nullable_to_non_nullable
as String?,adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,zoneId: freezed == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as String?,zoneCode: freezed == zoneCode ? _self.zoneCode : zoneCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RequestZone {

 String? get zoneId; String? get zoneCode; String? get zoneName; String? get dateCreated; String? get zoneResponsableName; String? get contactResponsable; String? get emailResponsablezone; String? get adressResponsablezone; String? get responsablezoneId; String? get adresse; String? get regionId; String? get regionCode;
/// Create a copy of RequestZone
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestZoneCopyWith<RequestZone> get copyWith => _$RequestZoneCopyWithImpl<RequestZone>(this as RequestZone, _$identity);

  /// Serializes this RequestZone to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestZone&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.zoneCode, zoneCode) || other.zoneCode == zoneCode)&&(identical(other.zoneName, zoneName) || other.zoneName == zoneName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.zoneResponsableName, zoneResponsableName) || other.zoneResponsableName == zoneResponsableName)&&(identical(other.contactResponsable, contactResponsable) || other.contactResponsable == contactResponsable)&&(identical(other.emailResponsablezone, emailResponsablezone) || other.emailResponsablezone == emailResponsablezone)&&(identical(other.adressResponsablezone, adressResponsablezone) || other.adressResponsablezone == adressResponsablezone)&&(identical(other.responsablezoneId, responsablezoneId) || other.responsablezoneId == responsablezoneId)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.regionCode, regionCode) || other.regionCode == regionCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,zoneId,zoneCode,zoneName,dateCreated,zoneResponsableName,contactResponsable,emailResponsablezone,adressResponsablezone,responsablezoneId,adresse,regionId,regionCode);

@override
String toString() {
  return 'RequestZone(zoneId: $zoneId, zoneCode: $zoneCode, zoneName: $zoneName, dateCreated: $dateCreated, zoneResponsableName: $zoneResponsableName, contactResponsable: $contactResponsable, emailResponsablezone: $emailResponsablezone, adressResponsablezone: $adressResponsablezone, responsablezoneId: $responsablezoneId, adresse: $adresse, regionId: $regionId, regionCode: $regionCode)';
}


}

/// @nodoc
abstract mixin class $RequestZoneCopyWith<$Res>  {
  factory $RequestZoneCopyWith(RequestZone value, $Res Function(RequestZone) _then) = _$RequestZoneCopyWithImpl;
@useResult
$Res call({
 String? zoneId, String? zoneCode, String? zoneName, String? dateCreated, String? zoneResponsableName, String? contactResponsable, String? emailResponsablezone, String? adressResponsablezone, String? responsablezoneId, String? adresse, String? regionId, String? regionCode
});




}
/// @nodoc
class _$RequestZoneCopyWithImpl<$Res>
    implements $RequestZoneCopyWith<$Res> {
  _$RequestZoneCopyWithImpl(this._self, this._then);

  final RequestZone _self;
  final $Res Function(RequestZone) _then;

/// Create a copy of RequestZone
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? zoneId = freezed,Object? zoneCode = freezed,Object? zoneName = freezed,Object? dateCreated = freezed,Object? zoneResponsableName = freezed,Object? contactResponsable = freezed,Object? emailResponsablezone = freezed,Object? adressResponsablezone = freezed,Object? responsablezoneId = freezed,Object? adresse = freezed,Object? regionId = freezed,Object? regionCode = freezed,}) {
  return _then(_self.copyWith(
zoneId: freezed == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as String?,zoneCode: freezed == zoneCode ? _self.zoneCode : zoneCode // ignore: cast_nullable_to_non_nullable
as String?,zoneName: freezed == zoneName ? _self.zoneName : zoneName // ignore: cast_nullable_to_non_nullable
as String?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,zoneResponsableName: freezed == zoneResponsableName ? _self.zoneResponsableName : zoneResponsableName // ignore: cast_nullable_to_non_nullable
as String?,contactResponsable: freezed == contactResponsable ? _self.contactResponsable : contactResponsable // ignore: cast_nullable_to_non_nullable
as String?,emailResponsablezone: freezed == emailResponsablezone ? _self.emailResponsablezone : emailResponsablezone // ignore: cast_nullable_to_non_nullable
as String?,adressResponsablezone: freezed == adressResponsablezone ? _self.adressResponsablezone : adressResponsablezone // ignore: cast_nullable_to_non_nullable
as String?,responsablezoneId: freezed == responsablezoneId ? _self.responsablezoneId : responsablezoneId // ignore: cast_nullable_to_non_nullable
as String?,adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,regionId: freezed == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String?,regionCode: freezed == regionCode ? _self.regionCode : regionCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestZone].
extension RequestZonePatterns on RequestZone {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestZone value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestZone() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestZone value)  $default,){
final _that = this;
switch (_that) {
case _RequestZone():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestZone value)?  $default,){
final _that = this;
switch (_that) {
case _RequestZone() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? zoneId,  String? zoneCode,  String? zoneName,  String? dateCreated,  String? zoneResponsableName,  String? contactResponsable,  String? emailResponsablezone,  String? adressResponsablezone,  String? responsablezoneId,  String? adresse,  String? regionId,  String? regionCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestZone() when $default != null:
return $default(_that.zoneId,_that.zoneCode,_that.zoneName,_that.dateCreated,_that.zoneResponsableName,_that.contactResponsable,_that.emailResponsablezone,_that.adressResponsablezone,_that.responsablezoneId,_that.adresse,_that.regionId,_that.regionCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? zoneId,  String? zoneCode,  String? zoneName,  String? dateCreated,  String? zoneResponsableName,  String? contactResponsable,  String? emailResponsablezone,  String? adressResponsablezone,  String? responsablezoneId,  String? adresse,  String? regionId,  String? regionCode)  $default,) {final _that = this;
switch (_that) {
case _RequestZone():
return $default(_that.zoneId,_that.zoneCode,_that.zoneName,_that.dateCreated,_that.zoneResponsableName,_that.contactResponsable,_that.emailResponsablezone,_that.adressResponsablezone,_that.responsablezoneId,_that.adresse,_that.regionId,_that.regionCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? zoneId,  String? zoneCode,  String? zoneName,  String? dateCreated,  String? zoneResponsableName,  String? contactResponsable,  String? emailResponsablezone,  String? adressResponsablezone,  String? responsablezoneId,  String? adresse,  String? regionId,  String? regionCode)?  $default,) {final _that = this;
switch (_that) {
case _RequestZone() when $default != null:
return $default(_that.zoneId,_that.zoneCode,_that.zoneName,_that.dateCreated,_that.zoneResponsableName,_that.contactResponsable,_that.emailResponsablezone,_that.adressResponsablezone,_that.responsablezoneId,_that.adresse,_that.regionId,_that.regionCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestZone implements RequestZone {
   _RequestZone({this.zoneId, this.zoneCode, this.zoneName, this.dateCreated, this.zoneResponsableName, this.contactResponsable, this.emailResponsablezone, this.adressResponsablezone, this.responsablezoneId, this.adresse, this.regionId, this.regionCode});
  factory _RequestZone.fromJson(Map<String, dynamic> json) => _$RequestZoneFromJson(json);

@override final  String? zoneId;
@override final  String? zoneCode;
@override final  String? zoneName;
@override final  String? dateCreated;
@override final  String? zoneResponsableName;
@override final  String? contactResponsable;
@override final  String? emailResponsablezone;
@override final  String? adressResponsablezone;
@override final  String? responsablezoneId;
@override final  String? adresse;
@override final  String? regionId;
@override final  String? regionCode;

/// Create a copy of RequestZone
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestZoneCopyWith<_RequestZone> get copyWith => __$RequestZoneCopyWithImpl<_RequestZone>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestZoneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestZone&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.zoneCode, zoneCode) || other.zoneCode == zoneCode)&&(identical(other.zoneName, zoneName) || other.zoneName == zoneName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.zoneResponsableName, zoneResponsableName) || other.zoneResponsableName == zoneResponsableName)&&(identical(other.contactResponsable, contactResponsable) || other.contactResponsable == contactResponsable)&&(identical(other.emailResponsablezone, emailResponsablezone) || other.emailResponsablezone == emailResponsablezone)&&(identical(other.adressResponsablezone, adressResponsablezone) || other.adressResponsablezone == adressResponsablezone)&&(identical(other.responsablezoneId, responsablezoneId) || other.responsablezoneId == responsablezoneId)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.regionCode, regionCode) || other.regionCode == regionCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,zoneId,zoneCode,zoneName,dateCreated,zoneResponsableName,contactResponsable,emailResponsablezone,adressResponsablezone,responsablezoneId,adresse,regionId,regionCode);

@override
String toString() {
  return 'RequestZone(zoneId: $zoneId, zoneCode: $zoneCode, zoneName: $zoneName, dateCreated: $dateCreated, zoneResponsableName: $zoneResponsableName, contactResponsable: $contactResponsable, emailResponsablezone: $emailResponsablezone, adressResponsablezone: $adressResponsablezone, responsablezoneId: $responsablezoneId, adresse: $adresse, regionId: $regionId, regionCode: $regionCode)';
}


}

/// @nodoc
abstract mixin class _$RequestZoneCopyWith<$Res> implements $RequestZoneCopyWith<$Res> {
  factory _$RequestZoneCopyWith(_RequestZone value, $Res Function(_RequestZone) _then) = __$RequestZoneCopyWithImpl;
@override @useResult
$Res call({
 String? zoneId, String? zoneCode, String? zoneName, String? dateCreated, String? zoneResponsableName, String? contactResponsable, String? emailResponsablezone, String? adressResponsablezone, String? responsablezoneId, String? adresse, String? regionId, String? regionCode
});




}
/// @nodoc
class __$RequestZoneCopyWithImpl<$Res>
    implements _$RequestZoneCopyWith<$Res> {
  __$RequestZoneCopyWithImpl(this._self, this._then);

  final _RequestZone _self;
  final $Res Function(_RequestZone) _then;

/// Create a copy of RequestZone
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? zoneId = freezed,Object? zoneCode = freezed,Object? zoneName = freezed,Object? dateCreated = freezed,Object? zoneResponsableName = freezed,Object? contactResponsable = freezed,Object? emailResponsablezone = freezed,Object? adressResponsablezone = freezed,Object? responsablezoneId = freezed,Object? adresse = freezed,Object? regionId = freezed,Object? regionCode = freezed,}) {
  return _then(_RequestZone(
zoneId: freezed == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as String?,zoneCode: freezed == zoneCode ? _self.zoneCode : zoneCode // ignore: cast_nullable_to_non_nullable
as String?,zoneName: freezed == zoneName ? _self.zoneName : zoneName // ignore: cast_nullable_to_non_nullable
as String?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,zoneResponsableName: freezed == zoneResponsableName ? _self.zoneResponsableName : zoneResponsableName // ignore: cast_nullable_to_non_nullable
as String?,contactResponsable: freezed == contactResponsable ? _self.contactResponsable : contactResponsable // ignore: cast_nullable_to_non_nullable
as String?,emailResponsablezone: freezed == emailResponsablezone ? _self.emailResponsablezone : emailResponsablezone // ignore: cast_nullable_to_non_nullable
as String?,adressResponsablezone: freezed == adressResponsablezone ? _self.adressResponsablezone : adressResponsablezone // ignore: cast_nullable_to_non_nullable
as String?,responsablezoneId: freezed == responsablezoneId ? _self.responsablezoneId : responsablezoneId // ignore: cast_nullable_to_non_nullable
as String?,adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,regionId: freezed == regionId ? _self.regionId : regionId // ignore: cast_nullable_to_non_nullable
as String?,regionCode: freezed == regionCode ? _self.regionCode : regionCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RequestRapportCelluleAdministration {

 String get codeZone; String get fullNameRespoZone; String get contactRespoZone; String get codeSecteur; String get responsableCelluleId; String get fullNameRespoSecteur; String get contactRespoSecteur; String get codeCellule; String get fullNameRespoCellule; String get contactRespoCellule; String get jourCellule; String get offrande; String get nombreBaptiser; String get nombreNonBaptiser; List<Map<String, dynamic>> get discipleCellule; String get id; String get formAdministrationIsSubmit; String get formAdministrationSubmitDate; String get tag;
/// Create a copy of RequestRapportCelluleAdministration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestRapportCelluleAdministrationCopyWith<RequestRapportCelluleAdministration> get copyWith => _$RequestRapportCelluleAdministrationCopyWithImpl<RequestRapportCelluleAdministration>(this as RequestRapportCelluleAdministration, _$identity);

  /// Serializes this RequestRapportCelluleAdministration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestRapportCelluleAdministration&&(identical(other.codeZone, codeZone) || other.codeZone == codeZone)&&(identical(other.fullNameRespoZone, fullNameRespoZone) || other.fullNameRespoZone == fullNameRespoZone)&&(identical(other.contactRespoZone, contactRespoZone) || other.contactRespoZone == contactRespoZone)&&(identical(other.codeSecteur, codeSecteur) || other.codeSecteur == codeSecteur)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId)&&(identical(other.fullNameRespoSecteur, fullNameRespoSecteur) || other.fullNameRespoSecteur == fullNameRespoSecteur)&&(identical(other.contactRespoSecteur, contactRespoSecteur) || other.contactRespoSecteur == contactRespoSecteur)&&(identical(other.codeCellule, codeCellule) || other.codeCellule == codeCellule)&&(identical(other.fullNameRespoCellule, fullNameRespoCellule) || other.fullNameRespoCellule == fullNameRespoCellule)&&(identical(other.contactRespoCellule, contactRespoCellule) || other.contactRespoCellule == contactRespoCellule)&&(identical(other.jourCellule, jourCellule) || other.jourCellule == jourCellule)&&(identical(other.offrande, offrande) || other.offrande == offrande)&&(identical(other.nombreBaptiser, nombreBaptiser) || other.nombreBaptiser == nombreBaptiser)&&(identical(other.nombreNonBaptiser, nombreNonBaptiser) || other.nombreNonBaptiser == nombreNonBaptiser)&&const DeepCollectionEquality().equals(other.discipleCellule, discipleCellule)&&(identical(other.id, id) || other.id == id)&&(identical(other.formAdministrationIsSubmit, formAdministrationIsSubmit) || other.formAdministrationIsSubmit == formAdministrationIsSubmit)&&(identical(other.formAdministrationSubmitDate, formAdministrationSubmitDate) || other.formAdministrationSubmitDate == formAdministrationSubmitDate)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,codeZone,fullNameRespoZone,contactRespoZone,codeSecteur,responsableCelluleId,fullNameRespoSecteur,contactRespoSecteur,codeCellule,fullNameRespoCellule,contactRespoCellule,jourCellule,offrande,nombreBaptiser,nombreNonBaptiser,const DeepCollectionEquality().hash(discipleCellule),id,formAdministrationIsSubmit,formAdministrationSubmitDate,tag]);

@override
String toString() {
  return 'RequestRapportCelluleAdministration(codeZone: $codeZone, fullNameRespoZone: $fullNameRespoZone, contactRespoZone: $contactRespoZone, codeSecteur: $codeSecteur, responsableCelluleId: $responsableCelluleId, fullNameRespoSecteur: $fullNameRespoSecteur, contactRespoSecteur: $contactRespoSecteur, codeCellule: $codeCellule, fullNameRespoCellule: $fullNameRespoCellule, contactRespoCellule: $contactRespoCellule, jourCellule: $jourCellule, offrande: $offrande, nombreBaptiser: $nombreBaptiser, nombreNonBaptiser: $nombreNonBaptiser, discipleCellule: $discipleCellule, id: $id, formAdministrationIsSubmit: $formAdministrationIsSubmit, formAdministrationSubmitDate: $formAdministrationSubmitDate, tag: $tag)';
}


}

/// @nodoc
abstract mixin class $RequestRapportCelluleAdministrationCopyWith<$Res>  {
  factory $RequestRapportCelluleAdministrationCopyWith(RequestRapportCelluleAdministration value, $Res Function(RequestRapportCelluleAdministration) _then) = _$RequestRapportCelluleAdministrationCopyWithImpl;
@useResult
$Res call({
 String codeZone, String fullNameRespoZone, String contactRespoZone, String codeSecteur, String responsableCelluleId, String fullNameRespoSecteur, String contactRespoSecteur, String codeCellule, String fullNameRespoCellule, String contactRespoCellule, String jourCellule, String offrande, String nombreBaptiser, String nombreNonBaptiser, List<Map<String, dynamic>> discipleCellule, String id, String formAdministrationIsSubmit, String formAdministrationSubmitDate, String tag
});




}
/// @nodoc
class _$RequestRapportCelluleAdministrationCopyWithImpl<$Res>
    implements $RequestRapportCelluleAdministrationCopyWith<$Res> {
  _$RequestRapportCelluleAdministrationCopyWithImpl(this._self, this._then);

  final RequestRapportCelluleAdministration _self;
  final $Res Function(RequestRapportCelluleAdministration) _then;

/// Create a copy of RequestRapportCelluleAdministration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? codeZone = null,Object? fullNameRespoZone = null,Object? contactRespoZone = null,Object? codeSecteur = null,Object? responsableCelluleId = null,Object? fullNameRespoSecteur = null,Object? contactRespoSecteur = null,Object? codeCellule = null,Object? fullNameRespoCellule = null,Object? contactRespoCellule = null,Object? jourCellule = null,Object? offrande = null,Object? nombreBaptiser = null,Object? nombreNonBaptiser = null,Object? discipleCellule = null,Object? id = null,Object? formAdministrationIsSubmit = null,Object? formAdministrationSubmitDate = null,Object? tag = null,}) {
  return _then(_self.copyWith(
codeZone: null == codeZone ? _self.codeZone : codeZone // ignore: cast_nullable_to_non_nullable
as String,fullNameRespoZone: null == fullNameRespoZone ? _self.fullNameRespoZone : fullNameRespoZone // ignore: cast_nullable_to_non_nullable
as String,contactRespoZone: null == contactRespoZone ? _self.contactRespoZone : contactRespoZone // ignore: cast_nullable_to_non_nullable
as String,codeSecteur: null == codeSecteur ? _self.codeSecteur : codeSecteur // ignore: cast_nullable_to_non_nullable
as String,responsableCelluleId: null == responsableCelluleId ? _self.responsableCelluleId : responsableCelluleId // ignore: cast_nullable_to_non_nullable
as String,fullNameRespoSecteur: null == fullNameRespoSecteur ? _self.fullNameRespoSecteur : fullNameRespoSecteur // ignore: cast_nullable_to_non_nullable
as String,contactRespoSecteur: null == contactRespoSecteur ? _self.contactRespoSecteur : contactRespoSecteur // ignore: cast_nullable_to_non_nullable
as String,codeCellule: null == codeCellule ? _self.codeCellule : codeCellule // ignore: cast_nullable_to_non_nullable
as String,fullNameRespoCellule: null == fullNameRespoCellule ? _self.fullNameRespoCellule : fullNameRespoCellule // ignore: cast_nullable_to_non_nullable
as String,contactRespoCellule: null == contactRespoCellule ? _self.contactRespoCellule : contactRespoCellule // ignore: cast_nullable_to_non_nullable
as String,jourCellule: null == jourCellule ? _self.jourCellule : jourCellule // ignore: cast_nullable_to_non_nullable
as String,offrande: null == offrande ? _self.offrande : offrande // ignore: cast_nullable_to_non_nullable
as String,nombreBaptiser: null == nombreBaptiser ? _self.nombreBaptiser : nombreBaptiser // ignore: cast_nullable_to_non_nullable
as String,nombreNonBaptiser: null == nombreNonBaptiser ? _self.nombreNonBaptiser : nombreNonBaptiser // ignore: cast_nullable_to_non_nullable
as String,discipleCellule: null == discipleCellule ? _self.discipleCellule : discipleCellule // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,formAdministrationIsSubmit: null == formAdministrationIsSubmit ? _self.formAdministrationIsSubmit : formAdministrationIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formAdministrationSubmitDate: null == formAdministrationSubmitDate ? _self.formAdministrationSubmitDate : formAdministrationSubmitDate // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestRapportCelluleAdministration].
extension RequestRapportCelluleAdministrationPatterns on RequestRapportCelluleAdministration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestRapportCelluleAdministration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestRapportCelluleAdministration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestRapportCelluleAdministration value)  $default,){
final _that = this;
switch (_that) {
case _RequestRapportCelluleAdministration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestRapportCelluleAdministration value)?  $default,){
final _that = this;
switch (_that) {
case _RequestRapportCelluleAdministration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String codeZone,  String fullNameRespoZone,  String contactRespoZone,  String codeSecteur,  String responsableCelluleId,  String fullNameRespoSecteur,  String contactRespoSecteur,  String codeCellule,  String fullNameRespoCellule,  String contactRespoCellule,  String jourCellule,  String offrande,  String nombreBaptiser,  String nombreNonBaptiser,  List<Map<String, dynamic>> discipleCellule,  String id,  String formAdministrationIsSubmit,  String formAdministrationSubmitDate,  String tag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestRapportCelluleAdministration() when $default != null:
return $default(_that.codeZone,_that.fullNameRespoZone,_that.contactRespoZone,_that.codeSecteur,_that.responsableCelluleId,_that.fullNameRespoSecteur,_that.contactRespoSecteur,_that.codeCellule,_that.fullNameRespoCellule,_that.contactRespoCellule,_that.jourCellule,_that.offrande,_that.nombreBaptiser,_that.nombreNonBaptiser,_that.discipleCellule,_that.id,_that.formAdministrationIsSubmit,_that.formAdministrationSubmitDate,_that.tag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String codeZone,  String fullNameRespoZone,  String contactRespoZone,  String codeSecteur,  String responsableCelluleId,  String fullNameRespoSecteur,  String contactRespoSecteur,  String codeCellule,  String fullNameRespoCellule,  String contactRespoCellule,  String jourCellule,  String offrande,  String nombreBaptiser,  String nombreNonBaptiser,  List<Map<String, dynamic>> discipleCellule,  String id,  String formAdministrationIsSubmit,  String formAdministrationSubmitDate,  String tag)  $default,) {final _that = this;
switch (_that) {
case _RequestRapportCelluleAdministration():
return $default(_that.codeZone,_that.fullNameRespoZone,_that.contactRespoZone,_that.codeSecteur,_that.responsableCelluleId,_that.fullNameRespoSecteur,_that.contactRespoSecteur,_that.codeCellule,_that.fullNameRespoCellule,_that.contactRespoCellule,_that.jourCellule,_that.offrande,_that.nombreBaptiser,_that.nombreNonBaptiser,_that.discipleCellule,_that.id,_that.formAdministrationIsSubmit,_that.formAdministrationSubmitDate,_that.tag);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String codeZone,  String fullNameRespoZone,  String contactRespoZone,  String codeSecteur,  String responsableCelluleId,  String fullNameRespoSecteur,  String contactRespoSecteur,  String codeCellule,  String fullNameRespoCellule,  String contactRespoCellule,  String jourCellule,  String offrande,  String nombreBaptiser,  String nombreNonBaptiser,  List<Map<String, dynamic>> discipleCellule,  String id,  String formAdministrationIsSubmit,  String formAdministrationSubmitDate,  String tag)?  $default,) {final _that = this;
switch (_that) {
case _RequestRapportCelluleAdministration() when $default != null:
return $default(_that.codeZone,_that.fullNameRespoZone,_that.contactRespoZone,_that.codeSecteur,_that.responsableCelluleId,_that.fullNameRespoSecteur,_that.contactRespoSecteur,_that.codeCellule,_that.fullNameRespoCellule,_that.contactRespoCellule,_that.jourCellule,_that.offrande,_that.nombreBaptiser,_that.nombreNonBaptiser,_that.discipleCellule,_that.id,_that.formAdministrationIsSubmit,_that.formAdministrationSubmitDate,_that.tag);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestRapportCelluleAdministration implements RequestRapportCelluleAdministration {
   _RequestRapportCelluleAdministration({required this.codeZone, required this.fullNameRespoZone, required this.contactRespoZone, required this.codeSecteur, required this.responsableCelluleId, required this.fullNameRespoSecteur, required this.contactRespoSecteur, required this.codeCellule, required this.fullNameRespoCellule, required this.contactRespoCellule, required this.jourCellule, required this.offrande, required this.nombreBaptiser, required this.nombreNonBaptiser, required final  List<Map<String, dynamic>> discipleCellule, required this.id, this.formAdministrationIsSubmit = 'false', required this.formAdministrationSubmitDate, required this.tag}): _discipleCellule = discipleCellule;
  factory _RequestRapportCelluleAdministration.fromJson(Map<String, dynamic> json) => _$RequestRapportCelluleAdministrationFromJson(json);

@override final  String codeZone;
@override final  String fullNameRespoZone;
@override final  String contactRespoZone;
@override final  String codeSecteur;
@override final  String responsableCelluleId;
@override final  String fullNameRespoSecteur;
@override final  String contactRespoSecteur;
@override final  String codeCellule;
@override final  String fullNameRespoCellule;
@override final  String contactRespoCellule;
@override final  String jourCellule;
@override final  String offrande;
@override final  String nombreBaptiser;
@override final  String nombreNonBaptiser;
 final  List<Map<String, dynamic>> _discipleCellule;
@override List<Map<String, dynamic>> get discipleCellule {
  if (_discipleCellule is EqualUnmodifiableListView) return _discipleCellule;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_discipleCellule);
}

@override final  String id;
@override@JsonKey() final  String formAdministrationIsSubmit;
@override final  String formAdministrationSubmitDate;
@override final  String tag;

/// Create a copy of RequestRapportCelluleAdministration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestRapportCelluleAdministrationCopyWith<_RequestRapportCelluleAdministration> get copyWith => __$RequestRapportCelluleAdministrationCopyWithImpl<_RequestRapportCelluleAdministration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestRapportCelluleAdministrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestRapportCelluleAdministration&&(identical(other.codeZone, codeZone) || other.codeZone == codeZone)&&(identical(other.fullNameRespoZone, fullNameRespoZone) || other.fullNameRespoZone == fullNameRespoZone)&&(identical(other.contactRespoZone, contactRespoZone) || other.contactRespoZone == contactRespoZone)&&(identical(other.codeSecteur, codeSecteur) || other.codeSecteur == codeSecteur)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId)&&(identical(other.fullNameRespoSecteur, fullNameRespoSecteur) || other.fullNameRespoSecteur == fullNameRespoSecteur)&&(identical(other.contactRespoSecteur, contactRespoSecteur) || other.contactRespoSecteur == contactRespoSecteur)&&(identical(other.codeCellule, codeCellule) || other.codeCellule == codeCellule)&&(identical(other.fullNameRespoCellule, fullNameRespoCellule) || other.fullNameRespoCellule == fullNameRespoCellule)&&(identical(other.contactRespoCellule, contactRespoCellule) || other.contactRespoCellule == contactRespoCellule)&&(identical(other.jourCellule, jourCellule) || other.jourCellule == jourCellule)&&(identical(other.offrande, offrande) || other.offrande == offrande)&&(identical(other.nombreBaptiser, nombreBaptiser) || other.nombreBaptiser == nombreBaptiser)&&(identical(other.nombreNonBaptiser, nombreNonBaptiser) || other.nombreNonBaptiser == nombreNonBaptiser)&&const DeepCollectionEquality().equals(other._discipleCellule, _discipleCellule)&&(identical(other.id, id) || other.id == id)&&(identical(other.formAdministrationIsSubmit, formAdministrationIsSubmit) || other.formAdministrationIsSubmit == formAdministrationIsSubmit)&&(identical(other.formAdministrationSubmitDate, formAdministrationSubmitDate) || other.formAdministrationSubmitDate == formAdministrationSubmitDate)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,codeZone,fullNameRespoZone,contactRespoZone,codeSecteur,responsableCelluleId,fullNameRespoSecteur,contactRespoSecteur,codeCellule,fullNameRespoCellule,contactRespoCellule,jourCellule,offrande,nombreBaptiser,nombreNonBaptiser,const DeepCollectionEquality().hash(_discipleCellule),id,formAdministrationIsSubmit,formAdministrationSubmitDate,tag]);

@override
String toString() {
  return 'RequestRapportCelluleAdministration(codeZone: $codeZone, fullNameRespoZone: $fullNameRespoZone, contactRespoZone: $contactRespoZone, codeSecteur: $codeSecteur, responsableCelluleId: $responsableCelluleId, fullNameRespoSecteur: $fullNameRespoSecteur, contactRespoSecteur: $contactRespoSecteur, codeCellule: $codeCellule, fullNameRespoCellule: $fullNameRespoCellule, contactRespoCellule: $contactRespoCellule, jourCellule: $jourCellule, offrande: $offrande, nombreBaptiser: $nombreBaptiser, nombreNonBaptiser: $nombreNonBaptiser, discipleCellule: $discipleCellule, id: $id, formAdministrationIsSubmit: $formAdministrationIsSubmit, formAdministrationSubmitDate: $formAdministrationSubmitDate, tag: $tag)';
}


}

/// @nodoc
abstract mixin class _$RequestRapportCelluleAdministrationCopyWith<$Res> implements $RequestRapportCelluleAdministrationCopyWith<$Res> {
  factory _$RequestRapportCelluleAdministrationCopyWith(_RequestRapportCelluleAdministration value, $Res Function(_RequestRapportCelluleAdministration) _then) = __$RequestRapportCelluleAdministrationCopyWithImpl;
@override @useResult
$Res call({
 String codeZone, String fullNameRespoZone, String contactRespoZone, String codeSecteur, String responsableCelluleId, String fullNameRespoSecteur, String contactRespoSecteur, String codeCellule, String fullNameRespoCellule, String contactRespoCellule, String jourCellule, String offrande, String nombreBaptiser, String nombreNonBaptiser, List<Map<String, dynamic>> discipleCellule, String id, String formAdministrationIsSubmit, String formAdministrationSubmitDate, String tag
});




}
/// @nodoc
class __$RequestRapportCelluleAdministrationCopyWithImpl<$Res>
    implements _$RequestRapportCelluleAdministrationCopyWith<$Res> {
  __$RequestRapportCelluleAdministrationCopyWithImpl(this._self, this._then);

  final _RequestRapportCelluleAdministration _self;
  final $Res Function(_RequestRapportCelluleAdministration) _then;

/// Create a copy of RequestRapportCelluleAdministration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? codeZone = null,Object? fullNameRespoZone = null,Object? contactRespoZone = null,Object? codeSecteur = null,Object? responsableCelluleId = null,Object? fullNameRespoSecteur = null,Object? contactRespoSecteur = null,Object? codeCellule = null,Object? fullNameRespoCellule = null,Object? contactRespoCellule = null,Object? jourCellule = null,Object? offrande = null,Object? nombreBaptiser = null,Object? nombreNonBaptiser = null,Object? discipleCellule = null,Object? id = null,Object? formAdministrationIsSubmit = null,Object? formAdministrationSubmitDate = null,Object? tag = null,}) {
  return _then(_RequestRapportCelluleAdministration(
codeZone: null == codeZone ? _self.codeZone : codeZone // ignore: cast_nullable_to_non_nullable
as String,fullNameRespoZone: null == fullNameRespoZone ? _self.fullNameRespoZone : fullNameRespoZone // ignore: cast_nullable_to_non_nullable
as String,contactRespoZone: null == contactRespoZone ? _self.contactRespoZone : contactRespoZone // ignore: cast_nullable_to_non_nullable
as String,codeSecteur: null == codeSecteur ? _self.codeSecteur : codeSecteur // ignore: cast_nullable_to_non_nullable
as String,responsableCelluleId: null == responsableCelluleId ? _self.responsableCelluleId : responsableCelluleId // ignore: cast_nullable_to_non_nullable
as String,fullNameRespoSecteur: null == fullNameRespoSecteur ? _self.fullNameRespoSecteur : fullNameRespoSecteur // ignore: cast_nullable_to_non_nullable
as String,contactRespoSecteur: null == contactRespoSecteur ? _self.contactRespoSecteur : contactRespoSecteur // ignore: cast_nullable_to_non_nullable
as String,codeCellule: null == codeCellule ? _self.codeCellule : codeCellule // ignore: cast_nullable_to_non_nullable
as String,fullNameRespoCellule: null == fullNameRespoCellule ? _self.fullNameRespoCellule : fullNameRespoCellule // ignore: cast_nullable_to_non_nullable
as String,contactRespoCellule: null == contactRespoCellule ? _self.contactRespoCellule : contactRespoCellule // ignore: cast_nullable_to_non_nullable
as String,jourCellule: null == jourCellule ? _self.jourCellule : jourCellule // ignore: cast_nullable_to_non_nullable
as String,offrande: null == offrande ? _self.offrande : offrande // ignore: cast_nullable_to_non_nullable
as String,nombreBaptiser: null == nombreBaptiser ? _self.nombreBaptiser : nombreBaptiser // ignore: cast_nullable_to_non_nullable
as String,nombreNonBaptiser: null == nombreNonBaptiser ? _self.nombreNonBaptiser : nombreNonBaptiser // ignore: cast_nullable_to_non_nullable
as String,discipleCellule: null == discipleCellule ? _self._discipleCellule : discipleCellule // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,formAdministrationIsSubmit: null == formAdministrationIsSubmit ? _self.formAdministrationIsSubmit : formAdministrationIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formAdministrationSubmitDate: null == formAdministrationSubmitDate ? _self.formAdministrationSubmitDate : formAdministrationSubmitDate // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RequestAuthenProfileUpdateZone {

 String get noticationId;
/// Create a copy of RequestAuthenProfileUpdateZone
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuthenProfileUpdateZoneCopyWith<RequestAuthenProfileUpdateZone> get copyWith => _$RequestAuthenProfileUpdateZoneCopyWithImpl<RequestAuthenProfileUpdateZone>(this as RequestAuthenProfileUpdateZone, _$identity);

  /// Serializes this RequestAuthenProfileUpdateZone to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuthenProfileUpdateZone&&(identical(other.noticationId, noticationId) || other.noticationId == noticationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,noticationId);

@override
String toString() {
  return 'RequestAuthenProfileUpdateZone(noticationId: $noticationId)';
}


}

/// @nodoc
abstract mixin class $RequestAuthenProfileUpdateZoneCopyWith<$Res>  {
  factory $RequestAuthenProfileUpdateZoneCopyWith(RequestAuthenProfileUpdateZone value, $Res Function(RequestAuthenProfileUpdateZone) _then) = _$RequestAuthenProfileUpdateZoneCopyWithImpl;
@useResult
$Res call({
 String noticationId
});




}
/// @nodoc
class _$RequestAuthenProfileUpdateZoneCopyWithImpl<$Res>
    implements $RequestAuthenProfileUpdateZoneCopyWith<$Res> {
  _$RequestAuthenProfileUpdateZoneCopyWithImpl(this._self, this._then);

  final RequestAuthenProfileUpdateZone _self;
  final $Res Function(RequestAuthenProfileUpdateZone) _then;

/// Create a copy of RequestAuthenProfileUpdateZone
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? noticationId = null,}) {
  return _then(_self.copyWith(
noticationId: null == noticationId ? _self.noticationId : noticationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAuthenProfileUpdateZone].
extension RequestAuthenProfileUpdateZonePatterns on RequestAuthenProfileUpdateZone {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestAuthenProfileUpdateZone value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateZone() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestAuthenProfileUpdateZone value)  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateZone():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestAuthenProfileUpdateZone value)?  $default,){
final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateZone() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String noticationId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateZone() when $default != null:
return $default(_that.noticationId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String noticationId)  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateZone():
return $default(_that.noticationId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String noticationId)?  $default,) {final _that = this;
switch (_that) {
case _RequestAuthenProfileUpdateZone() when $default != null:
return $default(_that.noticationId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestAuthenProfileUpdateZone implements RequestAuthenProfileUpdateZone {
   _RequestAuthenProfileUpdateZone({required this.noticationId});
  factory _RequestAuthenProfileUpdateZone.fromJson(Map<String, dynamic> json) => _$RequestAuthenProfileUpdateZoneFromJson(json);

@override final  String noticationId;

/// Create a copy of RequestAuthenProfileUpdateZone
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestAuthenProfileUpdateZoneCopyWith<_RequestAuthenProfileUpdateZone> get copyWith => __$RequestAuthenProfileUpdateZoneCopyWithImpl<_RequestAuthenProfileUpdateZone>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestAuthenProfileUpdateZoneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestAuthenProfileUpdateZone&&(identical(other.noticationId, noticationId) || other.noticationId == noticationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,noticationId);

@override
String toString() {
  return 'RequestAuthenProfileUpdateZone(noticationId: $noticationId)';
}


}

/// @nodoc
abstract mixin class _$RequestAuthenProfileUpdateZoneCopyWith<$Res> implements $RequestAuthenProfileUpdateZoneCopyWith<$Res> {
  factory _$RequestAuthenProfileUpdateZoneCopyWith(_RequestAuthenProfileUpdateZone value, $Res Function(_RequestAuthenProfileUpdateZone) _then) = __$RequestAuthenProfileUpdateZoneCopyWithImpl;
@override @useResult
$Res call({
 String noticationId
});




}
/// @nodoc
class __$RequestAuthenProfileUpdateZoneCopyWithImpl<$Res>
    implements _$RequestAuthenProfileUpdateZoneCopyWith<$Res> {
  __$RequestAuthenProfileUpdateZoneCopyWithImpl(this._self, this._then);

  final _RequestAuthenProfileUpdateZone _self;
  final $Res Function(_RequestAuthenProfileUpdateZone) _then;

/// Create a copy of RequestAuthenProfileUpdateZone
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? noticationId = null,}) {
  return _then(_RequestAuthenProfileUpdateZone(
noticationId: null == noticationId ? _self.noticationId : noticationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RequestGeneriqueKey<T> {

 T get id;
/// Create a copy of RequestGeneriqueKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestGeneriqueKeyCopyWith<T, RequestGeneriqueKey<T>> get copyWith => _$RequestGeneriqueKeyCopyWithImpl<T, RequestGeneriqueKey<T>>(this as RequestGeneriqueKey<T>, _$identity);

  /// Serializes this RequestGeneriqueKey to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestGeneriqueKey<T>&&const DeepCollectionEquality().equals(other.id, id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(id));

@override
String toString() {
  return 'RequestGeneriqueKey<$T>(id: $id)';
}


}

/// @nodoc
abstract mixin class $RequestGeneriqueKeyCopyWith<T,$Res>  {
  factory $RequestGeneriqueKeyCopyWith(RequestGeneriqueKey<T> value, $Res Function(RequestGeneriqueKey<T>) _then) = _$RequestGeneriqueKeyCopyWithImpl;
@useResult
$Res call({
 T id
});




}
/// @nodoc
class _$RequestGeneriqueKeyCopyWithImpl<T,$Res>
    implements $RequestGeneriqueKeyCopyWith<T, $Res> {
  _$RequestGeneriqueKeyCopyWithImpl(this._self, this._then);

  final RequestGeneriqueKey<T> _self;
  final $Res Function(RequestGeneriqueKey<T>) _then;

/// Create a copy of RequestGeneriqueKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestGeneriqueKey].
extension RequestGeneriqueKeyPatterns<T> on RequestGeneriqueKey<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestGeneriqueKey<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestGeneriqueKey() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestGeneriqueKey<T> value)  $default,){
final _that = this;
switch (_that) {
case _RequestGeneriqueKey():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestGeneriqueKey<T> value)?  $default,){
final _that = this;
switch (_that) {
case _RequestGeneriqueKey() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( T id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestGeneriqueKey() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( T id)  $default,) {final _that = this;
switch (_that) {
case _RequestGeneriqueKey():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( T id)?  $default,) {final _that = this;
switch (_that) {
case _RequestGeneriqueKey() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _RequestGeneriqueKey<T> implements RequestGeneriqueKey<T> {
  const _RequestGeneriqueKey({required this.id});
  factory _RequestGeneriqueKey.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$RequestGeneriqueKeyFromJson(json,fromJsonT);

@override final  T id;

/// Create a copy of RequestGeneriqueKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestGeneriqueKeyCopyWith<T, _RequestGeneriqueKey<T>> get copyWith => __$RequestGeneriqueKeyCopyWithImpl<T, _RequestGeneriqueKey<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$RequestGeneriqueKeyToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestGeneriqueKey<T>&&const DeepCollectionEquality().equals(other.id, id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(id));

@override
String toString() {
  return 'RequestGeneriqueKey<$T>(id: $id)';
}


}

/// @nodoc
abstract mixin class _$RequestGeneriqueKeyCopyWith<T,$Res> implements $RequestGeneriqueKeyCopyWith<T, $Res> {
  factory _$RequestGeneriqueKeyCopyWith(_RequestGeneriqueKey<T> value, $Res Function(_RequestGeneriqueKey<T>) _then) = __$RequestGeneriqueKeyCopyWithImpl;
@override @useResult
$Res call({
 T id
});




}
/// @nodoc
class __$RequestGeneriqueKeyCopyWithImpl<T,$Res>
    implements _$RequestGeneriqueKeyCopyWith<T, $Res> {
  __$RequestGeneriqueKeyCopyWithImpl(this._self, this._then);

  final _RequestGeneriqueKey<T> _self;
  final $Res Function(_RequestGeneriqueKey<T>) _then;

/// Create a copy of RequestGeneriqueKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_RequestGeneriqueKey<T>(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}


/// @nodoc
mixin _$RequestImpliciteConnexion {

 String get deviceId;
/// Create a copy of RequestImpliciteConnexion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestImpliciteConnexionCopyWith<RequestImpliciteConnexion> get copyWith => _$RequestImpliciteConnexionCopyWithImpl<RequestImpliciteConnexion>(this as RequestImpliciteConnexion, _$identity);

  /// Serializes this RequestImpliciteConnexion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestImpliciteConnexion&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId);

@override
String toString() {
  return 'RequestImpliciteConnexion(deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class $RequestImpliciteConnexionCopyWith<$Res>  {
  factory $RequestImpliciteConnexionCopyWith(RequestImpliciteConnexion value, $Res Function(RequestImpliciteConnexion) _then) = _$RequestImpliciteConnexionCopyWithImpl;
@useResult
$Res call({
 String deviceId
});




}
/// @nodoc
class _$RequestImpliciteConnexionCopyWithImpl<$Res>
    implements $RequestImpliciteConnexionCopyWith<$Res> {
  _$RequestImpliciteConnexionCopyWithImpl(this._self, this._then);

  final RequestImpliciteConnexion _self;
  final $Res Function(RequestImpliciteConnexion) _then;

/// Create a copy of RequestImpliciteConnexion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = null,}) {
  return _then(_self.copyWith(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestImpliciteConnexion].
extension RequestImpliciteConnexionPatterns on RequestImpliciteConnexion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestImpliciteConnexion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestImpliciteConnexion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestImpliciteConnexion value)  $default,){
final _that = this;
switch (_that) {
case _RequestImpliciteConnexion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestImpliciteConnexion value)?  $default,){
final _that = this;
switch (_that) {
case _RequestImpliciteConnexion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String deviceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestImpliciteConnexion() when $default != null:
return $default(_that.deviceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String deviceId)  $default,) {final _that = this;
switch (_that) {
case _RequestImpliciteConnexion():
return $default(_that.deviceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String deviceId)?  $default,) {final _that = this;
switch (_that) {
case _RequestImpliciteConnexion() when $default != null:
return $default(_that.deviceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestImpliciteConnexion implements RequestImpliciteConnexion {
   _RequestImpliciteConnexion({required this.deviceId});
  factory _RequestImpliciteConnexion.fromJson(Map<String, dynamic> json) => _$RequestImpliciteConnexionFromJson(json);

@override final  String deviceId;

/// Create a copy of RequestImpliciteConnexion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestImpliciteConnexionCopyWith<_RequestImpliciteConnexion> get copyWith => __$RequestImpliciteConnexionCopyWithImpl<_RequestImpliciteConnexion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestImpliciteConnexionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestImpliciteConnexion&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId);

@override
String toString() {
  return 'RequestImpliciteConnexion(deviceId: $deviceId)';
}


}

/// @nodoc
abstract mixin class _$RequestImpliciteConnexionCopyWith<$Res> implements $RequestImpliciteConnexionCopyWith<$Res> {
  factory _$RequestImpliciteConnexionCopyWith(_RequestImpliciteConnexion value, $Res Function(_RequestImpliciteConnexion) _then) = __$RequestImpliciteConnexionCopyWithImpl;
@override @useResult
$Res call({
 String deviceId
});




}
/// @nodoc
class __$RequestImpliciteConnexionCopyWithImpl<$Res>
    implements _$RequestImpliciteConnexionCopyWith<$Res> {
  __$RequestImpliciteConnexionCopyWithImpl(this._self, this._then);

  final _RequestImpliciteConnexion _self;
  final $Res Function(_RequestImpliciteConnexion) _then;

/// Create a copy of RequestImpliciteConnexion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = null,}) {
  return _then(_RequestImpliciteConnexion(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RequestItemSection {

 String get name; int get count;
/// Create a copy of RequestItemSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestItemSectionCopyWith<RequestItemSection> get copyWith => _$RequestItemSectionCopyWithImpl<RequestItemSection>(this as RequestItemSection, _$identity);

  /// Serializes this RequestItemSection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestItemSection&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,count);

@override
String toString() {
  return 'RequestItemSection(name: $name, count: $count)';
}


}

/// @nodoc
abstract mixin class $RequestItemSectionCopyWith<$Res>  {
  factory $RequestItemSectionCopyWith(RequestItemSection value, $Res Function(RequestItemSection) _then) = _$RequestItemSectionCopyWithImpl;
@useResult
$Res call({
 String name, int count
});




}
/// @nodoc
class _$RequestItemSectionCopyWithImpl<$Res>
    implements $RequestItemSectionCopyWith<$Res> {
  _$RequestItemSectionCopyWithImpl(this._self, this._then);

  final RequestItemSection _self;
  final $Res Function(RequestItemSection) _then;

/// Create a copy of RequestItemSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? count = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestItemSection].
extension RequestItemSectionPatterns on RequestItemSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestItemSection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestItemSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestItemSection value)  $default,){
final _that = this;
switch (_that) {
case _RequestItemSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestItemSection value)?  $default,){
final _that = this;
switch (_that) {
case _RequestItemSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestItemSection() when $default != null:
return $default(_that.name,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int count)  $default,) {final _that = this;
switch (_that) {
case _RequestItemSection():
return $default(_that.name,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int count)?  $default,) {final _that = this;
switch (_that) {
case _RequestItemSection() when $default != null:
return $default(_that.name,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestItemSection implements RequestItemSection {
   _RequestItemSection({required this.name, this.count = 0});
  factory _RequestItemSection.fromJson(Map<String, dynamic> json) => _$RequestItemSectionFromJson(json);

@override final  String name;
@override@JsonKey() final  int count;

/// Create a copy of RequestItemSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestItemSectionCopyWith<_RequestItemSection> get copyWith => __$RequestItemSectionCopyWithImpl<_RequestItemSection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestItemSectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestItemSection&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,count);

@override
String toString() {
  return 'RequestItemSection(name: $name, count: $count)';
}


}

/// @nodoc
abstract mixin class _$RequestItemSectionCopyWith<$Res> implements $RequestItemSectionCopyWith<$Res> {
  factory _$RequestItemSectionCopyWith(_RequestItemSection value, $Res Function(_RequestItemSection) _then) = __$RequestItemSectionCopyWithImpl;
@override @useResult
$Res call({
 String name, int count
});




}
/// @nodoc
class __$RequestItemSectionCopyWithImpl<$Res>
    implements _$RequestItemSectionCopyWith<$Res> {
  __$RequestItemSectionCopyWithImpl(this._self, this._then);

  final _RequestItemSection _self;
  final $Res Function(_RequestItemSection) _then;

/// Create a copy of RequestItemSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? count = null,}) {
  return _then(_RequestItemSection(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RequestSection {

 String get title; List<RequestItemSection> get items;
/// Create a copy of RequestSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestSectionCopyWith<RequestSection> get copyWith => _$RequestSectionCopyWithImpl<RequestSection>(this as RequestSection, _$identity);

  /// Serializes this RequestSection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestSection&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'RequestSection(title: $title, items: $items)';
}


}

/// @nodoc
abstract mixin class $RequestSectionCopyWith<$Res>  {
  factory $RequestSectionCopyWith(RequestSection value, $Res Function(RequestSection) _then) = _$RequestSectionCopyWithImpl;
@useResult
$Res call({
 String title, List<RequestItemSection> items
});




}
/// @nodoc
class _$RequestSectionCopyWithImpl<$Res>
    implements $RequestSectionCopyWith<$Res> {
  _$RequestSectionCopyWithImpl(this._self, this._then);

  final RequestSection _self;
  final $Res Function(RequestSection) _then;

/// Create a copy of RequestSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? items = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<RequestItemSection>,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestSection].
extension RequestSectionPatterns on RequestSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestSection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestSection value)  $default,){
final _that = this;
switch (_that) {
case _RequestSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestSection value)?  $default,){
final _that = this;
switch (_that) {
case _RequestSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  List<RequestItemSection> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestSection() when $default != null:
return $default(_that.title,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  List<RequestItemSection> items)  $default,) {final _that = this;
switch (_that) {
case _RequestSection():
return $default(_that.title,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  List<RequestItemSection> items)?  $default,) {final _that = this;
switch (_that) {
case _RequestSection() when $default != null:
return $default(_that.title,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestSection implements RequestSection {
   _RequestSection({required this.title, final  List<RequestItemSection> items = const []}): _items = items;
  factory _RequestSection.fromJson(Map<String, dynamic> json) => _$RequestSectionFromJson(json);

@override final  String title;
 final  List<RequestItemSection> _items;
@override@JsonKey() List<RequestItemSection> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of RequestSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestSectionCopyWith<_RequestSection> get copyWith => __$RequestSectionCopyWithImpl<_RequestSection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestSectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestSection&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'RequestSection(title: $title, items: $items)';
}


}

/// @nodoc
abstract mixin class _$RequestSectionCopyWith<$Res> implements $RequestSectionCopyWith<$Res> {
  factory _$RequestSectionCopyWith(_RequestSection value, $Res Function(_RequestSection) _then) = __$RequestSectionCopyWithImpl;
@override @useResult
$Res call({
 String title, List<RequestItemSection> items
});




}
/// @nodoc
class __$RequestSectionCopyWithImpl<$Res>
    implements _$RequestSectionCopyWith<$Res> {
  __$RequestSectionCopyWithImpl(this._self, this._then);

  final _RequestSection _self;
  final $Res Function(_RequestSection) _then;

/// Create a copy of RequestSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? items = null,}) {
  return _then(_RequestSection(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<RequestItemSection>,
  ));
}


}


/// @nodoc
mixin _$RequestHumaneSectionAssistance {

 String get libelle; String get toutPetit; String get juniors; String get cadets; int get total;
/// Create a copy of RequestHumaneSectionAssistance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestHumaneSectionAssistanceCopyWith<RequestHumaneSectionAssistance> get copyWith => _$RequestHumaneSectionAssistanceCopyWithImpl<RequestHumaneSectionAssistance>(this as RequestHumaneSectionAssistance, _$identity);

  /// Serializes this RequestHumaneSectionAssistance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestHumaneSectionAssistance&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.toutPetit, toutPetit) || other.toutPetit == toutPetit)&&(identical(other.juniors, juniors) || other.juniors == juniors)&&(identical(other.cadets, cadets) || other.cadets == cadets)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,libelle,toutPetit,juniors,cadets,total);

@override
String toString() {
  return 'RequestHumaneSectionAssistance(libelle: $libelle, toutPetit: $toutPetit, juniors: $juniors, cadets: $cadets, total: $total)';
}


}

/// @nodoc
abstract mixin class $RequestHumaneSectionAssistanceCopyWith<$Res>  {
  factory $RequestHumaneSectionAssistanceCopyWith(RequestHumaneSectionAssistance value, $Res Function(RequestHumaneSectionAssistance) _then) = _$RequestHumaneSectionAssistanceCopyWithImpl;
@useResult
$Res call({
 String libelle, String toutPetit, String juniors, String cadets, int total
});




}
/// @nodoc
class _$RequestHumaneSectionAssistanceCopyWithImpl<$Res>
    implements $RequestHumaneSectionAssistanceCopyWith<$Res> {
  _$RequestHumaneSectionAssistanceCopyWithImpl(this._self, this._then);

  final RequestHumaneSectionAssistance _self;
  final $Res Function(RequestHumaneSectionAssistance) _then;

/// Create a copy of RequestHumaneSectionAssistance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? libelle = null,Object? toutPetit = null,Object? juniors = null,Object? cadets = null,Object? total = null,}) {
  return _then(_self.copyWith(
libelle: null == libelle ? _self.libelle : libelle // ignore: cast_nullable_to_non_nullable
as String,toutPetit: null == toutPetit ? _self.toutPetit : toutPetit // ignore: cast_nullable_to_non_nullable
as String,juniors: null == juniors ? _self.juniors : juniors // ignore: cast_nullable_to_non_nullable
as String,cadets: null == cadets ? _self.cadets : cadets // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestHumaneSectionAssistance].
extension RequestHumaneSectionAssistancePatterns on RequestHumaneSectionAssistance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestHumaneSectionAssistance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestHumaneSectionAssistance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestHumaneSectionAssistance value)  $default,){
final _that = this;
switch (_that) {
case _RequestHumaneSectionAssistance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestHumaneSectionAssistance value)?  $default,){
final _that = this;
switch (_that) {
case _RequestHumaneSectionAssistance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String libelle,  String toutPetit,  String juniors,  String cadets,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestHumaneSectionAssistance() when $default != null:
return $default(_that.libelle,_that.toutPetit,_that.juniors,_that.cadets,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String libelle,  String toutPetit,  String juniors,  String cadets,  int total)  $default,) {final _that = this;
switch (_that) {
case _RequestHumaneSectionAssistance():
return $default(_that.libelle,_that.toutPetit,_that.juniors,_that.cadets,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String libelle,  String toutPetit,  String juniors,  String cadets,  int total)?  $default,) {final _that = this;
switch (_that) {
case _RequestHumaneSectionAssistance() when $default != null:
return $default(_that.libelle,_that.toutPetit,_that.juniors,_that.cadets,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestHumaneSectionAssistance implements RequestHumaneSectionAssistance {
   _RequestHumaneSectionAssistance({this.libelle = "", this.toutPetit = "", this.juniors = "", this.cadets = "", this.total = 0});
  factory _RequestHumaneSectionAssistance.fromJson(Map<String, dynamic> json) => _$RequestHumaneSectionAssistanceFromJson(json);

@override@JsonKey() final  String libelle;
@override@JsonKey() final  String toutPetit;
@override@JsonKey() final  String juniors;
@override@JsonKey() final  String cadets;
@override@JsonKey() final  int total;

/// Create a copy of RequestHumaneSectionAssistance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestHumaneSectionAssistanceCopyWith<_RequestHumaneSectionAssistance> get copyWith => __$RequestHumaneSectionAssistanceCopyWithImpl<_RequestHumaneSectionAssistance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestHumaneSectionAssistanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestHumaneSectionAssistance&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.toutPetit, toutPetit) || other.toutPetit == toutPetit)&&(identical(other.juniors, juniors) || other.juniors == juniors)&&(identical(other.cadets, cadets) || other.cadets == cadets)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,libelle,toutPetit,juniors,cadets,total);

@override
String toString() {
  return 'RequestHumaneSectionAssistance(libelle: $libelle, toutPetit: $toutPetit, juniors: $juniors, cadets: $cadets, total: $total)';
}


}

/// @nodoc
abstract mixin class _$RequestHumaneSectionAssistanceCopyWith<$Res> implements $RequestHumaneSectionAssistanceCopyWith<$Res> {
  factory _$RequestHumaneSectionAssistanceCopyWith(_RequestHumaneSectionAssistance value, $Res Function(_RequestHumaneSectionAssistance) _then) = __$RequestHumaneSectionAssistanceCopyWithImpl;
@override @useResult
$Res call({
 String libelle, String toutPetit, String juniors, String cadets, int total
});




}
/// @nodoc
class __$RequestHumaneSectionAssistanceCopyWithImpl<$Res>
    implements _$RequestHumaneSectionAssistanceCopyWith<$Res> {
  __$RequestHumaneSectionAssistanceCopyWithImpl(this._self, this._then);

  final _RequestHumaneSectionAssistance _self;
  final $Res Function(_RequestHumaneSectionAssistance) _then;

/// Create a copy of RequestHumaneSectionAssistance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? libelle = null,Object? toutPetit = null,Object? juniors = null,Object? cadets = null,Object? total = null,}) {
  return _then(_RequestHumaneSectionAssistance(
libelle: null == libelle ? _self.libelle : libelle // ignore: cast_nullable_to_non_nullable
as String,toutPetit: null == toutPetit ? _self.toutPetit : toutPetit // ignore: cast_nullable_to_non_nullable
as String,juniors: null == juniors ? _self.juniors : juniors // ignore: cast_nullable_to_non_nullable
as String,cadets: null == cadets ? _self.cadets : cadets // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RequestAuherInformation {

 String get libelle; String get formationNewDFB; String get formationNewBaptDFD; String get visiteMenbre; String get visiteDisciple; String get nbTravailleurs; String get nbEleveAndEtudiants; String get nbOuvrierEM; String get nbOuvrierAutreDepatementDirigeantEM; String get nbFormationNiveau2; String get ngAgendaEM; String get nbDecisionnaires; String get id; int get count;
/// Create a copy of RequestAuherInformation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuherInformationCopyWith<RequestAuherInformation> get copyWith => _$RequestAuherInformationCopyWithImpl<RequestAuherInformation>(this as RequestAuherInformation, _$identity);

  /// Serializes this RequestAuherInformation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuherInformation&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.formationNewDFB, formationNewDFB) || other.formationNewDFB == formationNewDFB)&&(identical(other.formationNewBaptDFD, formationNewBaptDFD) || other.formationNewBaptDFD == formationNewBaptDFD)&&(identical(other.visiteMenbre, visiteMenbre) || other.visiteMenbre == visiteMenbre)&&(identical(other.visiteDisciple, visiteDisciple) || other.visiteDisciple == visiteDisciple)&&(identical(other.nbTravailleurs, nbTravailleurs) || other.nbTravailleurs == nbTravailleurs)&&(identical(other.nbEleveAndEtudiants, nbEleveAndEtudiants) || other.nbEleveAndEtudiants == nbEleveAndEtudiants)&&(identical(other.nbOuvrierEM, nbOuvrierEM) || other.nbOuvrierEM == nbOuvrierEM)&&(identical(other.nbOuvrierAutreDepatementDirigeantEM, nbOuvrierAutreDepatementDirigeantEM) || other.nbOuvrierAutreDepatementDirigeantEM == nbOuvrierAutreDepatementDirigeantEM)&&(identical(other.nbFormationNiveau2, nbFormationNiveau2) || other.nbFormationNiveau2 == nbFormationNiveau2)&&(identical(other.ngAgendaEM, ngAgendaEM) || other.ngAgendaEM == ngAgendaEM)&&(identical(other.nbDecisionnaires, nbDecisionnaires) || other.nbDecisionnaires == nbDecisionnaires)&&(identical(other.id, id) || other.id == id)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,libelle,formationNewDFB,formationNewBaptDFD,visiteMenbre,visiteDisciple,nbTravailleurs,nbEleveAndEtudiants,nbOuvrierEM,nbOuvrierAutreDepatementDirigeantEM,nbFormationNiveau2,ngAgendaEM,nbDecisionnaires,id,count);

@override
String toString() {
  return 'RequestAuherInformation(libelle: $libelle, formationNewDFB: $formationNewDFB, formationNewBaptDFD: $formationNewBaptDFD, visiteMenbre: $visiteMenbre, visiteDisciple: $visiteDisciple, nbTravailleurs: $nbTravailleurs, nbEleveAndEtudiants: $nbEleveAndEtudiants, nbOuvrierEM: $nbOuvrierEM, nbOuvrierAutreDepatementDirigeantEM: $nbOuvrierAutreDepatementDirigeantEM, nbFormationNiveau2: $nbFormationNiveau2, ngAgendaEM: $ngAgendaEM, nbDecisionnaires: $nbDecisionnaires, id: $id, count: $count)';
}


}

/// @nodoc
abstract mixin class $RequestAuherInformationCopyWith<$Res>  {
  factory $RequestAuherInformationCopyWith(RequestAuherInformation value, $Res Function(RequestAuherInformation) _then) = _$RequestAuherInformationCopyWithImpl;
@useResult
$Res call({
 String libelle, String formationNewDFB, String formationNewBaptDFD, String visiteMenbre, String visiteDisciple, String nbTravailleurs, String nbEleveAndEtudiants, String nbOuvrierEM, String nbOuvrierAutreDepatementDirigeantEM, String nbFormationNiveau2, String ngAgendaEM, String nbDecisionnaires, String id, int count
});




}
/// @nodoc
class _$RequestAuherInformationCopyWithImpl<$Res>
    implements $RequestAuherInformationCopyWith<$Res> {
  _$RequestAuherInformationCopyWithImpl(this._self, this._then);

  final RequestAuherInformation _self;
  final $Res Function(RequestAuherInformation) _then;

/// Create a copy of RequestAuherInformation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? libelle = null,Object? formationNewDFB = null,Object? formationNewBaptDFD = null,Object? visiteMenbre = null,Object? visiteDisciple = null,Object? nbTravailleurs = null,Object? nbEleveAndEtudiants = null,Object? nbOuvrierEM = null,Object? nbOuvrierAutreDepatementDirigeantEM = null,Object? nbFormationNiveau2 = null,Object? ngAgendaEM = null,Object? nbDecisionnaires = null,Object? id = null,Object? count = null,}) {
  return _then(_self.copyWith(
libelle: null == libelle ? _self.libelle : libelle // ignore: cast_nullable_to_non_nullable
as String,formationNewDFB: null == formationNewDFB ? _self.formationNewDFB : formationNewDFB // ignore: cast_nullable_to_non_nullable
as String,formationNewBaptDFD: null == formationNewBaptDFD ? _self.formationNewBaptDFD : formationNewBaptDFD // ignore: cast_nullable_to_non_nullable
as String,visiteMenbre: null == visiteMenbre ? _self.visiteMenbre : visiteMenbre // ignore: cast_nullable_to_non_nullable
as String,visiteDisciple: null == visiteDisciple ? _self.visiteDisciple : visiteDisciple // ignore: cast_nullable_to_non_nullable
as String,nbTravailleurs: null == nbTravailleurs ? _self.nbTravailleurs : nbTravailleurs // ignore: cast_nullable_to_non_nullable
as String,nbEleveAndEtudiants: null == nbEleveAndEtudiants ? _self.nbEleveAndEtudiants : nbEleveAndEtudiants // ignore: cast_nullable_to_non_nullable
as String,nbOuvrierEM: null == nbOuvrierEM ? _self.nbOuvrierEM : nbOuvrierEM // ignore: cast_nullable_to_non_nullable
as String,nbOuvrierAutreDepatementDirigeantEM: null == nbOuvrierAutreDepatementDirigeantEM ? _self.nbOuvrierAutreDepatementDirigeantEM : nbOuvrierAutreDepatementDirigeantEM // ignore: cast_nullable_to_non_nullable
as String,nbFormationNiveau2: null == nbFormationNiveau2 ? _self.nbFormationNiveau2 : nbFormationNiveau2 // ignore: cast_nullable_to_non_nullable
as String,ngAgendaEM: null == ngAgendaEM ? _self.ngAgendaEM : ngAgendaEM // ignore: cast_nullable_to_non_nullable
as String,nbDecisionnaires: null == nbDecisionnaires ? _self.nbDecisionnaires : nbDecisionnaires // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAuherInformation].
extension RequestAuherInformationPatterns on RequestAuherInformation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestAuherInformation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestAuherInformation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestAuherInformation value)  $default,){
final _that = this;
switch (_that) {
case _RequestAuherInformation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestAuherInformation value)?  $default,){
final _that = this;
switch (_that) {
case _RequestAuherInformation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String libelle,  String formationNewDFB,  String formationNewBaptDFD,  String visiteMenbre,  String visiteDisciple,  String nbTravailleurs,  String nbEleveAndEtudiants,  String nbOuvrierEM,  String nbOuvrierAutreDepatementDirigeantEM,  String nbFormationNiveau2,  String ngAgendaEM,  String nbDecisionnaires,  String id,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestAuherInformation() when $default != null:
return $default(_that.libelle,_that.formationNewDFB,_that.formationNewBaptDFD,_that.visiteMenbre,_that.visiteDisciple,_that.nbTravailleurs,_that.nbEleveAndEtudiants,_that.nbOuvrierEM,_that.nbOuvrierAutreDepatementDirigeantEM,_that.nbFormationNiveau2,_that.ngAgendaEM,_that.nbDecisionnaires,_that.id,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String libelle,  String formationNewDFB,  String formationNewBaptDFD,  String visiteMenbre,  String visiteDisciple,  String nbTravailleurs,  String nbEleveAndEtudiants,  String nbOuvrierEM,  String nbOuvrierAutreDepatementDirigeantEM,  String nbFormationNiveau2,  String ngAgendaEM,  String nbDecisionnaires,  String id,  int count)  $default,) {final _that = this;
switch (_that) {
case _RequestAuherInformation():
return $default(_that.libelle,_that.formationNewDFB,_that.formationNewBaptDFD,_that.visiteMenbre,_that.visiteDisciple,_that.nbTravailleurs,_that.nbEleveAndEtudiants,_that.nbOuvrierEM,_that.nbOuvrierAutreDepatementDirigeantEM,_that.nbFormationNiveau2,_that.ngAgendaEM,_that.nbDecisionnaires,_that.id,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String libelle,  String formationNewDFB,  String formationNewBaptDFD,  String visiteMenbre,  String visiteDisciple,  String nbTravailleurs,  String nbEleveAndEtudiants,  String nbOuvrierEM,  String nbOuvrierAutreDepatementDirigeantEM,  String nbFormationNiveau2,  String ngAgendaEM,  String nbDecisionnaires,  String id,  int count)?  $default,) {final _that = this;
switch (_that) {
case _RequestAuherInformation() when $default != null:
return $default(_that.libelle,_that.formationNewDFB,_that.formationNewBaptDFD,_that.visiteMenbre,_that.visiteDisciple,_that.nbTravailleurs,_that.nbEleveAndEtudiants,_that.nbOuvrierEM,_that.nbOuvrierAutreDepatementDirigeantEM,_that.nbFormationNiveau2,_that.ngAgendaEM,_that.nbDecisionnaires,_that.id,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestAuherInformation implements RequestAuherInformation {
   _RequestAuherInformation({this.libelle = "", this.formationNewDFB = "", this.formationNewBaptDFD = "", this.visiteMenbre = "", this.visiteDisciple = "", this.nbTravailleurs = "", this.nbEleveAndEtudiants = "", this.nbOuvrierEM = "", this.nbOuvrierAutreDepatementDirigeantEM = "", this.nbFormationNiveau2 = "", this.ngAgendaEM = "", this.nbDecisionnaires = "", this.id = "", this.count = 0});
  factory _RequestAuherInformation.fromJson(Map<String, dynamic> json) => _$RequestAuherInformationFromJson(json);

@override@JsonKey() final  String libelle;
@override@JsonKey() final  String formationNewDFB;
@override@JsonKey() final  String formationNewBaptDFD;
@override@JsonKey() final  String visiteMenbre;
@override@JsonKey() final  String visiteDisciple;
@override@JsonKey() final  String nbTravailleurs;
@override@JsonKey() final  String nbEleveAndEtudiants;
@override@JsonKey() final  String nbOuvrierEM;
@override@JsonKey() final  String nbOuvrierAutreDepatementDirigeantEM;
@override@JsonKey() final  String nbFormationNiveau2;
@override@JsonKey() final  String ngAgendaEM;
@override@JsonKey() final  String nbDecisionnaires;
@override@JsonKey() final  String id;
@override@JsonKey() final  int count;

/// Create a copy of RequestAuherInformation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestAuherInformationCopyWith<_RequestAuherInformation> get copyWith => __$RequestAuherInformationCopyWithImpl<_RequestAuherInformation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestAuherInformationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestAuherInformation&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.formationNewDFB, formationNewDFB) || other.formationNewDFB == formationNewDFB)&&(identical(other.formationNewBaptDFD, formationNewBaptDFD) || other.formationNewBaptDFD == formationNewBaptDFD)&&(identical(other.visiteMenbre, visiteMenbre) || other.visiteMenbre == visiteMenbre)&&(identical(other.visiteDisciple, visiteDisciple) || other.visiteDisciple == visiteDisciple)&&(identical(other.nbTravailleurs, nbTravailleurs) || other.nbTravailleurs == nbTravailleurs)&&(identical(other.nbEleveAndEtudiants, nbEleveAndEtudiants) || other.nbEleveAndEtudiants == nbEleveAndEtudiants)&&(identical(other.nbOuvrierEM, nbOuvrierEM) || other.nbOuvrierEM == nbOuvrierEM)&&(identical(other.nbOuvrierAutreDepatementDirigeantEM, nbOuvrierAutreDepatementDirigeantEM) || other.nbOuvrierAutreDepatementDirigeantEM == nbOuvrierAutreDepatementDirigeantEM)&&(identical(other.nbFormationNiveau2, nbFormationNiveau2) || other.nbFormationNiveau2 == nbFormationNiveau2)&&(identical(other.ngAgendaEM, ngAgendaEM) || other.ngAgendaEM == ngAgendaEM)&&(identical(other.nbDecisionnaires, nbDecisionnaires) || other.nbDecisionnaires == nbDecisionnaires)&&(identical(other.id, id) || other.id == id)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,libelle,formationNewDFB,formationNewBaptDFD,visiteMenbre,visiteDisciple,nbTravailleurs,nbEleveAndEtudiants,nbOuvrierEM,nbOuvrierAutreDepatementDirigeantEM,nbFormationNiveau2,ngAgendaEM,nbDecisionnaires,id,count);

@override
String toString() {
  return 'RequestAuherInformation(libelle: $libelle, formationNewDFB: $formationNewDFB, formationNewBaptDFD: $formationNewBaptDFD, visiteMenbre: $visiteMenbre, visiteDisciple: $visiteDisciple, nbTravailleurs: $nbTravailleurs, nbEleveAndEtudiants: $nbEleveAndEtudiants, nbOuvrierEM: $nbOuvrierEM, nbOuvrierAutreDepatementDirigeantEM: $nbOuvrierAutreDepatementDirigeantEM, nbFormationNiveau2: $nbFormationNiveau2, ngAgendaEM: $ngAgendaEM, nbDecisionnaires: $nbDecisionnaires, id: $id, count: $count)';
}


}

/// @nodoc
abstract mixin class _$RequestAuherInformationCopyWith<$Res> implements $RequestAuherInformationCopyWith<$Res> {
  factory _$RequestAuherInformationCopyWith(_RequestAuherInformation value, $Res Function(_RequestAuherInformation) _then) = __$RequestAuherInformationCopyWithImpl;
@override @useResult
$Res call({
 String libelle, String formationNewDFB, String formationNewBaptDFD, String visiteMenbre, String visiteDisciple, String nbTravailleurs, String nbEleveAndEtudiants, String nbOuvrierEM, String nbOuvrierAutreDepatementDirigeantEM, String nbFormationNiveau2, String ngAgendaEM, String nbDecisionnaires, String id, int count
});




}
/// @nodoc
class __$RequestAuherInformationCopyWithImpl<$Res>
    implements _$RequestAuherInformationCopyWith<$Res> {
  __$RequestAuherInformationCopyWithImpl(this._self, this._then);

  final _RequestAuherInformation _self;
  final $Res Function(_RequestAuherInformation) _then;

/// Create a copy of RequestAuherInformation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? libelle = null,Object? formationNewDFB = null,Object? formationNewBaptDFD = null,Object? visiteMenbre = null,Object? visiteDisciple = null,Object? nbTravailleurs = null,Object? nbEleveAndEtudiants = null,Object? nbOuvrierEM = null,Object? nbOuvrierAutreDepatementDirigeantEM = null,Object? nbFormationNiveau2 = null,Object? ngAgendaEM = null,Object? nbDecisionnaires = null,Object? id = null,Object? count = null,}) {
  return _then(_RequestAuherInformation(
libelle: null == libelle ? _self.libelle : libelle // ignore: cast_nullable_to_non_nullable
as String,formationNewDFB: null == formationNewDFB ? _self.formationNewDFB : formationNewDFB // ignore: cast_nullable_to_non_nullable
as String,formationNewBaptDFD: null == formationNewBaptDFD ? _self.formationNewBaptDFD : formationNewBaptDFD // ignore: cast_nullable_to_non_nullable
as String,visiteMenbre: null == visiteMenbre ? _self.visiteMenbre : visiteMenbre // ignore: cast_nullable_to_non_nullable
as String,visiteDisciple: null == visiteDisciple ? _self.visiteDisciple : visiteDisciple // ignore: cast_nullable_to_non_nullable
as String,nbTravailleurs: null == nbTravailleurs ? _self.nbTravailleurs : nbTravailleurs // ignore: cast_nullable_to_non_nullable
as String,nbEleveAndEtudiants: null == nbEleveAndEtudiants ? _self.nbEleveAndEtudiants : nbEleveAndEtudiants // ignore: cast_nullable_to_non_nullable
as String,nbOuvrierEM: null == nbOuvrierEM ? _self.nbOuvrierEM : nbOuvrierEM // ignore: cast_nullable_to_non_nullable
as String,nbOuvrierAutreDepatementDirigeantEM: null == nbOuvrierAutreDepatementDirigeantEM ? _self.nbOuvrierAutreDepatementDirigeantEM : nbOuvrierAutreDepatementDirigeantEM // ignore: cast_nullable_to_non_nullable
as String,nbFormationNiveau2: null == nbFormationNiveau2 ? _self.nbFormationNiveau2 : nbFormationNiveau2 // ignore: cast_nullable_to_non_nullable
as String,ngAgendaEM: null == ngAgendaEM ? _self.ngAgendaEM : ngAgendaEM // ignore: cast_nullable_to_non_nullable
as String,nbDecisionnaires: null == nbDecisionnaires ? _self.nbDecisionnaires : nbDecisionnaires // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RequestAutherInformationSource {

 String get title; List<RequestAuherInformation> get sections;
/// Create a copy of RequestAutherInformationSource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAutherInformationSourceCopyWith<RequestAutherInformationSource> get copyWith => _$RequestAutherInformationSourceCopyWithImpl<RequestAutherInformationSource>(this as RequestAutherInformationSource, _$identity);

  /// Serializes this RequestAutherInformationSource to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAutherInformationSource&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.sections, sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(sections));

@override
String toString() {
  return 'RequestAutherInformationSource(title: $title, sections: $sections)';
}


}

/// @nodoc
abstract mixin class $RequestAutherInformationSourceCopyWith<$Res>  {
  factory $RequestAutherInformationSourceCopyWith(RequestAutherInformationSource value, $Res Function(RequestAutherInformationSource) _then) = _$RequestAutherInformationSourceCopyWithImpl;
@useResult
$Res call({
 String title, List<RequestAuherInformation> sections
});




}
/// @nodoc
class _$RequestAutherInformationSourceCopyWithImpl<$Res>
    implements $RequestAutherInformationSourceCopyWith<$Res> {
  _$RequestAutherInformationSourceCopyWithImpl(this._self, this._then);

  final RequestAutherInformationSource _self;
  final $Res Function(RequestAutherInformationSource) _then;

/// Create a copy of RequestAutherInformationSource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? sections = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<RequestAuherInformation>,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAutherInformationSource].
extension RequestAutherInformationSourcePatterns on RequestAutherInformationSource {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestAutherInformationSource value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestAutherInformationSource() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestAutherInformationSource value)  $default,){
final _that = this;
switch (_that) {
case _RequestAutherInformationSource():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestAutherInformationSource value)?  $default,){
final _that = this;
switch (_that) {
case _RequestAutherInformationSource() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  List<RequestAuherInformation> sections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestAutherInformationSource() when $default != null:
return $default(_that.title,_that.sections);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  List<RequestAuherInformation> sections)  $default,) {final _that = this;
switch (_that) {
case _RequestAutherInformationSource():
return $default(_that.title,_that.sections);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  List<RequestAuherInformation> sections)?  $default,) {final _that = this;
switch (_that) {
case _RequestAutherInformationSource() when $default != null:
return $default(_that.title,_that.sections);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestAutherInformationSource implements RequestAutherInformationSource {
   _RequestAutherInformationSource({required this.title, required final  List<RequestAuherInformation> sections}): _sections = sections;
  factory _RequestAutherInformationSource.fromJson(Map<String, dynamic> json) => _$RequestAutherInformationSourceFromJson(json);

@override final  String title;
 final  List<RequestAuherInformation> _sections;
@override List<RequestAuherInformation> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}


/// Create a copy of RequestAutherInformationSource
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestAutherInformationSourceCopyWith<_RequestAutherInformationSource> get copyWith => __$RequestAutherInformationSourceCopyWithImpl<_RequestAutherInformationSource>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestAutherInformationSourceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestAutherInformationSource&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._sections, _sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_sections));

@override
String toString() {
  return 'RequestAutherInformationSource(title: $title, sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$RequestAutherInformationSourceCopyWith<$Res> implements $RequestAutherInformationSourceCopyWith<$Res> {
  factory _$RequestAutherInformationSourceCopyWith(_RequestAutherInformationSource value, $Res Function(_RequestAutherInformationSource) _then) = __$RequestAutherInformationSourceCopyWithImpl;
@override @useResult
$Res call({
 String title, List<RequestAuherInformation> sections
});




}
/// @nodoc
class __$RequestAutherInformationSourceCopyWithImpl<$Res>
    implements _$RequestAutherInformationSourceCopyWith<$Res> {
  __$RequestAutherInformationSourceCopyWithImpl(this._self, this._then);

  final _RequestAutherInformationSource _self;
  final $Res Function(_RequestAutherInformationSource) _then;

/// Create a copy of RequestAutherInformationSource
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? sections = null,}) {
  return _then(_RequestAutherInformationSource(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<RequestAuherInformation>,
  ));
}


}


/// @nodoc
mixin _$RequestRapportCelluleAssistance {

 String get nombreBaptiser; Map<String, dynamic> get assistanceNonBaptiser; Map<String, dynamic> get assistanceNouveau; Map<String, dynamic> get assistanceInviter; Map<String, dynamic> get assistanceCellule; String get id; String get formAssistanceIsSubmit; String get formAssistanceSubmitDate; String get tag;
/// Create a copy of RequestRapportCelluleAssistance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestRapportCelluleAssistanceCopyWith<RequestRapportCelluleAssistance> get copyWith => _$RequestRapportCelluleAssistanceCopyWithImpl<RequestRapportCelluleAssistance>(this as RequestRapportCelluleAssistance, _$identity);

  /// Serializes this RequestRapportCelluleAssistance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestRapportCelluleAssistance&&(identical(other.nombreBaptiser, nombreBaptiser) || other.nombreBaptiser == nombreBaptiser)&&const DeepCollectionEquality().equals(other.assistanceNonBaptiser, assistanceNonBaptiser)&&const DeepCollectionEquality().equals(other.assistanceNouveau, assistanceNouveau)&&const DeepCollectionEquality().equals(other.assistanceInviter, assistanceInviter)&&const DeepCollectionEquality().equals(other.assistanceCellule, assistanceCellule)&&(identical(other.id, id) || other.id == id)&&(identical(other.formAssistanceIsSubmit, formAssistanceIsSubmit) || other.formAssistanceIsSubmit == formAssistanceIsSubmit)&&(identical(other.formAssistanceSubmitDate, formAssistanceSubmitDate) || other.formAssistanceSubmitDate == formAssistanceSubmitDate)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nombreBaptiser,const DeepCollectionEquality().hash(assistanceNonBaptiser),const DeepCollectionEquality().hash(assistanceNouveau),const DeepCollectionEquality().hash(assistanceInviter),const DeepCollectionEquality().hash(assistanceCellule),id,formAssistanceIsSubmit,formAssistanceSubmitDate,tag);

@override
String toString() {
  return 'RequestRapportCelluleAssistance(nombreBaptiser: $nombreBaptiser, assistanceNonBaptiser: $assistanceNonBaptiser, assistanceNouveau: $assistanceNouveau, assistanceInviter: $assistanceInviter, assistanceCellule: $assistanceCellule, id: $id, formAssistanceIsSubmit: $formAssistanceIsSubmit, formAssistanceSubmitDate: $formAssistanceSubmitDate, tag: $tag)';
}


}

/// @nodoc
abstract mixin class $RequestRapportCelluleAssistanceCopyWith<$Res>  {
  factory $RequestRapportCelluleAssistanceCopyWith(RequestRapportCelluleAssistance value, $Res Function(RequestRapportCelluleAssistance) _then) = _$RequestRapportCelluleAssistanceCopyWithImpl;
@useResult
$Res call({
 String nombreBaptiser, Map<String, dynamic> assistanceNonBaptiser, Map<String, dynamic> assistanceNouveau, Map<String, dynamic> assistanceInviter, Map<String, dynamic> assistanceCellule, String id, String formAssistanceIsSubmit, String formAssistanceSubmitDate, String tag
});




}
/// @nodoc
class _$RequestRapportCelluleAssistanceCopyWithImpl<$Res>
    implements $RequestRapportCelluleAssistanceCopyWith<$Res> {
  _$RequestRapportCelluleAssistanceCopyWithImpl(this._self, this._then);

  final RequestRapportCelluleAssistance _self;
  final $Res Function(RequestRapportCelluleAssistance) _then;

/// Create a copy of RequestRapportCelluleAssistance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nombreBaptiser = null,Object? assistanceNonBaptiser = null,Object? assistanceNouveau = null,Object? assistanceInviter = null,Object? assistanceCellule = null,Object? id = null,Object? formAssistanceIsSubmit = null,Object? formAssistanceSubmitDate = null,Object? tag = null,}) {
  return _then(_self.copyWith(
nombreBaptiser: null == nombreBaptiser ? _self.nombreBaptiser : nombreBaptiser // ignore: cast_nullable_to_non_nullable
as String,assistanceNonBaptiser: null == assistanceNonBaptiser ? _self.assistanceNonBaptiser : assistanceNonBaptiser // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,assistanceNouveau: null == assistanceNouveau ? _self.assistanceNouveau : assistanceNouveau // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,assistanceInviter: null == assistanceInviter ? _self.assistanceInviter : assistanceInviter // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,assistanceCellule: null == assistanceCellule ? _self.assistanceCellule : assistanceCellule // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,formAssistanceIsSubmit: null == formAssistanceIsSubmit ? _self.formAssistanceIsSubmit : formAssistanceIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formAssistanceSubmitDate: null == formAssistanceSubmitDate ? _self.formAssistanceSubmitDate : formAssistanceSubmitDate // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestRapportCelluleAssistance].
extension RequestRapportCelluleAssistancePatterns on RequestRapportCelluleAssistance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestRapportCelluleAssistance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestRapportCelluleAssistance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestRapportCelluleAssistance value)  $default,){
final _that = this;
switch (_that) {
case _RequestRapportCelluleAssistance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestRapportCelluleAssistance value)?  $default,){
final _that = this;
switch (_that) {
case _RequestRapportCelluleAssistance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nombreBaptiser,  Map<String, dynamic> assistanceNonBaptiser,  Map<String, dynamic> assistanceNouveau,  Map<String, dynamic> assistanceInviter,  Map<String, dynamic> assistanceCellule,  String id,  String formAssistanceIsSubmit,  String formAssistanceSubmitDate,  String tag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestRapportCelluleAssistance() when $default != null:
return $default(_that.nombreBaptiser,_that.assistanceNonBaptiser,_that.assistanceNouveau,_that.assistanceInviter,_that.assistanceCellule,_that.id,_that.formAssistanceIsSubmit,_that.formAssistanceSubmitDate,_that.tag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nombreBaptiser,  Map<String, dynamic> assistanceNonBaptiser,  Map<String, dynamic> assistanceNouveau,  Map<String, dynamic> assistanceInviter,  Map<String, dynamic> assistanceCellule,  String id,  String formAssistanceIsSubmit,  String formAssistanceSubmitDate,  String tag)  $default,) {final _that = this;
switch (_that) {
case _RequestRapportCelluleAssistance():
return $default(_that.nombreBaptiser,_that.assistanceNonBaptiser,_that.assistanceNouveau,_that.assistanceInviter,_that.assistanceCellule,_that.id,_that.formAssistanceIsSubmit,_that.formAssistanceSubmitDate,_that.tag);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nombreBaptiser,  Map<String, dynamic> assistanceNonBaptiser,  Map<String, dynamic> assistanceNouveau,  Map<String, dynamic> assistanceInviter,  Map<String, dynamic> assistanceCellule,  String id,  String formAssistanceIsSubmit,  String formAssistanceSubmitDate,  String tag)?  $default,) {final _that = this;
switch (_that) {
case _RequestRapportCelluleAssistance() when $default != null:
return $default(_that.nombreBaptiser,_that.assistanceNonBaptiser,_that.assistanceNouveau,_that.assistanceInviter,_that.assistanceCellule,_that.id,_that.formAssistanceIsSubmit,_that.formAssistanceSubmitDate,_that.tag);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestRapportCelluleAssistance implements RequestRapportCelluleAssistance {
   _RequestRapportCelluleAssistance({required this.nombreBaptiser, required final  Map<String, dynamic> assistanceNonBaptiser, required final  Map<String, dynamic> assistanceNouveau, required final  Map<String, dynamic> assistanceInviter, required final  Map<String, dynamic> assistanceCellule, required this.id, this.formAssistanceIsSubmit = 'false', required this.formAssistanceSubmitDate, required this.tag}): _assistanceNonBaptiser = assistanceNonBaptiser,_assistanceNouveau = assistanceNouveau,_assistanceInviter = assistanceInviter,_assistanceCellule = assistanceCellule;
  factory _RequestRapportCelluleAssistance.fromJson(Map<String, dynamic> json) => _$RequestRapportCelluleAssistanceFromJson(json);

@override final  String nombreBaptiser;
 final  Map<String, dynamic> _assistanceNonBaptiser;
@override Map<String, dynamic> get assistanceNonBaptiser {
  if (_assistanceNonBaptiser is EqualUnmodifiableMapView) return _assistanceNonBaptiser;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_assistanceNonBaptiser);
}

 final  Map<String, dynamic> _assistanceNouveau;
@override Map<String, dynamic> get assistanceNouveau {
  if (_assistanceNouveau is EqualUnmodifiableMapView) return _assistanceNouveau;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_assistanceNouveau);
}

 final  Map<String, dynamic> _assistanceInviter;
@override Map<String, dynamic> get assistanceInviter {
  if (_assistanceInviter is EqualUnmodifiableMapView) return _assistanceInviter;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_assistanceInviter);
}

 final  Map<String, dynamic> _assistanceCellule;
@override Map<String, dynamic> get assistanceCellule {
  if (_assistanceCellule is EqualUnmodifiableMapView) return _assistanceCellule;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_assistanceCellule);
}

@override final  String id;
@override@JsonKey() final  String formAssistanceIsSubmit;
@override final  String formAssistanceSubmitDate;
@override final  String tag;

/// Create a copy of RequestRapportCelluleAssistance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestRapportCelluleAssistanceCopyWith<_RequestRapportCelluleAssistance> get copyWith => __$RequestRapportCelluleAssistanceCopyWithImpl<_RequestRapportCelluleAssistance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestRapportCelluleAssistanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestRapportCelluleAssistance&&(identical(other.nombreBaptiser, nombreBaptiser) || other.nombreBaptiser == nombreBaptiser)&&const DeepCollectionEquality().equals(other._assistanceNonBaptiser, _assistanceNonBaptiser)&&const DeepCollectionEquality().equals(other._assistanceNouveau, _assistanceNouveau)&&const DeepCollectionEquality().equals(other._assistanceInviter, _assistanceInviter)&&const DeepCollectionEquality().equals(other._assistanceCellule, _assistanceCellule)&&(identical(other.id, id) || other.id == id)&&(identical(other.formAssistanceIsSubmit, formAssistanceIsSubmit) || other.formAssistanceIsSubmit == formAssistanceIsSubmit)&&(identical(other.formAssistanceSubmitDate, formAssistanceSubmitDate) || other.formAssistanceSubmitDate == formAssistanceSubmitDate)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nombreBaptiser,const DeepCollectionEquality().hash(_assistanceNonBaptiser),const DeepCollectionEquality().hash(_assistanceNouveau),const DeepCollectionEquality().hash(_assistanceInviter),const DeepCollectionEquality().hash(_assistanceCellule),id,formAssistanceIsSubmit,formAssistanceSubmitDate,tag);

@override
String toString() {
  return 'RequestRapportCelluleAssistance(nombreBaptiser: $nombreBaptiser, assistanceNonBaptiser: $assistanceNonBaptiser, assistanceNouveau: $assistanceNouveau, assistanceInviter: $assistanceInviter, assistanceCellule: $assistanceCellule, id: $id, formAssistanceIsSubmit: $formAssistanceIsSubmit, formAssistanceSubmitDate: $formAssistanceSubmitDate, tag: $tag)';
}


}

/// @nodoc
abstract mixin class _$RequestRapportCelluleAssistanceCopyWith<$Res> implements $RequestRapportCelluleAssistanceCopyWith<$Res> {
  factory _$RequestRapportCelluleAssistanceCopyWith(_RequestRapportCelluleAssistance value, $Res Function(_RequestRapportCelluleAssistance) _then) = __$RequestRapportCelluleAssistanceCopyWithImpl;
@override @useResult
$Res call({
 String nombreBaptiser, Map<String, dynamic> assistanceNonBaptiser, Map<String, dynamic> assistanceNouveau, Map<String, dynamic> assistanceInviter, Map<String, dynamic> assistanceCellule, String id, String formAssistanceIsSubmit, String formAssistanceSubmitDate, String tag
});




}
/// @nodoc
class __$RequestRapportCelluleAssistanceCopyWithImpl<$Res>
    implements _$RequestRapportCelluleAssistanceCopyWith<$Res> {
  __$RequestRapportCelluleAssistanceCopyWithImpl(this._self, this._then);

  final _RequestRapportCelluleAssistance _self;
  final $Res Function(_RequestRapportCelluleAssistance) _then;

/// Create a copy of RequestRapportCelluleAssistance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nombreBaptiser = null,Object? assistanceNonBaptiser = null,Object? assistanceNouveau = null,Object? assistanceInviter = null,Object? assistanceCellule = null,Object? id = null,Object? formAssistanceIsSubmit = null,Object? formAssistanceSubmitDate = null,Object? tag = null,}) {
  return _then(_RequestRapportCelluleAssistance(
nombreBaptiser: null == nombreBaptiser ? _self.nombreBaptiser : nombreBaptiser // ignore: cast_nullable_to_non_nullable
as String,assistanceNonBaptiser: null == assistanceNonBaptiser ? _self._assistanceNonBaptiser : assistanceNonBaptiser // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,assistanceNouveau: null == assistanceNouveau ? _self._assistanceNouveau : assistanceNouveau // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,assistanceInviter: null == assistanceInviter ? _self._assistanceInviter : assistanceInviter // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,assistanceCellule: null == assistanceCellule ? _self._assistanceCellule : assistanceCellule // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,formAssistanceIsSubmit: null == formAssistanceIsSubmit ? _self.formAssistanceIsSubmit : formAssistanceIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formAssistanceSubmitDate: null == formAssistanceSubmitDate ? _self.formAssistanceSubmitDate : formAssistanceSubmitDate // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RequestRapportCelluleActivity {

 List<Map<String, dynamic>> get visiteMenbre; List<Map<String, dynamic>> get visiteOuvrier; List<Map<String, dynamic>> get dateActivitySubmited; List<Map<String, dynamic>> get weekActivity; String get formActivityIsSubmit; String get formActivitySubmitDate; String get tag; String get id;
/// Create a copy of RequestRapportCelluleActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestRapportCelluleActivityCopyWith<RequestRapportCelluleActivity> get copyWith => _$RequestRapportCelluleActivityCopyWithImpl<RequestRapportCelluleActivity>(this as RequestRapportCelluleActivity, _$identity);

  /// Serializes this RequestRapportCelluleActivity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestRapportCelluleActivity&&const DeepCollectionEquality().equals(other.visiteMenbre, visiteMenbre)&&const DeepCollectionEquality().equals(other.visiteOuvrier, visiteOuvrier)&&const DeepCollectionEquality().equals(other.dateActivitySubmited, dateActivitySubmited)&&const DeepCollectionEquality().equals(other.weekActivity, weekActivity)&&(identical(other.formActivityIsSubmit, formActivityIsSubmit) || other.formActivityIsSubmit == formActivityIsSubmit)&&(identical(other.formActivitySubmitDate, formActivitySubmitDate) || other.formActivitySubmitDate == formActivitySubmitDate)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(visiteMenbre),const DeepCollectionEquality().hash(visiteOuvrier),const DeepCollectionEquality().hash(dateActivitySubmited),const DeepCollectionEquality().hash(weekActivity),formActivityIsSubmit,formActivitySubmitDate,tag,id);

@override
String toString() {
  return 'RequestRapportCelluleActivity(visiteMenbre: $visiteMenbre, visiteOuvrier: $visiteOuvrier, dateActivitySubmited: $dateActivitySubmited, weekActivity: $weekActivity, formActivityIsSubmit: $formActivityIsSubmit, formActivitySubmitDate: $formActivitySubmitDate, tag: $tag, id: $id)';
}


}

/// @nodoc
abstract mixin class $RequestRapportCelluleActivityCopyWith<$Res>  {
  factory $RequestRapportCelluleActivityCopyWith(RequestRapportCelluleActivity value, $Res Function(RequestRapportCelluleActivity) _then) = _$RequestRapportCelluleActivityCopyWithImpl;
@useResult
$Res call({
 List<Map<String, dynamic>> visiteMenbre, List<Map<String, dynamic>> visiteOuvrier, List<Map<String, dynamic>> dateActivitySubmited, List<Map<String, dynamic>> weekActivity, String formActivityIsSubmit, String formActivitySubmitDate, String tag, String id
});




}
/// @nodoc
class _$RequestRapportCelluleActivityCopyWithImpl<$Res>
    implements $RequestRapportCelluleActivityCopyWith<$Res> {
  _$RequestRapportCelluleActivityCopyWithImpl(this._self, this._then);

  final RequestRapportCelluleActivity _self;
  final $Res Function(RequestRapportCelluleActivity) _then;

/// Create a copy of RequestRapportCelluleActivity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? visiteMenbre = null,Object? visiteOuvrier = null,Object? dateActivitySubmited = null,Object? weekActivity = null,Object? formActivityIsSubmit = null,Object? formActivitySubmitDate = null,Object? tag = null,Object? id = null,}) {
  return _then(_self.copyWith(
visiteMenbre: null == visiteMenbre ? _self.visiteMenbre : visiteMenbre // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,visiteOuvrier: null == visiteOuvrier ? _self.visiteOuvrier : visiteOuvrier // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,dateActivitySubmited: null == dateActivitySubmited ? _self.dateActivitySubmited : dateActivitySubmited // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,weekActivity: null == weekActivity ? _self.weekActivity : weekActivity // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,formActivityIsSubmit: null == formActivityIsSubmit ? _self.formActivityIsSubmit : formActivityIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formActivitySubmitDate: null == formActivitySubmitDate ? _self.formActivitySubmitDate : formActivitySubmitDate // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestRapportCelluleActivity].
extension RequestRapportCelluleActivityPatterns on RequestRapportCelluleActivity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestRapportCelluleActivity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestRapportCelluleActivity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestRapportCelluleActivity value)  $default,){
final _that = this;
switch (_that) {
case _RequestRapportCelluleActivity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestRapportCelluleActivity value)?  $default,){
final _that = this;
switch (_that) {
case _RequestRapportCelluleActivity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Map<String, dynamic>> visiteMenbre,  List<Map<String, dynamic>> visiteOuvrier,  List<Map<String, dynamic>> dateActivitySubmited,  List<Map<String, dynamic>> weekActivity,  String formActivityIsSubmit,  String formActivitySubmitDate,  String tag,  String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestRapportCelluleActivity() when $default != null:
return $default(_that.visiteMenbre,_that.visiteOuvrier,_that.dateActivitySubmited,_that.weekActivity,_that.formActivityIsSubmit,_that.formActivitySubmitDate,_that.tag,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Map<String, dynamic>> visiteMenbre,  List<Map<String, dynamic>> visiteOuvrier,  List<Map<String, dynamic>> dateActivitySubmited,  List<Map<String, dynamic>> weekActivity,  String formActivityIsSubmit,  String formActivitySubmitDate,  String tag,  String id)  $default,) {final _that = this;
switch (_that) {
case _RequestRapportCelluleActivity():
return $default(_that.visiteMenbre,_that.visiteOuvrier,_that.dateActivitySubmited,_that.weekActivity,_that.formActivityIsSubmit,_that.formActivitySubmitDate,_that.tag,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Map<String, dynamic>> visiteMenbre,  List<Map<String, dynamic>> visiteOuvrier,  List<Map<String, dynamic>> dateActivitySubmited,  List<Map<String, dynamic>> weekActivity,  String formActivityIsSubmit,  String formActivitySubmitDate,  String tag,  String id)?  $default,) {final _that = this;
switch (_that) {
case _RequestRapportCelluleActivity() when $default != null:
return $default(_that.visiteMenbre,_that.visiteOuvrier,_that.dateActivitySubmited,_that.weekActivity,_that.formActivityIsSubmit,_that.formActivitySubmitDate,_that.tag,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestRapportCelluleActivity implements RequestRapportCelluleActivity {
   _RequestRapportCelluleActivity({required final  List<Map<String, dynamic>> visiteMenbre, required final  List<Map<String, dynamic>> visiteOuvrier, required final  List<Map<String, dynamic>> dateActivitySubmited, required final  List<Map<String, dynamic>> weekActivity, this.formActivityIsSubmit = 'false', required this.formActivitySubmitDate, required this.tag, required this.id}): _visiteMenbre = visiteMenbre,_visiteOuvrier = visiteOuvrier,_dateActivitySubmited = dateActivitySubmited,_weekActivity = weekActivity;
  factory _RequestRapportCelluleActivity.fromJson(Map<String, dynamic> json) => _$RequestRapportCelluleActivityFromJson(json);

 final  List<Map<String, dynamic>> _visiteMenbre;
@override List<Map<String, dynamic>> get visiteMenbre {
  if (_visiteMenbre is EqualUnmodifiableListView) return _visiteMenbre;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visiteMenbre);
}

 final  List<Map<String, dynamic>> _visiteOuvrier;
@override List<Map<String, dynamic>> get visiteOuvrier {
  if (_visiteOuvrier is EqualUnmodifiableListView) return _visiteOuvrier;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visiteOuvrier);
}

 final  List<Map<String, dynamic>> _dateActivitySubmited;
@override List<Map<String, dynamic>> get dateActivitySubmited {
  if (_dateActivitySubmited is EqualUnmodifiableListView) return _dateActivitySubmited;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dateActivitySubmited);
}

 final  List<Map<String, dynamic>> _weekActivity;
@override List<Map<String, dynamic>> get weekActivity {
  if (_weekActivity is EqualUnmodifiableListView) return _weekActivity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weekActivity);
}

@override@JsonKey() final  String formActivityIsSubmit;
@override final  String formActivitySubmitDate;
@override final  String tag;
@override final  String id;

/// Create a copy of RequestRapportCelluleActivity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestRapportCelluleActivityCopyWith<_RequestRapportCelluleActivity> get copyWith => __$RequestRapportCelluleActivityCopyWithImpl<_RequestRapportCelluleActivity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestRapportCelluleActivityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestRapportCelluleActivity&&const DeepCollectionEquality().equals(other._visiteMenbre, _visiteMenbre)&&const DeepCollectionEquality().equals(other._visiteOuvrier, _visiteOuvrier)&&const DeepCollectionEquality().equals(other._dateActivitySubmited, _dateActivitySubmited)&&const DeepCollectionEquality().equals(other._weekActivity, _weekActivity)&&(identical(other.formActivityIsSubmit, formActivityIsSubmit) || other.formActivityIsSubmit == formActivityIsSubmit)&&(identical(other.formActivitySubmitDate, formActivitySubmitDate) || other.formActivitySubmitDate == formActivitySubmitDate)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_visiteMenbre),const DeepCollectionEquality().hash(_visiteOuvrier),const DeepCollectionEquality().hash(_dateActivitySubmited),const DeepCollectionEquality().hash(_weekActivity),formActivityIsSubmit,formActivitySubmitDate,tag,id);

@override
String toString() {
  return 'RequestRapportCelluleActivity(visiteMenbre: $visiteMenbre, visiteOuvrier: $visiteOuvrier, dateActivitySubmited: $dateActivitySubmited, weekActivity: $weekActivity, formActivityIsSubmit: $formActivityIsSubmit, formActivitySubmitDate: $formActivitySubmitDate, tag: $tag, id: $id)';
}


}

/// @nodoc
abstract mixin class _$RequestRapportCelluleActivityCopyWith<$Res> implements $RequestRapportCelluleActivityCopyWith<$Res> {
  factory _$RequestRapportCelluleActivityCopyWith(_RequestRapportCelluleActivity value, $Res Function(_RequestRapportCelluleActivity) _then) = __$RequestRapportCelluleActivityCopyWithImpl;
@override @useResult
$Res call({
 List<Map<String, dynamic>> visiteMenbre, List<Map<String, dynamic>> visiteOuvrier, List<Map<String, dynamic>> dateActivitySubmited, List<Map<String, dynamic>> weekActivity, String formActivityIsSubmit, String formActivitySubmitDate, String tag, String id
});




}
/// @nodoc
class __$RequestRapportCelluleActivityCopyWithImpl<$Res>
    implements _$RequestRapportCelluleActivityCopyWith<$Res> {
  __$RequestRapportCelluleActivityCopyWithImpl(this._self, this._then);

  final _RequestRapportCelluleActivity _self;
  final $Res Function(_RequestRapportCelluleActivity) _then;

/// Create a copy of RequestRapportCelluleActivity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? visiteMenbre = null,Object? visiteOuvrier = null,Object? dateActivitySubmited = null,Object? weekActivity = null,Object? formActivityIsSubmit = null,Object? formActivitySubmitDate = null,Object? tag = null,Object? id = null,}) {
  return _then(_RequestRapportCelluleActivity(
visiteMenbre: null == visiteMenbre ? _self._visiteMenbre : visiteMenbre // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,visiteOuvrier: null == visiteOuvrier ? _self._visiteOuvrier : visiteOuvrier // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,dateActivitySubmited: null == dateActivitySubmited ? _self._dateActivitySubmited : dateActivitySubmited // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,weekActivity: null == weekActivity ? _self._weekActivity : weekActivity // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,formActivityIsSubmit: null == formActivityIsSubmit ? _self.formActivityIsSubmit : formActivityIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formActivitySubmitDate: null == formActivitySubmitDate ? _self.formActivitySubmitDate : formActivitySubmitDate // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RequestRapportCelluleSuggestion {

 List<Map<String, dynamic>> get suggestions; String get faisAssignaler; String get ouvrierSpritualLive; String get formSuggestionIsSubmit; String get formSuggestionSubmitDate; String get resumerPredication; String get tag; String get id;
/// Create a copy of RequestRapportCelluleSuggestion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestRapportCelluleSuggestionCopyWith<RequestRapportCelluleSuggestion> get copyWith => _$RequestRapportCelluleSuggestionCopyWithImpl<RequestRapportCelluleSuggestion>(this as RequestRapportCelluleSuggestion, _$identity);

  /// Serializes this RequestRapportCelluleSuggestion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestRapportCelluleSuggestion&&const DeepCollectionEquality().equals(other.suggestions, suggestions)&&(identical(other.faisAssignaler, faisAssignaler) || other.faisAssignaler == faisAssignaler)&&(identical(other.ouvrierSpritualLive, ouvrierSpritualLive) || other.ouvrierSpritualLive == ouvrierSpritualLive)&&(identical(other.formSuggestionIsSubmit, formSuggestionIsSubmit) || other.formSuggestionIsSubmit == formSuggestionIsSubmit)&&(identical(other.formSuggestionSubmitDate, formSuggestionSubmitDate) || other.formSuggestionSubmitDate == formSuggestionSubmitDate)&&(identical(other.resumerPredication, resumerPredication) || other.resumerPredication == resumerPredication)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(suggestions),faisAssignaler,ouvrierSpritualLive,formSuggestionIsSubmit,formSuggestionSubmitDate,resumerPredication,tag,id);

@override
String toString() {
  return 'RequestRapportCelluleSuggestion(suggestions: $suggestions, faisAssignaler: $faisAssignaler, ouvrierSpritualLive: $ouvrierSpritualLive, formSuggestionIsSubmit: $formSuggestionIsSubmit, formSuggestionSubmitDate: $formSuggestionSubmitDate, resumerPredication: $resumerPredication, tag: $tag, id: $id)';
}


}

/// @nodoc
abstract mixin class $RequestRapportCelluleSuggestionCopyWith<$Res>  {
  factory $RequestRapportCelluleSuggestionCopyWith(RequestRapportCelluleSuggestion value, $Res Function(RequestRapportCelluleSuggestion) _then) = _$RequestRapportCelluleSuggestionCopyWithImpl;
@useResult
$Res call({
 List<Map<String, dynamic>> suggestions, String faisAssignaler, String ouvrierSpritualLive, String formSuggestionIsSubmit, String formSuggestionSubmitDate, String resumerPredication, String tag, String id
});




}
/// @nodoc
class _$RequestRapportCelluleSuggestionCopyWithImpl<$Res>
    implements $RequestRapportCelluleSuggestionCopyWith<$Res> {
  _$RequestRapportCelluleSuggestionCopyWithImpl(this._self, this._then);

  final RequestRapportCelluleSuggestion _self;
  final $Res Function(RequestRapportCelluleSuggestion) _then;

/// Create a copy of RequestRapportCelluleSuggestion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestions = null,Object? faisAssignaler = null,Object? ouvrierSpritualLive = null,Object? formSuggestionIsSubmit = null,Object? formSuggestionSubmitDate = null,Object? resumerPredication = null,Object? tag = null,Object? id = null,}) {
  return _then(_self.copyWith(
suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,faisAssignaler: null == faisAssignaler ? _self.faisAssignaler : faisAssignaler // ignore: cast_nullable_to_non_nullable
as String,ouvrierSpritualLive: null == ouvrierSpritualLive ? _self.ouvrierSpritualLive : ouvrierSpritualLive // ignore: cast_nullable_to_non_nullable
as String,formSuggestionIsSubmit: null == formSuggestionIsSubmit ? _self.formSuggestionIsSubmit : formSuggestionIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formSuggestionSubmitDate: null == formSuggestionSubmitDate ? _self.formSuggestionSubmitDate : formSuggestionSubmitDate // ignore: cast_nullable_to_non_nullable
as String,resumerPredication: null == resumerPredication ? _self.resumerPredication : resumerPredication // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestRapportCelluleSuggestion].
extension RequestRapportCelluleSuggestionPatterns on RequestRapportCelluleSuggestion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestRapportCelluleSuggestion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestRapportCelluleSuggestion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestRapportCelluleSuggestion value)  $default,){
final _that = this;
switch (_that) {
case _RequestRapportCelluleSuggestion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestRapportCelluleSuggestion value)?  $default,){
final _that = this;
switch (_that) {
case _RequestRapportCelluleSuggestion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Map<String, dynamic>> suggestions,  String faisAssignaler,  String ouvrierSpritualLive,  String formSuggestionIsSubmit,  String formSuggestionSubmitDate,  String resumerPredication,  String tag,  String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestRapportCelluleSuggestion() when $default != null:
return $default(_that.suggestions,_that.faisAssignaler,_that.ouvrierSpritualLive,_that.formSuggestionIsSubmit,_that.formSuggestionSubmitDate,_that.resumerPredication,_that.tag,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Map<String, dynamic>> suggestions,  String faisAssignaler,  String ouvrierSpritualLive,  String formSuggestionIsSubmit,  String formSuggestionSubmitDate,  String resumerPredication,  String tag,  String id)  $default,) {final _that = this;
switch (_that) {
case _RequestRapportCelluleSuggestion():
return $default(_that.suggestions,_that.faisAssignaler,_that.ouvrierSpritualLive,_that.formSuggestionIsSubmit,_that.formSuggestionSubmitDate,_that.resumerPredication,_that.tag,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Map<String, dynamic>> suggestions,  String faisAssignaler,  String ouvrierSpritualLive,  String formSuggestionIsSubmit,  String formSuggestionSubmitDate,  String resumerPredication,  String tag,  String id)?  $default,) {final _that = this;
switch (_that) {
case _RequestRapportCelluleSuggestion() when $default != null:
return $default(_that.suggestions,_that.faisAssignaler,_that.ouvrierSpritualLive,_that.formSuggestionIsSubmit,_that.formSuggestionSubmitDate,_that.resumerPredication,_that.tag,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestRapportCelluleSuggestion implements RequestRapportCelluleSuggestion {
   _RequestRapportCelluleSuggestion({required final  List<Map<String, dynamic>> suggestions, required this.faisAssignaler, required this.ouvrierSpritualLive, this.formSuggestionIsSubmit = 'false', required this.formSuggestionSubmitDate, required this.resumerPredication, required this.tag, required this.id}): _suggestions = suggestions;
  factory _RequestRapportCelluleSuggestion.fromJson(Map<String, dynamic> json) => _$RequestRapportCelluleSuggestionFromJson(json);

 final  List<Map<String, dynamic>> _suggestions;
@override List<Map<String, dynamic>> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

@override final  String faisAssignaler;
@override final  String ouvrierSpritualLive;
@override@JsonKey() final  String formSuggestionIsSubmit;
@override final  String formSuggestionSubmitDate;
@override final  String resumerPredication;
@override final  String tag;
@override final  String id;

/// Create a copy of RequestRapportCelluleSuggestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestRapportCelluleSuggestionCopyWith<_RequestRapportCelluleSuggestion> get copyWith => __$RequestRapportCelluleSuggestionCopyWithImpl<_RequestRapportCelluleSuggestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestRapportCelluleSuggestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestRapportCelluleSuggestion&&const DeepCollectionEquality().equals(other._suggestions, _suggestions)&&(identical(other.faisAssignaler, faisAssignaler) || other.faisAssignaler == faisAssignaler)&&(identical(other.ouvrierSpritualLive, ouvrierSpritualLive) || other.ouvrierSpritualLive == ouvrierSpritualLive)&&(identical(other.formSuggestionIsSubmit, formSuggestionIsSubmit) || other.formSuggestionIsSubmit == formSuggestionIsSubmit)&&(identical(other.formSuggestionSubmitDate, formSuggestionSubmitDate) || other.formSuggestionSubmitDate == formSuggestionSubmitDate)&&(identical(other.resumerPredication, resumerPredication) || other.resumerPredication == resumerPredication)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_suggestions),faisAssignaler,ouvrierSpritualLive,formSuggestionIsSubmit,formSuggestionSubmitDate,resumerPredication,tag,id);

@override
String toString() {
  return 'RequestRapportCelluleSuggestion(suggestions: $suggestions, faisAssignaler: $faisAssignaler, ouvrierSpritualLive: $ouvrierSpritualLive, formSuggestionIsSubmit: $formSuggestionIsSubmit, formSuggestionSubmitDate: $formSuggestionSubmitDate, resumerPredication: $resumerPredication, tag: $tag, id: $id)';
}


}

/// @nodoc
abstract mixin class _$RequestRapportCelluleSuggestionCopyWith<$Res> implements $RequestRapportCelluleSuggestionCopyWith<$Res> {
  factory _$RequestRapportCelluleSuggestionCopyWith(_RequestRapportCelluleSuggestion value, $Res Function(_RequestRapportCelluleSuggestion) _then) = __$RequestRapportCelluleSuggestionCopyWithImpl;
@override @useResult
$Res call({
 List<Map<String, dynamic>> suggestions, String faisAssignaler, String ouvrierSpritualLive, String formSuggestionIsSubmit, String formSuggestionSubmitDate, String resumerPredication, String tag, String id
});




}
/// @nodoc
class __$RequestRapportCelluleSuggestionCopyWithImpl<$Res>
    implements _$RequestRapportCelluleSuggestionCopyWith<$Res> {
  __$RequestRapportCelluleSuggestionCopyWithImpl(this._self, this._then);

  final _RequestRapportCelluleSuggestion _self;
  final $Res Function(_RequestRapportCelluleSuggestion) _then;

/// Create a copy of RequestRapportCelluleSuggestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? suggestions = null,Object? faisAssignaler = null,Object? ouvrierSpritualLive = null,Object? formSuggestionIsSubmit = null,Object? formSuggestionSubmitDate = null,Object? resumerPredication = null,Object? tag = null,Object? id = null,}) {
  return _then(_RequestRapportCelluleSuggestion(
suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,faisAssignaler: null == faisAssignaler ? _self.faisAssignaler : faisAssignaler // ignore: cast_nullable_to_non_nullable
as String,ouvrierSpritualLive: null == ouvrierSpritualLive ? _self.ouvrierSpritualLive : ouvrierSpritualLive // ignore: cast_nullable_to_non_nullable
as String,formSuggestionIsSubmit: null == formSuggestionIsSubmit ? _self.formSuggestionIsSubmit : formSuggestionIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formSuggestionSubmitDate: null == formSuggestionSubmitDate ? _self.formSuggestionSubmitDate : formSuggestionSubmitDate // ignore: cast_nullable_to_non_nullable
as String,resumerPredication: null == resumerPredication ? _self.resumerPredication : resumerPredication // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RequestRapportCellule {

 String get responsableCelluleId; String get date; String get tag;
/// Create a copy of RequestRapportCellule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestRapportCelluleCopyWith<RequestRapportCellule> get copyWith => _$RequestRapportCelluleCopyWithImpl<RequestRapportCellule>(this as RequestRapportCellule, _$identity);

  /// Serializes this RequestRapportCellule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestRapportCellule&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId)&&(identical(other.date, date) || other.date == date)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,responsableCelluleId,date,tag);

@override
String toString() {
  return 'RequestRapportCellule(responsableCelluleId: $responsableCelluleId, date: $date, tag: $tag)';
}


}

/// @nodoc
abstract mixin class $RequestRapportCelluleCopyWith<$Res>  {
  factory $RequestRapportCelluleCopyWith(RequestRapportCellule value, $Res Function(RequestRapportCellule) _then) = _$RequestRapportCelluleCopyWithImpl;
@useResult
$Res call({
 String responsableCelluleId, String date, String tag
});




}
/// @nodoc
class _$RequestRapportCelluleCopyWithImpl<$Res>
    implements $RequestRapportCelluleCopyWith<$Res> {
  _$RequestRapportCelluleCopyWithImpl(this._self, this._then);

  final RequestRapportCellule _self;
  final $Res Function(RequestRapportCellule) _then;

/// Create a copy of RequestRapportCellule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? responsableCelluleId = null,Object? date = null,Object? tag = null,}) {
  return _then(_self.copyWith(
responsableCelluleId: null == responsableCelluleId ? _self.responsableCelluleId : responsableCelluleId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestRapportCellule].
extension RequestRapportCellulePatterns on RequestRapportCellule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestRapportCellule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestRapportCellule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestRapportCellule value)  $default,){
final _that = this;
switch (_that) {
case _RequestRapportCellule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestRapportCellule value)?  $default,){
final _that = this;
switch (_that) {
case _RequestRapportCellule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String responsableCelluleId,  String date,  String tag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestRapportCellule() when $default != null:
return $default(_that.responsableCelluleId,_that.date,_that.tag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String responsableCelluleId,  String date,  String tag)  $default,) {final _that = this;
switch (_that) {
case _RequestRapportCellule():
return $default(_that.responsableCelluleId,_that.date,_that.tag);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String responsableCelluleId,  String date,  String tag)?  $default,) {final _that = this;
switch (_that) {
case _RequestRapportCellule() when $default != null:
return $default(_that.responsableCelluleId,_that.date,_that.tag);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestRapportCellule implements RequestRapportCellule {
   _RequestRapportCellule({required this.responsableCelluleId, required this.date, required this.tag});
  factory _RequestRapportCellule.fromJson(Map<String, dynamic> json) => _$RequestRapportCelluleFromJson(json);

@override final  String responsableCelluleId;
@override final  String date;
@override final  String tag;

/// Create a copy of RequestRapportCellule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestRapportCelluleCopyWith<_RequestRapportCellule> get copyWith => __$RequestRapportCelluleCopyWithImpl<_RequestRapportCellule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestRapportCelluleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestRapportCellule&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId)&&(identical(other.date, date) || other.date == date)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,responsableCelluleId,date,tag);

@override
String toString() {
  return 'RequestRapportCellule(responsableCelluleId: $responsableCelluleId, date: $date, tag: $tag)';
}


}

/// @nodoc
abstract mixin class _$RequestRapportCelluleCopyWith<$Res> implements $RequestRapportCelluleCopyWith<$Res> {
  factory _$RequestRapportCelluleCopyWith(_RequestRapportCellule value, $Res Function(_RequestRapportCellule) _then) = __$RequestRapportCelluleCopyWithImpl;
@override @useResult
$Res call({
 String responsableCelluleId, String date, String tag
});




}
/// @nodoc
class __$RequestRapportCelluleCopyWithImpl<$Res>
    implements _$RequestRapportCelluleCopyWith<$Res> {
  __$RequestRapportCelluleCopyWithImpl(this._self, this._then);

  final _RequestRapportCellule _self;
  final $Res Function(_RequestRapportCellule) _then;

/// Create a copy of RequestRapportCellule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? responsableCelluleId = null,Object? date = null,Object? tag = null,}) {
  return _then(_RequestRapportCellule(
responsableCelluleId: null == responsableCelluleId ? _self.responsableCelluleId : responsableCelluleId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
