// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cellule_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CelluleResponse {

 String get celluleId; String get celluleCode; String get nom; String get date; String get description; String get adresse; double get latitude; double get longitude; String get responsableCelluleId; String get responsableCellule; String get contactResponsableCellule; String get emailResponsableCellule; String get adresseResponsableCellule; String get secteurId; String get secteurCode; String get jourCellule; String get heureCellule;
/// Create a copy of CelluleResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CelluleResponseCopyWith<CelluleResponse> get copyWith => _$CelluleResponseCopyWithImpl<CelluleResponse>(this as CelluleResponse, _$identity);

  /// Serializes this CelluleResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CelluleResponse&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.date, date) || other.date == date)&&(identical(other.description, description) || other.description == description)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId)&&(identical(other.responsableCellule, responsableCellule) || other.responsableCellule == responsableCellule)&&(identical(other.contactResponsableCellule, contactResponsableCellule) || other.contactResponsableCellule == contactResponsableCellule)&&(identical(other.emailResponsableCellule, emailResponsableCellule) || other.emailResponsableCellule == emailResponsableCellule)&&(identical(other.adresseResponsableCellule, adresseResponsableCellule) || other.adresseResponsableCellule == adresseResponsableCellule)&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.jourCellule, jourCellule) || other.jourCellule == jourCellule)&&(identical(other.heureCellule, heureCellule) || other.heureCellule == heureCellule));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,celluleId,celluleCode,nom,date,description,adresse,latitude,longitude,responsableCelluleId,responsableCellule,contactResponsableCellule,emailResponsableCellule,adresseResponsableCellule,secteurId,secteurCode,jourCellule,heureCellule);

@override
String toString() {
  return 'CelluleResponse(celluleId: $celluleId, celluleCode: $celluleCode, nom: $nom, date: $date, description: $description, adresse: $adresse, latitude: $latitude, longitude: $longitude, responsableCelluleId: $responsableCelluleId, responsableCellule: $responsableCellule, contactResponsableCellule: $contactResponsableCellule, emailResponsableCellule: $emailResponsableCellule, adresseResponsableCellule: $adresseResponsableCellule, secteurId: $secteurId, secteurCode: $secteurCode, jourCellule: $jourCellule, heureCellule: $heureCellule)';
}


}

/// @nodoc
abstract mixin class $CelluleResponseCopyWith<$Res>  {
  factory $CelluleResponseCopyWith(CelluleResponse value, $Res Function(CelluleResponse) _then) = _$CelluleResponseCopyWithImpl;
@useResult
$Res call({
 String celluleId, String celluleCode, String nom, String date, String description, String adresse, double latitude, double longitude, String responsableCelluleId, String responsableCellule, String contactResponsableCellule, String emailResponsableCellule, String adresseResponsableCellule, String secteurId, String secteurCode, String jourCellule, String heureCellule
});




}
/// @nodoc
class _$CelluleResponseCopyWithImpl<$Res>
    implements $CelluleResponseCopyWith<$Res> {
  _$CelluleResponseCopyWithImpl(this._self, this._then);

  final CelluleResponse _self;
  final $Res Function(CelluleResponse) _then;

/// Create a copy of CelluleResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? celluleId = null,Object? celluleCode = null,Object? nom = null,Object? date = null,Object? description = null,Object? adresse = null,Object? latitude = null,Object? longitude = null,Object? responsableCelluleId = null,Object? responsableCellule = null,Object? contactResponsableCellule = null,Object? emailResponsableCellule = null,Object? adresseResponsableCellule = null,Object? secteurId = null,Object? secteurCode = null,Object? jourCellule = null,Object? heureCellule = null,}) {
  return _then(_self.copyWith(
celluleId: null == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as String,celluleCode: null == celluleCode ? _self.celluleCode : celluleCode // ignore: cast_nullable_to_non_nullable
as String,nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,responsableCelluleId: null == responsableCelluleId ? _self.responsableCelluleId : responsableCelluleId // ignore: cast_nullable_to_non_nullable
as String,responsableCellule: null == responsableCellule ? _self.responsableCellule : responsableCellule // ignore: cast_nullable_to_non_nullable
as String,contactResponsableCellule: null == contactResponsableCellule ? _self.contactResponsableCellule : contactResponsableCellule // ignore: cast_nullable_to_non_nullable
as String,emailResponsableCellule: null == emailResponsableCellule ? _self.emailResponsableCellule : emailResponsableCellule // ignore: cast_nullable_to_non_nullable
as String,adresseResponsableCellule: null == adresseResponsableCellule ? _self.adresseResponsableCellule : adresseResponsableCellule // ignore: cast_nullable_to_non_nullable
as String,secteurId: null == secteurId ? _self.secteurId : secteurId // ignore: cast_nullable_to_non_nullable
as String,secteurCode: null == secteurCode ? _self.secteurCode : secteurCode // ignore: cast_nullable_to_non_nullable
as String,jourCellule: null == jourCellule ? _self.jourCellule : jourCellule // ignore: cast_nullable_to_non_nullable
as String,heureCellule: null == heureCellule ? _self.heureCellule : heureCellule // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CelluleResponse].
extension CelluleResponsePatterns on CelluleResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CelluleResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CelluleResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CelluleResponse value)  $default,){
final _that = this;
switch (_that) {
case _CelluleResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CelluleResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CelluleResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String celluleId,  String celluleCode,  String nom,  String date,  String description,  String adresse,  double latitude,  double longitude,  String responsableCelluleId,  String responsableCellule,  String contactResponsableCellule,  String emailResponsableCellule,  String adresseResponsableCellule,  String secteurId,  String secteurCode,  String jourCellule,  String heureCellule)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CelluleResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String celluleId,  String celluleCode,  String nom,  String date,  String description,  String adresse,  double latitude,  double longitude,  String responsableCelluleId,  String responsableCellule,  String contactResponsableCellule,  String emailResponsableCellule,  String adresseResponsableCellule,  String secteurId,  String secteurCode,  String jourCellule,  String heureCellule)  $default,) {final _that = this;
switch (_that) {
case _CelluleResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String celluleId,  String celluleCode,  String nom,  String date,  String description,  String adresse,  double latitude,  double longitude,  String responsableCelluleId,  String responsableCellule,  String contactResponsableCellule,  String emailResponsableCellule,  String adresseResponsableCellule,  String secteurId,  String secteurCode,  String jourCellule,  String heureCellule)?  $default,) {final _that = this;
switch (_that) {
case _CelluleResponse() when $default != null:
return $default(_that.celluleId,_that.celluleCode,_that.nom,_that.date,_that.description,_that.adresse,_that.latitude,_that.longitude,_that.responsableCelluleId,_that.responsableCellule,_that.contactResponsableCellule,_that.emailResponsableCellule,_that.adresseResponsableCellule,_that.secteurId,_that.secteurCode,_that.jourCellule,_that.heureCellule);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CelluleResponse implements CelluleResponse {
   _CelluleResponse({required this.celluleId, required this.celluleCode, required this.nom, required this.date, required this.description, required this.adresse, required this.latitude, required this.longitude, required this.responsableCelluleId, required this.responsableCellule, required this.contactResponsableCellule, required this.emailResponsableCellule, required this.adresseResponsableCellule, required this.secteurId, required this.secteurCode, required this.jourCellule, required this.heureCellule});
  factory _CelluleResponse.fromJson(Map<String, dynamic> json) => _$CelluleResponseFromJson(json);

@override final  String celluleId;
@override final  String celluleCode;
@override final  String nom;
@override final  String date;
@override final  String description;
@override final  String adresse;
@override final  double latitude;
@override final  double longitude;
@override final  String responsableCelluleId;
@override final  String responsableCellule;
@override final  String contactResponsableCellule;
@override final  String emailResponsableCellule;
@override final  String adresseResponsableCellule;
@override final  String secteurId;
@override final  String secteurCode;
@override final  String jourCellule;
@override final  String heureCellule;

/// Create a copy of CelluleResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CelluleResponseCopyWith<_CelluleResponse> get copyWith => __$CelluleResponseCopyWithImpl<_CelluleResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CelluleResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CelluleResponse&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.date, date) || other.date == date)&&(identical(other.description, description) || other.description == description)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId)&&(identical(other.responsableCellule, responsableCellule) || other.responsableCellule == responsableCellule)&&(identical(other.contactResponsableCellule, contactResponsableCellule) || other.contactResponsableCellule == contactResponsableCellule)&&(identical(other.emailResponsableCellule, emailResponsableCellule) || other.emailResponsableCellule == emailResponsableCellule)&&(identical(other.adresseResponsableCellule, adresseResponsableCellule) || other.adresseResponsableCellule == adresseResponsableCellule)&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.jourCellule, jourCellule) || other.jourCellule == jourCellule)&&(identical(other.heureCellule, heureCellule) || other.heureCellule == heureCellule));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,celluleId,celluleCode,nom,date,description,adresse,latitude,longitude,responsableCelluleId,responsableCellule,contactResponsableCellule,emailResponsableCellule,adresseResponsableCellule,secteurId,secteurCode,jourCellule,heureCellule);

@override
String toString() {
  return 'CelluleResponse(celluleId: $celluleId, celluleCode: $celluleCode, nom: $nom, date: $date, description: $description, adresse: $adresse, latitude: $latitude, longitude: $longitude, responsableCelluleId: $responsableCelluleId, responsableCellule: $responsableCellule, contactResponsableCellule: $contactResponsableCellule, emailResponsableCellule: $emailResponsableCellule, adresseResponsableCellule: $adresseResponsableCellule, secteurId: $secteurId, secteurCode: $secteurCode, jourCellule: $jourCellule, heureCellule: $heureCellule)';
}


}

/// @nodoc
abstract mixin class _$CelluleResponseCopyWith<$Res> implements $CelluleResponseCopyWith<$Res> {
  factory _$CelluleResponseCopyWith(_CelluleResponse value, $Res Function(_CelluleResponse) _then) = __$CelluleResponseCopyWithImpl;
@override @useResult
$Res call({
 String celluleId, String celluleCode, String nom, String date, String description, String adresse, double latitude, double longitude, String responsableCelluleId, String responsableCellule, String contactResponsableCellule, String emailResponsableCellule, String adresseResponsableCellule, String secteurId, String secteurCode, String jourCellule, String heureCellule
});




}
/// @nodoc
class __$CelluleResponseCopyWithImpl<$Res>
    implements _$CelluleResponseCopyWith<$Res> {
  __$CelluleResponseCopyWithImpl(this._self, this._then);

  final _CelluleResponse _self;
  final $Res Function(_CelluleResponse) _then;

/// Create a copy of CelluleResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? celluleId = null,Object? celluleCode = null,Object? nom = null,Object? date = null,Object? description = null,Object? adresse = null,Object? latitude = null,Object? longitude = null,Object? responsableCelluleId = null,Object? responsableCellule = null,Object? contactResponsableCellule = null,Object? emailResponsableCellule = null,Object? adresseResponsableCellule = null,Object? secteurId = null,Object? secteurCode = null,Object? jourCellule = null,Object? heureCellule = null,}) {
  return _then(_CelluleResponse(
celluleId: null == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as String,celluleCode: null == celluleCode ? _self.celluleCode : celluleCode // ignore: cast_nullable_to_non_nullable
as String,nom: null == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,responsableCelluleId: null == responsableCelluleId ? _self.responsableCelluleId : responsableCelluleId // ignore: cast_nullable_to_non_nullable
as String,responsableCellule: null == responsableCellule ? _self.responsableCellule : responsableCellule // ignore: cast_nullable_to_non_nullable
as String,contactResponsableCellule: null == contactResponsableCellule ? _self.contactResponsableCellule : contactResponsableCellule // ignore: cast_nullable_to_non_nullable
as String,emailResponsableCellule: null == emailResponsableCellule ? _self.emailResponsableCellule : emailResponsableCellule // ignore: cast_nullable_to_non_nullable
as String,adresseResponsableCellule: null == adresseResponsableCellule ? _self.adresseResponsableCellule : adresseResponsableCellule // ignore: cast_nullable_to_non_nullable
as String,secteurId: null == secteurId ? _self.secteurId : secteurId // ignore: cast_nullable_to_non_nullable
as String,secteurCode: null == secteurCode ? _self.secteurCode : secteurCode // ignore: cast_nullable_to_non_nullable
as String,jourCellule: null == jourCellule ? _self.jourCellule : jourCellule // ignore: cast_nullable_to_non_nullable
as String,heureCellule: null == heureCellule ? _self.heureCellule : heureCellule // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ReponsableCelluleResponse {

 String get responsable; String get celluleCode; String get date; String get celluleName; String get contact; String get email; String get adresse; String get celluleId; String get secteurId; String get secteurCode; String get responsableCelluleId;
/// Create a copy of ReponsableCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReponsableCelluleResponseCopyWith<ReponsableCelluleResponse> get copyWith => _$ReponsableCelluleResponseCopyWithImpl<ReponsableCelluleResponse>(this as ReponsableCelluleResponse, _$identity);

  /// Serializes this ReponsableCelluleResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReponsableCelluleResponse&&(identical(other.responsable, responsable) || other.responsable == responsable)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.date, date) || other.date == date)&&(identical(other.celluleName, celluleName) || other.celluleName == celluleName)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.email, email) || other.email == email)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId)&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,responsable,celluleCode,date,celluleName,contact,email,adresse,celluleId,secteurId,secteurCode,responsableCelluleId);

@override
String toString() {
  return 'ReponsableCelluleResponse(responsable: $responsable, celluleCode: $celluleCode, date: $date, celluleName: $celluleName, contact: $contact, email: $email, adresse: $adresse, celluleId: $celluleId, secteurId: $secteurId, secteurCode: $secteurCode, responsableCelluleId: $responsableCelluleId)';
}


}

/// @nodoc
abstract mixin class $ReponsableCelluleResponseCopyWith<$Res>  {
  factory $ReponsableCelluleResponseCopyWith(ReponsableCelluleResponse value, $Res Function(ReponsableCelluleResponse) _then) = _$ReponsableCelluleResponseCopyWithImpl;
@useResult
$Res call({
 String responsable, String celluleCode, String date, String celluleName, String contact, String email, String adresse, String celluleId, String secteurId, String secteurCode, String responsableCelluleId
});




}
/// @nodoc
class _$ReponsableCelluleResponseCopyWithImpl<$Res>
    implements $ReponsableCelluleResponseCopyWith<$Res> {
  _$ReponsableCelluleResponseCopyWithImpl(this._self, this._then);

  final ReponsableCelluleResponse _self;
  final $Res Function(ReponsableCelluleResponse) _then;

/// Create a copy of ReponsableCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? responsable = null,Object? celluleCode = null,Object? date = null,Object? celluleName = null,Object? contact = null,Object? email = null,Object? adresse = null,Object? celluleId = null,Object? secteurId = null,Object? secteurCode = null,Object? responsableCelluleId = null,}) {
  return _then(_self.copyWith(
responsable: null == responsable ? _self.responsable : responsable // ignore: cast_nullable_to_non_nullable
as String,celluleCode: null == celluleCode ? _self.celluleCode : celluleCode // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,celluleName: null == celluleName ? _self.celluleName : celluleName // ignore: cast_nullable_to_non_nullable
as String,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,celluleId: null == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as String,secteurId: null == secteurId ? _self.secteurId : secteurId // ignore: cast_nullable_to_non_nullable
as String,secteurCode: null == secteurCode ? _self.secteurCode : secteurCode // ignore: cast_nullable_to_non_nullable
as String,responsableCelluleId: null == responsableCelluleId ? _self.responsableCelluleId : responsableCelluleId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReponsableCelluleResponse].
extension ReponsableCelluleResponsePatterns on ReponsableCelluleResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReponsableCelluleResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReponsableCelluleResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReponsableCelluleResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReponsableCelluleResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReponsableCelluleResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReponsableCelluleResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String responsable,  String celluleCode,  String date,  String celluleName,  String contact,  String email,  String adresse,  String celluleId,  String secteurId,  String secteurCode,  String responsableCelluleId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReponsableCelluleResponse() when $default != null:
return $default(_that.responsable,_that.celluleCode,_that.date,_that.celluleName,_that.contact,_that.email,_that.adresse,_that.celluleId,_that.secteurId,_that.secteurCode,_that.responsableCelluleId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String responsable,  String celluleCode,  String date,  String celluleName,  String contact,  String email,  String adresse,  String celluleId,  String secteurId,  String secteurCode,  String responsableCelluleId)  $default,) {final _that = this;
switch (_that) {
case _ReponsableCelluleResponse():
return $default(_that.responsable,_that.celluleCode,_that.date,_that.celluleName,_that.contact,_that.email,_that.adresse,_that.celluleId,_that.secteurId,_that.secteurCode,_that.responsableCelluleId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String responsable,  String celluleCode,  String date,  String celluleName,  String contact,  String email,  String adresse,  String celluleId,  String secteurId,  String secteurCode,  String responsableCelluleId)?  $default,) {final _that = this;
switch (_that) {
case _ReponsableCelluleResponse() when $default != null:
return $default(_that.responsable,_that.celluleCode,_that.date,_that.celluleName,_that.contact,_that.email,_that.adresse,_that.celluleId,_that.secteurId,_that.secteurCode,_that.responsableCelluleId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReponsableCelluleResponse implements ReponsableCelluleResponse {
   _ReponsableCelluleResponse({required this.responsable, required this.celluleCode, required this.date, required this.celluleName, required this.contact, required this.email, required this.adresse, required this.celluleId, required this.secteurId, required this.secteurCode, required this.responsableCelluleId});
  factory _ReponsableCelluleResponse.fromJson(Map<String, dynamic> json) => _$ReponsableCelluleResponseFromJson(json);

@override final  String responsable;
@override final  String celluleCode;
@override final  String date;
@override final  String celluleName;
@override final  String contact;
@override final  String email;
@override final  String adresse;
@override final  String celluleId;
@override final  String secteurId;
@override final  String secteurCode;
@override final  String responsableCelluleId;

/// Create a copy of ReponsableCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReponsableCelluleResponseCopyWith<_ReponsableCelluleResponse> get copyWith => __$ReponsableCelluleResponseCopyWithImpl<_ReponsableCelluleResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReponsableCelluleResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReponsableCelluleResponse&&(identical(other.responsable, responsable) || other.responsable == responsable)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.date, date) || other.date == date)&&(identical(other.celluleName, celluleName) || other.celluleName == celluleName)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.email, email) || other.email == email)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId)&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,responsable,celluleCode,date,celluleName,contact,email,adresse,celluleId,secteurId,secteurCode,responsableCelluleId);

@override
String toString() {
  return 'ReponsableCelluleResponse(responsable: $responsable, celluleCode: $celluleCode, date: $date, celluleName: $celluleName, contact: $contact, email: $email, adresse: $adresse, celluleId: $celluleId, secteurId: $secteurId, secteurCode: $secteurCode, responsableCelluleId: $responsableCelluleId)';
}


}

/// @nodoc
abstract mixin class _$ReponsableCelluleResponseCopyWith<$Res> implements $ReponsableCelluleResponseCopyWith<$Res> {
  factory _$ReponsableCelluleResponseCopyWith(_ReponsableCelluleResponse value, $Res Function(_ReponsableCelluleResponse) _then) = __$ReponsableCelluleResponseCopyWithImpl;
@override @useResult
$Res call({
 String responsable, String celluleCode, String date, String celluleName, String contact, String email, String adresse, String celluleId, String secteurId, String secteurCode, String responsableCelluleId
});




}
/// @nodoc
class __$ReponsableCelluleResponseCopyWithImpl<$Res>
    implements _$ReponsableCelluleResponseCopyWith<$Res> {
  __$ReponsableCelluleResponseCopyWithImpl(this._self, this._then);

  final _ReponsableCelluleResponse _self;
  final $Res Function(_ReponsableCelluleResponse) _then;

/// Create a copy of ReponsableCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? responsable = null,Object? celluleCode = null,Object? date = null,Object? celluleName = null,Object? contact = null,Object? email = null,Object? adresse = null,Object? celluleId = null,Object? secteurId = null,Object? secteurCode = null,Object? responsableCelluleId = null,}) {
  return _then(_ReponsableCelluleResponse(
responsable: null == responsable ? _self.responsable : responsable // ignore: cast_nullable_to_non_nullable
as String,celluleCode: null == celluleCode ? _self.celluleCode : celluleCode // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,celluleName: null == celluleName ? _self.celluleName : celluleName // ignore: cast_nullable_to_non_nullable
as String,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,celluleId: null == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as String,secteurId: null == secteurId ? _self.secteurId : secteurId // ignore: cast_nullable_to_non_nullable
as String,secteurCode: null == secteurCode ? _self.secteurCode : secteurCode // ignore: cast_nullable_to_non_nullable
as String,responsableCelluleId: null == responsableCelluleId ? _self.responsableCelluleId : responsableCelluleId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DiscipleCellule {

 String get fullName; String get isBaptierOrNot;
/// Create a copy of DiscipleCellule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiscipleCelluleCopyWith<DiscipleCellule> get copyWith => _$DiscipleCelluleCopyWithImpl<DiscipleCellule>(this as DiscipleCellule, _$identity);

  /// Serializes this DiscipleCellule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiscipleCellule&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.isBaptierOrNot, isBaptierOrNot) || other.isBaptierOrNot == isBaptierOrNot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,isBaptierOrNot);

@override
String toString() {
  return 'DiscipleCellule(fullName: $fullName, isBaptierOrNot: $isBaptierOrNot)';
}


}

/// @nodoc
abstract mixin class $DiscipleCelluleCopyWith<$Res>  {
  factory $DiscipleCelluleCopyWith(DiscipleCellule value, $Res Function(DiscipleCellule) _then) = _$DiscipleCelluleCopyWithImpl;
@useResult
$Res call({
 String fullName, String isBaptierOrNot
});




}
/// @nodoc
class _$DiscipleCelluleCopyWithImpl<$Res>
    implements $DiscipleCelluleCopyWith<$Res> {
  _$DiscipleCelluleCopyWithImpl(this._self, this._then);

  final DiscipleCellule _self;
  final $Res Function(DiscipleCellule) _then;

/// Create a copy of DiscipleCellule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,Object? isBaptierOrNot = null,}) {
  return _then(_self.copyWith(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,isBaptierOrNot: null == isBaptierOrNot ? _self.isBaptierOrNot : isBaptierOrNot // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DiscipleCellule].
extension DiscipleCellulePatterns on DiscipleCellule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiscipleCellule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiscipleCellule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiscipleCellule value)  $default,){
final _that = this;
switch (_that) {
case _DiscipleCellule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiscipleCellule value)?  $default,){
final _that = this;
switch (_that) {
case _DiscipleCellule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fullName,  String isBaptierOrNot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiscipleCellule() when $default != null:
return $default(_that.fullName,_that.isBaptierOrNot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fullName,  String isBaptierOrNot)  $default,) {final _that = this;
switch (_that) {
case _DiscipleCellule():
return $default(_that.fullName,_that.isBaptierOrNot);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fullName,  String isBaptierOrNot)?  $default,) {final _that = this;
switch (_that) {
case _DiscipleCellule() when $default != null:
return $default(_that.fullName,_that.isBaptierOrNot);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiscipleCellule implements DiscipleCellule {
   _DiscipleCellule({required this.fullName, required this.isBaptierOrNot});
  factory _DiscipleCellule.fromJson(Map<String, dynamic> json) => _$DiscipleCelluleFromJson(json);

@override final  String fullName;
@override final  String isBaptierOrNot;

/// Create a copy of DiscipleCellule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiscipleCelluleCopyWith<_DiscipleCellule> get copyWith => __$DiscipleCelluleCopyWithImpl<_DiscipleCellule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiscipleCelluleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiscipleCellule&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.isBaptierOrNot, isBaptierOrNot) || other.isBaptierOrNot == isBaptierOrNot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,isBaptierOrNot);

@override
String toString() {
  return 'DiscipleCellule(fullName: $fullName, isBaptierOrNot: $isBaptierOrNot)';
}


}

/// @nodoc
abstract mixin class _$DiscipleCelluleCopyWith<$Res> implements $DiscipleCelluleCopyWith<$Res> {
  factory _$DiscipleCelluleCopyWith(_DiscipleCellule value, $Res Function(_DiscipleCellule) _then) = __$DiscipleCelluleCopyWithImpl;
@override @useResult
$Res call({
 String fullName, String isBaptierOrNot
});




}
/// @nodoc
class __$DiscipleCelluleCopyWithImpl<$Res>
    implements _$DiscipleCelluleCopyWith<$Res> {
  __$DiscipleCelluleCopyWithImpl(this._self, this._then);

  final _DiscipleCellule _self;
  final $Res Function(_DiscipleCellule) _then;

/// Create a copy of DiscipleCellule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? isBaptierOrNot = null,}) {
  return _then(_DiscipleCellule(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,isBaptierOrNot: null == isBaptierOrNot ? _self.isBaptierOrNot : isBaptierOrNot // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SecteurResponse {

 String get secteurId; String get secteurCode; String get secteurName; String get dateCreated; String get secteurResponsableName; String get contactResponsable; String get emailResponsableSecteur; String get adressResponsableSecteur; String get responsableSecteurId; String get adresse; String get zoneId; String get zoneCode;
/// Create a copy of SecteurResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecteurResponseCopyWith<SecteurResponse> get copyWith => _$SecteurResponseCopyWithImpl<SecteurResponse>(this as SecteurResponse, _$identity);

  /// Serializes this SecteurResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecteurResponse&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.secteurName, secteurName) || other.secteurName == secteurName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.secteurResponsableName, secteurResponsableName) || other.secteurResponsableName == secteurResponsableName)&&(identical(other.contactResponsable, contactResponsable) || other.contactResponsable == contactResponsable)&&(identical(other.emailResponsableSecteur, emailResponsableSecteur) || other.emailResponsableSecteur == emailResponsableSecteur)&&(identical(other.adressResponsableSecteur, adressResponsableSecteur) || other.adressResponsableSecteur == adressResponsableSecteur)&&(identical(other.responsableSecteurId, responsableSecteurId) || other.responsableSecteurId == responsableSecteurId)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.zoneCode, zoneCode) || other.zoneCode == zoneCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,secteurId,secteurCode,secteurName,dateCreated,secteurResponsableName,contactResponsable,emailResponsableSecteur,adressResponsableSecteur,responsableSecteurId,adresse,zoneId,zoneCode);

@override
String toString() {
  return 'SecteurResponse(secteurId: $secteurId, secteurCode: $secteurCode, secteurName: $secteurName, dateCreated: $dateCreated, secteurResponsableName: $secteurResponsableName, contactResponsable: $contactResponsable, emailResponsableSecteur: $emailResponsableSecteur, adressResponsableSecteur: $adressResponsableSecteur, responsableSecteurId: $responsableSecteurId, adresse: $adresse, zoneId: $zoneId, zoneCode: $zoneCode)';
}


}

/// @nodoc
abstract mixin class $SecteurResponseCopyWith<$Res>  {
  factory $SecteurResponseCopyWith(SecteurResponse value, $Res Function(SecteurResponse) _then) = _$SecteurResponseCopyWithImpl;
@useResult
$Res call({
 String secteurId, String secteurCode, String secteurName, String dateCreated, String secteurResponsableName, String contactResponsable, String emailResponsableSecteur, String adressResponsableSecteur, String responsableSecteurId, String adresse, String zoneId, String zoneCode
});




}
/// @nodoc
class _$SecteurResponseCopyWithImpl<$Res>
    implements $SecteurResponseCopyWith<$Res> {
  _$SecteurResponseCopyWithImpl(this._self, this._then);

  final SecteurResponse _self;
  final $Res Function(SecteurResponse) _then;

/// Create a copy of SecteurResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? secteurId = null,Object? secteurCode = null,Object? secteurName = null,Object? dateCreated = null,Object? secteurResponsableName = null,Object? contactResponsable = null,Object? emailResponsableSecteur = null,Object? adressResponsableSecteur = null,Object? responsableSecteurId = null,Object? adresse = null,Object? zoneId = null,Object? zoneCode = null,}) {
  return _then(_self.copyWith(
secteurId: null == secteurId ? _self.secteurId : secteurId // ignore: cast_nullable_to_non_nullable
as String,secteurCode: null == secteurCode ? _self.secteurCode : secteurCode // ignore: cast_nullable_to_non_nullable
as String,secteurName: null == secteurName ? _self.secteurName : secteurName // ignore: cast_nullable_to_non_nullable
as String,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String,secteurResponsableName: null == secteurResponsableName ? _self.secteurResponsableName : secteurResponsableName // ignore: cast_nullable_to_non_nullable
as String,contactResponsable: null == contactResponsable ? _self.contactResponsable : contactResponsable // ignore: cast_nullable_to_non_nullable
as String,emailResponsableSecteur: null == emailResponsableSecteur ? _self.emailResponsableSecteur : emailResponsableSecteur // ignore: cast_nullable_to_non_nullable
as String,adressResponsableSecteur: null == adressResponsableSecteur ? _self.adressResponsableSecteur : adressResponsableSecteur // ignore: cast_nullable_to_non_nullable
as String,responsableSecteurId: null == responsableSecteurId ? _self.responsableSecteurId : responsableSecteurId // ignore: cast_nullable_to_non_nullable
as String,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,zoneId: null == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as String,zoneCode: null == zoneCode ? _self.zoneCode : zoneCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SecteurResponse].
extension SecteurResponsePatterns on SecteurResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecteurResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecteurResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecteurResponse value)  $default,){
final _that = this;
switch (_that) {
case _SecteurResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecteurResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SecteurResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String secteurId,  String secteurCode,  String secteurName,  String dateCreated,  String secteurResponsableName,  String contactResponsable,  String emailResponsableSecteur,  String adressResponsableSecteur,  String responsableSecteurId,  String adresse,  String zoneId,  String zoneCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecteurResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String secteurId,  String secteurCode,  String secteurName,  String dateCreated,  String secteurResponsableName,  String contactResponsable,  String emailResponsableSecteur,  String adressResponsableSecteur,  String responsableSecteurId,  String adresse,  String zoneId,  String zoneCode)  $default,) {final _that = this;
switch (_that) {
case _SecteurResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String secteurId,  String secteurCode,  String secteurName,  String dateCreated,  String secteurResponsableName,  String contactResponsable,  String emailResponsableSecteur,  String adressResponsableSecteur,  String responsableSecteurId,  String adresse,  String zoneId,  String zoneCode)?  $default,) {final _that = this;
switch (_that) {
case _SecteurResponse() when $default != null:
return $default(_that.secteurId,_that.secteurCode,_that.secteurName,_that.dateCreated,_that.secteurResponsableName,_that.contactResponsable,_that.emailResponsableSecteur,_that.adressResponsableSecteur,_that.responsableSecteurId,_that.adresse,_that.zoneId,_that.zoneCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecteurResponse implements SecteurResponse {
   _SecteurResponse({required this.secteurId, required this.secteurCode, required this.secteurName, required this.dateCreated, required this.secteurResponsableName, required this.contactResponsable, required this.emailResponsableSecteur, required this.adressResponsableSecteur, required this.responsableSecteurId, required this.adresse, required this.zoneId, required this.zoneCode});
  factory _SecteurResponse.fromJson(Map<String, dynamic> json) => _$SecteurResponseFromJson(json);

@override final  String secteurId;
@override final  String secteurCode;
@override final  String secteurName;
@override final  String dateCreated;
@override final  String secteurResponsableName;
@override final  String contactResponsable;
@override final  String emailResponsableSecteur;
@override final  String adressResponsableSecteur;
@override final  String responsableSecteurId;
@override final  String adresse;
@override final  String zoneId;
@override final  String zoneCode;

/// Create a copy of SecteurResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecteurResponseCopyWith<_SecteurResponse> get copyWith => __$SecteurResponseCopyWithImpl<_SecteurResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecteurResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecteurResponse&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.secteurName, secteurName) || other.secteurName == secteurName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.secteurResponsableName, secteurResponsableName) || other.secteurResponsableName == secteurResponsableName)&&(identical(other.contactResponsable, contactResponsable) || other.contactResponsable == contactResponsable)&&(identical(other.emailResponsableSecteur, emailResponsableSecteur) || other.emailResponsableSecteur == emailResponsableSecteur)&&(identical(other.adressResponsableSecteur, adressResponsableSecteur) || other.adressResponsableSecteur == adressResponsableSecteur)&&(identical(other.responsableSecteurId, responsableSecteurId) || other.responsableSecteurId == responsableSecteurId)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.zoneCode, zoneCode) || other.zoneCode == zoneCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,secteurId,secteurCode,secteurName,dateCreated,secteurResponsableName,contactResponsable,emailResponsableSecteur,adressResponsableSecteur,responsableSecteurId,adresse,zoneId,zoneCode);

@override
String toString() {
  return 'SecteurResponse(secteurId: $secteurId, secteurCode: $secteurCode, secteurName: $secteurName, dateCreated: $dateCreated, secteurResponsableName: $secteurResponsableName, contactResponsable: $contactResponsable, emailResponsableSecteur: $emailResponsableSecteur, adressResponsableSecteur: $adressResponsableSecteur, responsableSecteurId: $responsableSecteurId, adresse: $adresse, zoneId: $zoneId, zoneCode: $zoneCode)';
}


}

/// @nodoc
abstract mixin class _$SecteurResponseCopyWith<$Res> implements $SecteurResponseCopyWith<$Res> {
  factory _$SecteurResponseCopyWith(_SecteurResponse value, $Res Function(_SecteurResponse) _then) = __$SecteurResponseCopyWithImpl;
@override @useResult
$Res call({
 String secteurId, String secteurCode, String secteurName, String dateCreated, String secteurResponsableName, String contactResponsable, String emailResponsableSecteur, String adressResponsableSecteur, String responsableSecteurId, String adresse, String zoneId, String zoneCode
});




}
/// @nodoc
class __$SecteurResponseCopyWithImpl<$Res>
    implements _$SecteurResponseCopyWith<$Res> {
  __$SecteurResponseCopyWithImpl(this._self, this._then);

  final _SecteurResponse _self;
  final $Res Function(_SecteurResponse) _then;

/// Create a copy of SecteurResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? secteurId = null,Object? secteurCode = null,Object? secteurName = null,Object? dateCreated = null,Object? secteurResponsableName = null,Object? contactResponsable = null,Object? emailResponsableSecteur = null,Object? adressResponsableSecteur = null,Object? responsableSecteurId = null,Object? adresse = null,Object? zoneId = null,Object? zoneCode = null,}) {
  return _then(_SecteurResponse(
secteurId: null == secteurId ? _self.secteurId : secteurId // ignore: cast_nullable_to_non_nullable
as String,secteurCode: null == secteurCode ? _self.secteurCode : secteurCode // ignore: cast_nullable_to_non_nullable
as String,secteurName: null == secteurName ? _self.secteurName : secteurName // ignore: cast_nullable_to_non_nullable
as String,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String,secteurResponsableName: null == secteurResponsableName ? _self.secteurResponsableName : secteurResponsableName // ignore: cast_nullable_to_non_nullable
as String,contactResponsable: null == contactResponsable ? _self.contactResponsable : contactResponsable // ignore: cast_nullable_to_non_nullable
as String,emailResponsableSecteur: null == emailResponsableSecteur ? _self.emailResponsableSecteur : emailResponsableSecteur // ignore: cast_nullable_to_non_nullable
as String,adressResponsableSecteur: null == adressResponsableSecteur ? _self.adressResponsableSecteur : adressResponsableSecteur // ignore: cast_nullable_to_non_nullable
as String,responsableSecteurId: null == responsableSecteurId ? _self.responsableSecteurId : responsableSecteurId // ignore: cast_nullable_to_non_nullable
as String,adresse: null == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String,zoneId: null == zoneId ? _self.zoneId : zoneId // ignore: cast_nullable_to_non_nullable
as String,zoneCode: null == zoneCode ? _self.zoneCode : zoneCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ZoneResponse {

 String? get zoneId; String? get zoneCode; String? get zoneName; String? get dateCreated; String? get zoneResponsableName; String? get contactResponsable; String? get emailResponsablezone; String? get adressResponsablezone; String? get responsablezoneId; String? get adresse; String? get regionId; String? get regionCode;
/// Create a copy of ZoneResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZoneResponseCopyWith<ZoneResponse> get copyWith => _$ZoneResponseCopyWithImpl<ZoneResponse>(this as ZoneResponse, _$identity);

  /// Serializes this ZoneResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZoneResponse&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.zoneCode, zoneCode) || other.zoneCode == zoneCode)&&(identical(other.zoneName, zoneName) || other.zoneName == zoneName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.zoneResponsableName, zoneResponsableName) || other.zoneResponsableName == zoneResponsableName)&&(identical(other.contactResponsable, contactResponsable) || other.contactResponsable == contactResponsable)&&(identical(other.emailResponsablezone, emailResponsablezone) || other.emailResponsablezone == emailResponsablezone)&&(identical(other.adressResponsablezone, adressResponsablezone) || other.adressResponsablezone == adressResponsablezone)&&(identical(other.responsablezoneId, responsablezoneId) || other.responsablezoneId == responsablezoneId)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.regionCode, regionCode) || other.regionCode == regionCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,zoneId,zoneCode,zoneName,dateCreated,zoneResponsableName,contactResponsable,emailResponsablezone,adressResponsablezone,responsablezoneId,adresse,regionId,regionCode);

@override
String toString() {
  return 'ZoneResponse(zoneId: $zoneId, zoneCode: $zoneCode, zoneName: $zoneName, dateCreated: $dateCreated, zoneResponsableName: $zoneResponsableName, contactResponsable: $contactResponsable, emailResponsablezone: $emailResponsablezone, adressResponsablezone: $adressResponsablezone, responsablezoneId: $responsablezoneId, adresse: $adresse, regionId: $regionId, regionCode: $regionCode)';
}


}

/// @nodoc
abstract mixin class $ZoneResponseCopyWith<$Res>  {
  factory $ZoneResponseCopyWith(ZoneResponse value, $Res Function(ZoneResponse) _then) = _$ZoneResponseCopyWithImpl;
@useResult
$Res call({
 String? zoneId, String? zoneCode, String? zoneName, String? dateCreated, String? zoneResponsableName, String? contactResponsable, String? emailResponsablezone, String? adressResponsablezone, String? responsablezoneId, String? adresse, String? regionId, String? regionCode
});




}
/// @nodoc
class _$ZoneResponseCopyWithImpl<$Res>
    implements $ZoneResponseCopyWith<$Res> {
  _$ZoneResponseCopyWithImpl(this._self, this._then);

  final ZoneResponse _self;
  final $Res Function(ZoneResponse) _then;

/// Create a copy of ZoneResponse
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


/// Adds pattern-matching-related methods to [ZoneResponse].
extension ZoneResponsePatterns on ZoneResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZoneResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZoneResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZoneResponse value)  $default,){
final _that = this;
switch (_that) {
case _ZoneResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZoneResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ZoneResponse() when $default != null:
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
case _ZoneResponse() when $default != null:
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
case _ZoneResponse():
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
case _ZoneResponse() when $default != null:
return $default(_that.zoneId,_that.zoneCode,_that.zoneName,_that.dateCreated,_that.zoneResponsableName,_that.contactResponsable,_that.emailResponsablezone,_that.adressResponsablezone,_that.responsablezoneId,_that.adresse,_that.regionId,_that.regionCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZoneResponse implements ZoneResponse {
   _ZoneResponse({required this.zoneId, required this.zoneCode, required this.zoneName, required this.dateCreated, required this.zoneResponsableName, required this.contactResponsable, required this.emailResponsablezone, required this.adressResponsablezone, required this.responsablezoneId, required this.adresse, required this.regionId, required this.regionCode});
  factory _ZoneResponse.fromJson(Map<String, dynamic> json) => _$ZoneResponseFromJson(json);

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

/// Create a copy of ZoneResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZoneResponseCopyWith<_ZoneResponse> get copyWith => __$ZoneResponseCopyWithImpl<_ZoneResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZoneResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZoneResponse&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.zoneCode, zoneCode) || other.zoneCode == zoneCode)&&(identical(other.zoneName, zoneName) || other.zoneName == zoneName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.zoneResponsableName, zoneResponsableName) || other.zoneResponsableName == zoneResponsableName)&&(identical(other.contactResponsable, contactResponsable) || other.contactResponsable == contactResponsable)&&(identical(other.emailResponsablezone, emailResponsablezone) || other.emailResponsablezone == emailResponsablezone)&&(identical(other.adressResponsablezone, adressResponsablezone) || other.adressResponsablezone == adressResponsablezone)&&(identical(other.responsablezoneId, responsablezoneId) || other.responsablezoneId == responsablezoneId)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.regionCode, regionCode) || other.regionCode == regionCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,zoneId,zoneCode,zoneName,dateCreated,zoneResponsableName,contactResponsable,emailResponsablezone,adressResponsablezone,responsablezoneId,adresse,regionId,regionCode);

@override
String toString() {
  return 'ZoneResponse(zoneId: $zoneId, zoneCode: $zoneCode, zoneName: $zoneName, dateCreated: $dateCreated, zoneResponsableName: $zoneResponsableName, contactResponsable: $contactResponsable, emailResponsablezone: $emailResponsablezone, adressResponsablezone: $adressResponsablezone, responsablezoneId: $responsablezoneId, adresse: $adresse, regionId: $regionId, regionCode: $regionCode)';
}


}

/// @nodoc
abstract mixin class _$ZoneResponseCopyWith<$Res> implements $ZoneResponseCopyWith<$Res> {
  factory _$ZoneResponseCopyWith(_ZoneResponse value, $Res Function(_ZoneResponse) _then) = __$ZoneResponseCopyWithImpl;
@override @useResult
$Res call({
 String? zoneId, String? zoneCode, String? zoneName, String? dateCreated, String? zoneResponsableName, String? contactResponsable, String? emailResponsablezone, String? adressResponsablezone, String? responsablezoneId, String? adresse, String? regionId, String? regionCode
});




}
/// @nodoc
class __$ZoneResponseCopyWithImpl<$Res>
    implements _$ZoneResponseCopyWith<$Res> {
  __$ZoneResponseCopyWithImpl(this._self, this._then);

  final _ZoneResponse _self;
  final $Res Function(_ZoneResponse) _then;

/// Create a copy of ZoneResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? zoneId = freezed,Object? zoneCode = freezed,Object? zoneName = freezed,Object? dateCreated = freezed,Object? zoneResponsableName = freezed,Object? contactResponsable = freezed,Object? emailResponsablezone = freezed,Object? adressResponsablezone = freezed,Object? responsablezoneId = freezed,Object? adresse = freezed,Object? regionId = freezed,Object? regionCode = freezed,}) {
  return _then(_ZoneResponse(
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
mixin _$RapportCelluleResponse {

 String get codeZone; String get fullNameRespoZone; String get lieu; String get contactRespoZone; String get codeSecteur; String get responsableCelluleId; String get fullNameRespoSecteur; String get contactRespoSecteur; String get codeCellule; String get fullNameRespoCellule; String get contactRespoCellule; String get jourCellule; String get offrande; String get nombreBaptiser; String get nombreNonBaptiser; List<DiscipleCellule> get discipleCellule; String get id; String get formAdministrationIsSubmit; String get formAdministrationSubmitDate;// required String nombreBaptiser,
 RequestHumaneSectionAssistanceResponse get assistanceNonBaptiser; RequestHumaneSectionAssistanceResponse get assistanceNouveau; RequestHumaneSectionAssistanceResponse get assistanceInviter; RequestAuherResponse get assistanceCellule;// required String id,
 String get formAssistanceIsSubmit; String get formAssistanceSubmitDate; List<RequestSuggestionResponse> get visiteMenbre; List<RequestSuggestionResponse> get visiteOuvrier; List<WeekActivityResponse> get weekActivity; String get dateActivitySubmited; String get formActivityIsSubmit; String get formActivitySubmitDate; String get resumerPredication; List<RequestHumaneSectionActivityResponse> get suggestions; String get faisAssignaler; String get ouvrierSpritualLive; String get formSuggestionIsSubmit; String get formSuggestionSubmitDate; String get tag;
/// Create a copy of RapportCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RapportCelluleResponseCopyWith<RapportCelluleResponse> get copyWith => _$RapportCelluleResponseCopyWithImpl<RapportCelluleResponse>(this as RapportCelluleResponse, _$identity);

  /// Serializes this RapportCelluleResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RapportCelluleResponse&&(identical(other.codeZone, codeZone) || other.codeZone == codeZone)&&(identical(other.fullNameRespoZone, fullNameRespoZone) || other.fullNameRespoZone == fullNameRespoZone)&&(identical(other.lieu, lieu) || other.lieu == lieu)&&(identical(other.contactRespoZone, contactRespoZone) || other.contactRespoZone == contactRespoZone)&&(identical(other.codeSecteur, codeSecteur) || other.codeSecteur == codeSecteur)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId)&&(identical(other.fullNameRespoSecteur, fullNameRespoSecteur) || other.fullNameRespoSecteur == fullNameRespoSecteur)&&(identical(other.contactRespoSecteur, contactRespoSecteur) || other.contactRespoSecteur == contactRespoSecteur)&&(identical(other.codeCellule, codeCellule) || other.codeCellule == codeCellule)&&(identical(other.fullNameRespoCellule, fullNameRespoCellule) || other.fullNameRespoCellule == fullNameRespoCellule)&&(identical(other.contactRespoCellule, contactRespoCellule) || other.contactRespoCellule == contactRespoCellule)&&(identical(other.jourCellule, jourCellule) || other.jourCellule == jourCellule)&&(identical(other.offrande, offrande) || other.offrande == offrande)&&(identical(other.nombreBaptiser, nombreBaptiser) || other.nombreBaptiser == nombreBaptiser)&&(identical(other.nombreNonBaptiser, nombreNonBaptiser) || other.nombreNonBaptiser == nombreNonBaptiser)&&const DeepCollectionEquality().equals(other.discipleCellule, discipleCellule)&&(identical(other.id, id) || other.id == id)&&(identical(other.formAdministrationIsSubmit, formAdministrationIsSubmit) || other.formAdministrationIsSubmit == formAdministrationIsSubmit)&&(identical(other.formAdministrationSubmitDate, formAdministrationSubmitDate) || other.formAdministrationSubmitDate == formAdministrationSubmitDate)&&(identical(other.assistanceNonBaptiser, assistanceNonBaptiser) || other.assistanceNonBaptiser == assistanceNonBaptiser)&&(identical(other.assistanceNouveau, assistanceNouveau) || other.assistanceNouveau == assistanceNouveau)&&(identical(other.assistanceInviter, assistanceInviter) || other.assistanceInviter == assistanceInviter)&&(identical(other.assistanceCellule, assistanceCellule) || other.assistanceCellule == assistanceCellule)&&(identical(other.formAssistanceIsSubmit, formAssistanceIsSubmit) || other.formAssistanceIsSubmit == formAssistanceIsSubmit)&&(identical(other.formAssistanceSubmitDate, formAssistanceSubmitDate) || other.formAssistanceSubmitDate == formAssistanceSubmitDate)&&const DeepCollectionEquality().equals(other.visiteMenbre, visiteMenbre)&&const DeepCollectionEquality().equals(other.visiteOuvrier, visiteOuvrier)&&const DeepCollectionEquality().equals(other.weekActivity, weekActivity)&&(identical(other.dateActivitySubmited, dateActivitySubmited) || other.dateActivitySubmited == dateActivitySubmited)&&(identical(other.formActivityIsSubmit, formActivityIsSubmit) || other.formActivityIsSubmit == formActivityIsSubmit)&&(identical(other.formActivitySubmitDate, formActivitySubmitDate) || other.formActivitySubmitDate == formActivitySubmitDate)&&(identical(other.resumerPredication, resumerPredication) || other.resumerPredication == resumerPredication)&&const DeepCollectionEquality().equals(other.suggestions, suggestions)&&(identical(other.faisAssignaler, faisAssignaler) || other.faisAssignaler == faisAssignaler)&&(identical(other.ouvrierSpritualLive, ouvrierSpritualLive) || other.ouvrierSpritualLive == ouvrierSpritualLive)&&(identical(other.formSuggestionIsSubmit, formSuggestionIsSubmit) || other.formSuggestionIsSubmit == formSuggestionIsSubmit)&&(identical(other.formSuggestionSubmitDate, formSuggestionSubmitDate) || other.formSuggestionSubmitDate == formSuggestionSubmitDate)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,codeZone,fullNameRespoZone,lieu,contactRespoZone,codeSecteur,responsableCelluleId,fullNameRespoSecteur,contactRespoSecteur,codeCellule,fullNameRespoCellule,contactRespoCellule,jourCellule,offrande,nombreBaptiser,nombreNonBaptiser,const DeepCollectionEquality().hash(discipleCellule),id,formAdministrationIsSubmit,formAdministrationSubmitDate,assistanceNonBaptiser,assistanceNouveau,assistanceInviter,assistanceCellule,formAssistanceIsSubmit,formAssistanceSubmitDate,const DeepCollectionEquality().hash(visiteMenbre),const DeepCollectionEquality().hash(visiteOuvrier),const DeepCollectionEquality().hash(weekActivity),dateActivitySubmited,formActivityIsSubmit,formActivitySubmitDate,resumerPredication,const DeepCollectionEquality().hash(suggestions),faisAssignaler,ouvrierSpritualLive,formSuggestionIsSubmit,formSuggestionSubmitDate,tag]);

@override
String toString() {
  return 'RapportCelluleResponse(codeZone: $codeZone, fullNameRespoZone: $fullNameRespoZone, lieu: $lieu, contactRespoZone: $contactRespoZone, codeSecteur: $codeSecteur, responsableCelluleId: $responsableCelluleId, fullNameRespoSecteur: $fullNameRespoSecteur, contactRespoSecteur: $contactRespoSecteur, codeCellule: $codeCellule, fullNameRespoCellule: $fullNameRespoCellule, contactRespoCellule: $contactRespoCellule, jourCellule: $jourCellule, offrande: $offrande, nombreBaptiser: $nombreBaptiser, nombreNonBaptiser: $nombreNonBaptiser, discipleCellule: $discipleCellule, id: $id, formAdministrationIsSubmit: $formAdministrationIsSubmit, formAdministrationSubmitDate: $formAdministrationSubmitDate, assistanceNonBaptiser: $assistanceNonBaptiser, assistanceNouveau: $assistanceNouveau, assistanceInviter: $assistanceInviter, assistanceCellule: $assistanceCellule, formAssistanceIsSubmit: $formAssistanceIsSubmit, formAssistanceSubmitDate: $formAssistanceSubmitDate, visiteMenbre: $visiteMenbre, visiteOuvrier: $visiteOuvrier, weekActivity: $weekActivity, dateActivitySubmited: $dateActivitySubmited, formActivityIsSubmit: $formActivityIsSubmit, formActivitySubmitDate: $formActivitySubmitDate, resumerPredication: $resumerPredication, suggestions: $suggestions, faisAssignaler: $faisAssignaler, ouvrierSpritualLive: $ouvrierSpritualLive, formSuggestionIsSubmit: $formSuggestionIsSubmit, formSuggestionSubmitDate: $formSuggestionSubmitDate, tag: $tag)';
}


}

/// @nodoc
abstract mixin class $RapportCelluleResponseCopyWith<$Res>  {
  factory $RapportCelluleResponseCopyWith(RapportCelluleResponse value, $Res Function(RapportCelluleResponse) _then) = _$RapportCelluleResponseCopyWithImpl;
@useResult
$Res call({
 String codeZone, String fullNameRespoZone, String lieu, String contactRespoZone, String codeSecteur, String responsableCelluleId, String fullNameRespoSecteur, String contactRespoSecteur, String codeCellule, String fullNameRespoCellule, String contactRespoCellule, String jourCellule, String offrande, String nombreBaptiser, String nombreNonBaptiser, List<DiscipleCellule> discipleCellule, String id, String formAdministrationIsSubmit, String formAdministrationSubmitDate, RequestHumaneSectionAssistanceResponse assistanceNonBaptiser, RequestHumaneSectionAssistanceResponse assistanceNouveau, RequestHumaneSectionAssistanceResponse assistanceInviter, RequestAuherResponse assistanceCellule, String formAssistanceIsSubmit, String formAssistanceSubmitDate, List<RequestSuggestionResponse> visiteMenbre, List<RequestSuggestionResponse> visiteOuvrier, List<WeekActivityResponse> weekActivity, String dateActivitySubmited, String formActivityIsSubmit, String formActivitySubmitDate, String resumerPredication, List<RequestHumaneSectionActivityResponse> suggestions, String faisAssignaler, String ouvrierSpritualLive, String formSuggestionIsSubmit, String formSuggestionSubmitDate, String tag
});


$RequestHumaneSectionAssistanceResponseCopyWith<$Res> get assistanceNonBaptiser;$RequestHumaneSectionAssistanceResponseCopyWith<$Res> get assistanceNouveau;$RequestHumaneSectionAssistanceResponseCopyWith<$Res> get assistanceInviter;$RequestAuherResponseCopyWith<$Res> get assistanceCellule;

}
/// @nodoc
class _$RapportCelluleResponseCopyWithImpl<$Res>
    implements $RapportCelluleResponseCopyWith<$Res> {
  _$RapportCelluleResponseCopyWithImpl(this._self, this._then);

  final RapportCelluleResponse _self;
  final $Res Function(RapportCelluleResponse) _then;

/// Create a copy of RapportCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? codeZone = null,Object? fullNameRespoZone = null,Object? lieu = null,Object? contactRespoZone = null,Object? codeSecteur = null,Object? responsableCelluleId = null,Object? fullNameRespoSecteur = null,Object? contactRespoSecteur = null,Object? codeCellule = null,Object? fullNameRespoCellule = null,Object? contactRespoCellule = null,Object? jourCellule = null,Object? offrande = null,Object? nombreBaptiser = null,Object? nombreNonBaptiser = null,Object? discipleCellule = null,Object? id = null,Object? formAdministrationIsSubmit = null,Object? formAdministrationSubmitDate = null,Object? assistanceNonBaptiser = null,Object? assistanceNouveau = null,Object? assistanceInviter = null,Object? assistanceCellule = null,Object? formAssistanceIsSubmit = null,Object? formAssistanceSubmitDate = null,Object? visiteMenbre = null,Object? visiteOuvrier = null,Object? weekActivity = null,Object? dateActivitySubmited = null,Object? formActivityIsSubmit = null,Object? formActivitySubmitDate = null,Object? resumerPredication = null,Object? suggestions = null,Object? faisAssignaler = null,Object? ouvrierSpritualLive = null,Object? formSuggestionIsSubmit = null,Object? formSuggestionSubmitDate = null,Object? tag = null,}) {
  return _then(_self.copyWith(
codeZone: null == codeZone ? _self.codeZone : codeZone // ignore: cast_nullable_to_non_nullable
as String,fullNameRespoZone: null == fullNameRespoZone ? _self.fullNameRespoZone : fullNameRespoZone // ignore: cast_nullable_to_non_nullable
as String,lieu: null == lieu ? _self.lieu : lieu // ignore: cast_nullable_to_non_nullable
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
as List<DiscipleCellule>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,formAdministrationIsSubmit: null == formAdministrationIsSubmit ? _self.formAdministrationIsSubmit : formAdministrationIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formAdministrationSubmitDate: null == formAdministrationSubmitDate ? _self.formAdministrationSubmitDate : formAdministrationSubmitDate // ignore: cast_nullable_to_non_nullable
as String,assistanceNonBaptiser: null == assistanceNonBaptiser ? _self.assistanceNonBaptiser : assistanceNonBaptiser // ignore: cast_nullable_to_non_nullable
as RequestHumaneSectionAssistanceResponse,assistanceNouveau: null == assistanceNouveau ? _self.assistanceNouveau : assistanceNouveau // ignore: cast_nullable_to_non_nullable
as RequestHumaneSectionAssistanceResponse,assistanceInviter: null == assistanceInviter ? _self.assistanceInviter : assistanceInviter // ignore: cast_nullable_to_non_nullable
as RequestHumaneSectionAssistanceResponse,assistanceCellule: null == assistanceCellule ? _self.assistanceCellule : assistanceCellule // ignore: cast_nullable_to_non_nullable
as RequestAuherResponse,formAssistanceIsSubmit: null == formAssistanceIsSubmit ? _self.formAssistanceIsSubmit : formAssistanceIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formAssistanceSubmitDate: null == formAssistanceSubmitDate ? _self.formAssistanceSubmitDate : formAssistanceSubmitDate // ignore: cast_nullable_to_non_nullable
as String,visiteMenbre: null == visiteMenbre ? _self.visiteMenbre : visiteMenbre // ignore: cast_nullable_to_non_nullable
as List<RequestSuggestionResponse>,visiteOuvrier: null == visiteOuvrier ? _self.visiteOuvrier : visiteOuvrier // ignore: cast_nullable_to_non_nullable
as List<RequestSuggestionResponse>,weekActivity: null == weekActivity ? _self.weekActivity : weekActivity // ignore: cast_nullable_to_non_nullable
as List<WeekActivityResponse>,dateActivitySubmited: null == dateActivitySubmited ? _self.dateActivitySubmited : dateActivitySubmited // ignore: cast_nullable_to_non_nullable
as String,formActivityIsSubmit: null == formActivityIsSubmit ? _self.formActivityIsSubmit : formActivityIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formActivitySubmitDate: null == formActivitySubmitDate ? _self.formActivitySubmitDate : formActivitySubmitDate // ignore: cast_nullable_to_non_nullable
as String,resumerPredication: null == resumerPredication ? _self.resumerPredication : resumerPredication // ignore: cast_nullable_to_non_nullable
as String,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<RequestHumaneSectionActivityResponse>,faisAssignaler: null == faisAssignaler ? _self.faisAssignaler : faisAssignaler // ignore: cast_nullable_to_non_nullable
as String,ouvrierSpritualLive: null == ouvrierSpritualLive ? _self.ouvrierSpritualLive : ouvrierSpritualLive // ignore: cast_nullable_to_non_nullable
as String,formSuggestionIsSubmit: null == formSuggestionIsSubmit ? _self.formSuggestionIsSubmit : formSuggestionIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formSuggestionSubmitDate: null == formSuggestionSubmitDate ? _self.formSuggestionSubmitDate : formSuggestionSubmitDate // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of RapportCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestHumaneSectionAssistanceResponseCopyWith<$Res> get assistanceNonBaptiser {
  
  return $RequestHumaneSectionAssistanceResponseCopyWith<$Res>(_self.assistanceNonBaptiser, (value) {
    return _then(_self.copyWith(assistanceNonBaptiser: value));
  });
}/// Create a copy of RapportCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestHumaneSectionAssistanceResponseCopyWith<$Res> get assistanceNouveau {
  
  return $RequestHumaneSectionAssistanceResponseCopyWith<$Res>(_self.assistanceNouveau, (value) {
    return _then(_self.copyWith(assistanceNouveau: value));
  });
}/// Create a copy of RapportCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestHumaneSectionAssistanceResponseCopyWith<$Res> get assistanceInviter {
  
  return $RequestHumaneSectionAssistanceResponseCopyWith<$Res>(_self.assistanceInviter, (value) {
    return _then(_self.copyWith(assistanceInviter: value));
  });
}/// Create a copy of RapportCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestAuherResponseCopyWith<$Res> get assistanceCellule {
  
  return $RequestAuherResponseCopyWith<$Res>(_self.assistanceCellule, (value) {
    return _then(_self.copyWith(assistanceCellule: value));
  });
}
}


/// Adds pattern-matching-related methods to [RapportCelluleResponse].
extension RapportCelluleResponsePatterns on RapportCelluleResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RapportCelluleResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RapportCelluleResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RapportCelluleResponse value)  $default,){
final _that = this;
switch (_that) {
case _RapportCelluleResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RapportCelluleResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RapportCelluleResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String codeZone,  String fullNameRespoZone,  String lieu,  String contactRespoZone,  String codeSecteur,  String responsableCelluleId,  String fullNameRespoSecteur,  String contactRespoSecteur,  String codeCellule,  String fullNameRespoCellule,  String contactRespoCellule,  String jourCellule,  String offrande,  String nombreBaptiser,  String nombreNonBaptiser,  List<DiscipleCellule> discipleCellule,  String id,  String formAdministrationIsSubmit,  String formAdministrationSubmitDate,  RequestHumaneSectionAssistanceResponse assistanceNonBaptiser,  RequestHumaneSectionAssistanceResponse assistanceNouveau,  RequestHumaneSectionAssistanceResponse assistanceInviter,  RequestAuherResponse assistanceCellule,  String formAssistanceIsSubmit,  String formAssistanceSubmitDate,  List<RequestSuggestionResponse> visiteMenbre,  List<RequestSuggestionResponse> visiteOuvrier,  List<WeekActivityResponse> weekActivity,  String dateActivitySubmited,  String formActivityIsSubmit,  String formActivitySubmitDate,  String resumerPredication,  List<RequestHumaneSectionActivityResponse> suggestions,  String faisAssignaler,  String ouvrierSpritualLive,  String formSuggestionIsSubmit,  String formSuggestionSubmitDate,  String tag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RapportCelluleResponse() when $default != null:
return $default(_that.codeZone,_that.fullNameRespoZone,_that.lieu,_that.contactRespoZone,_that.codeSecteur,_that.responsableCelluleId,_that.fullNameRespoSecteur,_that.contactRespoSecteur,_that.codeCellule,_that.fullNameRespoCellule,_that.contactRespoCellule,_that.jourCellule,_that.offrande,_that.nombreBaptiser,_that.nombreNonBaptiser,_that.discipleCellule,_that.id,_that.formAdministrationIsSubmit,_that.formAdministrationSubmitDate,_that.assistanceNonBaptiser,_that.assistanceNouveau,_that.assistanceInviter,_that.assistanceCellule,_that.formAssistanceIsSubmit,_that.formAssistanceSubmitDate,_that.visiteMenbre,_that.visiteOuvrier,_that.weekActivity,_that.dateActivitySubmited,_that.formActivityIsSubmit,_that.formActivitySubmitDate,_that.resumerPredication,_that.suggestions,_that.faisAssignaler,_that.ouvrierSpritualLive,_that.formSuggestionIsSubmit,_that.formSuggestionSubmitDate,_that.tag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String codeZone,  String fullNameRespoZone,  String lieu,  String contactRespoZone,  String codeSecteur,  String responsableCelluleId,  String fullNameRespoSecteur,  String contactRespoSecteur,  String codeCellule,  String fullNameRespoCellule,  String contactRespoCellule,  String jourCellule,  String offrande,  String nombreBaptiser,  String nombreNonBaptiser,  List<DiscipleCellule> discipleCellule,  String id,  String formAdministrationIsSubmit,  String formAdministrationSubmitDate,  RequestHumaneSectionAssistanceResponse assistanceNonBaptiser,  RequestHumaneSectionAssistanceResponse assistanceNouveau,  RequestHumaneSectionAssistanceResponse assistanceInviter,  RequestAuherResponse assistanceCellule,  String formAssistanceIsSubmit,  String formAssistanceSubmitDate,  List<RequestSuggestionResponse> visiteMenbre,  List<RequestSuggestionResponse> visiteOuvrier,  List<WeekActivityResponse> weekActivity,  String dateActivitySubmited,  String formActivityIsSubmit,  String formActivitySubmitDate,  String resumerPredication,  List<RequestHumaneSectionActivityResponse> suggestions,  String faisAssignaler,  String ouvrierSpritualLive,  String formSuggestionIsSubmit,  String formSuggestionSubmitDate,  String tag)  $default,) {final _that = this;
switch (_that) {
case _RapportCelluleResponse():
return $default(_that.codeZone,_that.fullNameRespoZone,_that.lieu,_that.contactRespoZone,_that.codeSecteur,_that.responsableCelluleId,_that.fullNameRespoSecteur,_that.contactRespoSecteur,_that.codeCellule,_that.fullNameRespoCellule,_that.contactRespoCellule,_that.jourCellule,_that.offrande,_that.nombreBaptiser,_that.nombreNonBaptiser,_that.discipleCellule,_that.id,_that.formAdministrationIsSubmit,_that.formAdministrationSubmitDate,_that.assistanceNonBaptiser,_that.assistanceNouveau,_that.assistanceInviter,_that.assistanceCellule,_that.formAssistanceIsSubmit,_that.formAssistanceSubmitDate,_that.visiteMenbre,_that.visiteOuvrier,_that.weekActivity,_that.dateActivitySubmited,_that.formActivityIsSubmit,_that.formActivitySubmitDate,_that.resumerPredication,_that.suggestions,_that.faisAssignaler,_that.ouvrierSpritualLive,_that.formSuggestionIsSubmit,_that.formSuggestionSubmitDate,_that.tag);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String codeZone,  String fullNameRespoZone,  String lieu,  String contactRespoZone,  String codeSecteur,  String responsableCelluleId,  String fullNameRespoSecteur,  String contactRespoSecteur,  String codeCellule,  String fullNameRespoCellule,  String contactRespoCellule,  String jourCellule,  String offrande,  String nombreBaptiser,  String nombreNonBaptiser,  List<DiscipleCellule> discipleCellule,  String id,  String formAdministrationIsSubmit,  String formAdministrationSubmitDate,  RequestHumaneSectionAssistanceResponse assistanceNonBaptiser,  RequestHumaneSectionAssistanceResponse assistanceNouveau,  RequestHumaneSectionAssistanceResponse assistanceInviter,  RequestAuherResponse assistanceCellule,  String formAssistanceIsSubmit,  String formAssistanceSubmitDate,  List<RequestSuggestionResponse> visiteMenbre,  List<RequestSuggestionResponse> visiteOuvrier,  List<WeekActivityResponse> weekActivity,  String dateActivitySubmited,  String formActivityIsSubmit,  String formActivitySubmitDate,  String resumerPredication,  List<RequestHumaneSectionActivityResponse> suggestions,  String faisAssignaler,  String ouvrierSpritualLive,  String formSuggestionIsSubmit,  String formSuggestionSubmitDate,  String tag)?  $default,) {final _that = this;
switch (_that) {
case _RapportCelluleResponse() when $default != null:
return $default(_that.codeZone,_that.fullNameRespoZone,_that.lieu,_that.contactRespoZone,_that.codeSecteur,_that.responsableCelluleId,_that.fullNameRespoSecteur,_that.contactRespoSecteur,_that.codeCellule,_that.fullNameRespoCellule,_that.contactRespoCellule,_that.jourCellule,_that.offrande,_that.nombreBaptiser,_that.nombreNonBaptiser,_that.discipleCellule,_that.id,_that.formAdministrationIsSubmit,_that.formAdministrationSubmitDate,_that.assistanceNonBaptiser,_that.assistanceNouveau,_that.assistanceInviter,_that.assistanceCellule,_that.formAssistanceIsSubmit,_that.formAssistanceSubmitDate,_that.visiteMenbre,_that.visiteOuvrier,_that.weekActivity,_that.dateActivitySubmited,_that.formActivityIsSubmit,_that.formActivitySubmitDate,_that.resumerPredication,_that.suggestions,_that.faisAssignaler,_that.ouvrierSpritualLive,_that.formSuggestionIsSubmit,_that.formSuggestionSubmitDate,_that.tag);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RapportCelluleResponse implements RapportCelluleResponse {
   _RapportCelluleResponse({required this.codeZone, required this.fullNameRespoZone, required this.lieu, required this.contactRespoZone, required this.codeSecteur, required this.responsableCelluleId, required this.fullNameRespoSecteur, required this.contactRespoSecteur, required this.codeCellule, required this.fullNameRespoCellule, required this.contactRespoCellule, required this.jourCellule, required this.offrande, required this.nombreBaptiser, required this.nombreNonBaptiser, required final  List<DiscipleCellule> discipleCellule, required this.id, required this.formAdministrationIsSubmit, required this.formAdministrationSubmitDate, required this.assistanceNonBaptiser, required this.assistanceNouveau, required this.assistanceInviter, required this.assistanceCellule, required this.formAssistanceIsSubmit, required this.formAssistanceSubmitDate, required final  List<RequestSuggestionResponse> visiteMenbre, required final  List<RequestSuggestionResponse> visiteOuvrier, required final  List<WeekActivityResponse> weekActivity, required this.dateActivitySubmited, required this.formActivityIsSubmit, required this.formActivitySubmitDate, required this.resumerPredication, required final  List<RequestHumaneSectionActivityResponse> suggestions, required this.faisAssignaler, required this.ouvrierSpritualLive, required this.formSuggestionIsSubmit, required this.formSuggestionSubmitDate, required this.tag}): _discipleCellule = discipleCellule,_visiteMenbre = visiteMenbre,_visiteOuvrier = visiteOuvrier,_weekActivity = weekActivity,_suggestions = suggestions;
  factory _RapportCelluleResponse.fromJson(Map<String, dynamic> json) => _$RapportCelluleResponseFromJson(json);

@override final  String codeZone;
@override final  String fullNameRespoZone;
@override final  String lieu;
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
 final  List<DiscipleCellule> _discipleCellule;
@override List<DiscipleCellule> get discipleCellule {
  if (_discipleCellule is EqualUnmodifiableListView) return _discipleCellule;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_discipleCellule);
}

@override final  String id;
@override final  String formAdministrationIsSubmit;
@override final  String formAdministrationSubmitDate;
// required String nombreBaptiser,
@override final  RequestHumaneSectionAssistanceResponse assistanceNonBaptiser;
@override final  RequestHumaneSectionAssistanceResponse assistanceNouveau;
@override final  RequestHumaneSectionAssistanceResponse assistanceInviter;
@override final  RequestAuherResponse assistanceCellule;
// required String id,
@override final  String formAssistanceIsSubmit;
@override final  String formAssistanceSubmitDate;
 final  List<RequestSuggestionResponse> _visiteMenbre;
@override List<RequestSuggestionResponse> get visiteMenbre {
  if (_visiteMenbre is EqualUnmodifiableListView) return _visiteMenbre;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visiteMenbre);
}

 final  List<RequestSuggestionResponse> _visiteOuvrier;
@override List<RequestSuggestionResponse> get visiteOuvrier {
  if (_visiteOuvrier is EqualUnmodifiableListView) return _visiteOuvrier;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visiteOuvrier);
}

 final  List<WeekActivityResponse> _weekActivity;
@override List<WeekActivityResponse> get weekActivity {
  if (_weekActivity is EqualUnmodifiableListView) return _weekActivity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weekActivity);
}

@override final  String dateActivitySubmited;
@override final  String formActivityIsSubmit;
@override final  String formActivitySubmitDate;
@override final  String resumerPredication;
 final  List<RequestHumaneSectionActivityResponse> _suggestions;
@override List<RequestHumaneSectionActivityResponse> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

@override final  String faisAssignaler;
@override final  String ouvrierSpritualLive;
@override final  String formSuggestionIsSubmit;
@override final  String formSuggestionSubmitDate;
@override final  String tag;

/// Create a copy of RapportCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RapportCelluleResponseCopyWith<_RapportCelluleResponse> get copyWith => __$RapportCelluleResponseCopyWithImpl<_RapportCelluleResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RapportCelluleResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RapportCelluleResponse&&(identical(other.codeZone, codeZone) || other.codeZone == codeZone)&&(identical(other.fullNameRespoZone, fullNameRespoZone) || other.fullNameRespoZone == fullNameRespoZone)&&(identical(other.lieu, lieu) || other.lieu == lieu)&&(identical(other.contactRespoZone, contactRespoZone) || other.contactRespoZone == contactRespoZone)&&(identical(other.codeSecteur, codeSecteur) || other.codeSecteur == codeSecteur)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId)&&(identical(other.fullNameRespoSecteur, fullNameRespoSecteur) || other.fullNameRespoSecteur == fullNameRespoSecteur)&&(identical(other.contactRespoSecteur, contactRespoSecteur) || other.contactRespoSecteur == contactRespoSecteur)&&(identical(other.codeCellule, codeCellule) || other.codeCellule == codeCellule)&&(identical(other.fullNameRespoCellule, fullNameRespoCellule) || other.fullNameRespoCellule == fullNameRespoCellule)&&(identical(other.contactRespoCellule, contactRespoCellule) || other.contactRespoCellule == contactRespoCellule)&&(identical(other.jourCellule, jourCellule) || other.jourCellule == jourCellule)&&(identical(other.offrande, offrande) || other.offrande == offrande)&&(identical(other.nombreBaptiser, nombreBaptiser) || other.nombreBaptiser == nombreBaptiser)&&(identical(other.nombreNonBaptiser, nombreNonBaptiser) || other.nombreNonBaptiser == nombreNonBaptiser)&&const DeepCollectionEquality().equals(other._discipleCellule, _discipleCellule)&&(identical(other.id, id) || other.id == id)&&(identical(other.formAdministrationIsSubmit, formAdministrationIsSubmit) || other.formAdministrationIsSubmit == formAdministrationIsSubmit)&&(identical(other.formAdministrationSubmitDate, formAdministrationSubmitDate) || other.formAdministrationSubmitDate == formAdministrationSubmitDate)&&(identical(other.assistanceNonBaptiser, assistanceNonBaptiser) || other.assistanceNonBaptiser == assistanceNonBaptiser)&&(identical(other.assistanceNouveau, assistanceNouveau) || other.assistanceNouveau == assistanceNouveau)&&(identical(other.assistanceInviter, assistanceInviter) || other.assistanceInviter == assistanceInviter)&&(identical(other.assistanceCellule, assistanceCellule) || other.assistanceCellule == assistanceCellule)&&(identical(other.formAssistanceIsSubmit, formAssistanceIsSubmit) || other.formAssistanceIsSubmit == formAssistanceIsSubmit)&&(identical(other.formAssistanceSubmitDate, formAssistanceSubmitDate) || other.formAssistanceSubmitDate == formAssistanceSubmitDate)&&const DeepCollectionEquality().equals(other._visiteMenbre, _visiteMenbre)&&const DeepCollectionEquality().equals(other._visiteOuvrier, _visiteOuvrier)&&const DeepCollectionEquality().equals(other._weekActivity, _weekActivity)&&(identical(other.dateActivitySubmited, dateActivitySubmited) || other.dateActivitySubmited == dateActivitySubmited)&&(identical(other.formActivityIsSubmit, formActivityIsSubmit) || other.formActivityIsSubmit == formActivityIsSubmit)&&(identical(other.formActivitySubmitDate, formActivitySubmitDate) || other.formActivitySubmitDate == formActivitySubmitDate)&&(identical(other.resumerPredication, resumerPredication) || other.resumerPredication == resumerPredication)&&const DeepCollectionEquality().equals(other._suggestions, _suggestions)&&(identical(other.faisAssignaler, faisAssignaler) || other.faisAssignaler == faisAssignaler)&&(identical(other.ouvrierSpritualLive, ouvrierSpritualLive) || other.ouvrierSpritualLive == ouvrierSpritualLive)&&(identical(other.formSuggestionIsSubmit, formSuggestionIsSubmit) || other.formSuggestionIsSubmit == formSuggestionIsSubmit)&&(identical(other.formSuggestionSubmitDate, formSuggestionSubmitDate) || other.formSuggestionSubmitDate == formSuggestionSubmitDate)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,codeZone,fullNameRespoZone,lieu,contactRespoZone,codeSecteur,responsableCelluleId,fullNameRespoSecteur,contactRespoSecteur,codeCellule,fullNameRespoCellule,contactRespoCellule,jourCellule,offrande,nombreBaptiser,nombreNonBaptiser,const DeepCollectionEquality().hash(_discipleCellule),id,formAdministrationIsSubmit,formAdministrationSubmitDate,assistanceNonBaptiser,assistanceNouveau,assistanceInviter,assistanceCellule,formAssistanceIsSubmit,formAssistanceSubmitDate,const DeepCollectionEquality().hash(_visiteMenbre),const DeepCollectionEquality().hash(_visiteOuvrier),const DeepCollectionEquality().hash(_weekActivity),dateActivitySubmited,formActivityIsSubmit,formActivitySubmitDate,resumerPredication,const DeepCollectionEquality().hash(_suggestions),faisAssignaler,ouvrierSpritualLive,formSuggestionIsSubmit,formSuggestionSubmitDate,tag]);

@override
String toString() {
  return 'RapportCelluleResponse(codeZone: $codeZone, fullNameRespoZone: $fullNameRespoZone, lieu: $lieu, contactRespoZone: $contactRespoZone, codeSecteur: $codeSecteur, responsableCelluleId: $responsableCelluleId, fullNameRespoSecteur: $fullNameRespoSecteur, contactRespoSecteur: $contactRespoSecteur, codeCellule: $codeCellule, fullNameRespoCellule: $fullNameRespoCellule, contactRespoCellule: $contactRespoCellule, jourCellule: $jourCellule, offrande: $offrande, nombreBaptiser: $nombreBaptiser, nombreNonBaptiser: $nombreNonBaptiser, discipleCellule: $discipleCellule, id: $id, formAdministrationIsSubmit: $formAdministrationIsSubmit, formAdministrationSubmitDate: $formAdministrationSubmitDate, assistanceNonBaptiser: $assistanceNonBaptiser, assistanceNouveau: $assistanceNouveau, assistanceInviter: $assistanceInviter, assistanceCellule: $assistanceCellule, formAssistanceIsSubmit: $formAssistanceIsSubmit, formAssistanceSubmitDate: $formAssistanceSubmitDate, visiteMenbre: $visiteMenbre, visiteOuvrier: $visiteOuvrier, weekActivity: $weekActivity, dateActivitySubmited: $dateActivitySubmited, formActivityIsSubmit: $formActivityIsSubmit, formActivitySubmitDate: $formActivitySubmitDate, resumerPredication: $resumerPredication, suggestions: $suggestions, faisAssignaler: $faisAssignaler, ouvrierSpritualLive: $ouvrierSpritualLive, formSuggestionIsSubmit: $formSuggestionIsSubmit, formSuggestionSubmitDate: $formSuggestionSubmitDate, tag: $tag)';
}


}

/// @nodoc
abstract mixin class _$RapportCelluleResponseCopyWith<$Res> implements $RapportCelluleResponseCopyWith<$Res> {
  factory _$RapportCelluleResponseCopyWith(_RapportCelluleResponse value, $Res Function(_RapportCelluleResponse) _then) = __$RapportCelluleResponseCopyWithImpl;
@override @useResult
$Res call({
 String codeZone, String fullNameRespoZone, String lieu, String contactRespoZone, String codeSecteur, String responsableCelluleId, String fullNameRespoSecteur, String contactRespoSecteur, String codeCellule, String fullNameRespoCellule, String contactRespoCellule, String jourCellule, String offrande, String nombreBaptiser, String nombreNonBaptiser, List<DiscipleCellule> discipleCellule, String id, String formAdministrationIsSubmit, String formAdministrationSubmitDate, RequestHumaneSectionAssistanceResponse assistanceNonBaptiser, RequestHumaneSectionAssistanceResponse assistanceNouveau, RequestHumaneSectionAssistanceResponse assistanceInviter, RequestAuherResponse assistanceCellule, String formAssistanceIsSubmit, String formAssistanceSubmitDate, List<RequestSuggestionResponse> visiteMenbre, List<RequestSuggestionResponse> visiteOuvrier, List<WeekActivityResponse> weekActivity, String dateActivitySubmited, String formActivityIsSubmit, String formActivitySubmitDate, String resumerPredication, List<RequestHumaneSectionActivityResponse> suggestions, String faisAssignaler, String ouvrierSpritualLive, String formSuggestionIsSubmit, String formSuggestionSubmitDate, String tag
});


@override $RequestHumaneSectionAssistanceResponseCopyWith<$Res> get assistanceNonBaptiser;@override $RequestHumaneSectionAssistanceResponseCopyWith<$Res> get assistanceNouveau;@override $RequestHumaneSectionAssistanceResponseCopyWith<$Res> get assistanceInviter;@override $RequestAuherResponseCopyWith<$Res> get assistanceCellule;

}
/// @nodoc
class __$RapportCelluleResponseCopyWithImpl<$Res>
    implements _$RapportCelluleResponseCopyWith<$Res> {
  __$RapportCelluleResponseCopyWithImpl(this._self, this._then);

  final _RapportCelluleResponse _self;
  final $Res Function(_RapportCelluleResponse) _then;

/// Create a copy of RapportCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? codeZone = null,Object? fullNameRespoZone = null,Object? lieu = null,Object? contactRespoZone = null,Object? codeSecteur = null,Object? responsableCelluleId = null,Object? fullNameRespoSecteur = null,Object? contactRespoSecteur = null,Object? codeCellule = null,Object? fullNameRespoCellule = null,Object? contactRespoCellule = null,Object? jourCellule = null,Object? offrande = null,Object? nombreBaptiser = null,Object? nombreNonBaptiser = null,Object? discipleCellule = null,Object? id = null,Object? formAdministrationIsSubmit = null,Object? formAdministrationSubmitDate = null,Object? assistanceNonBaptiser = null,Object? assistanceNouveau = null,Object? assistanceInviter = null,Object? assistanceCellule = null,Object? formAssistanceIsSubmit = null,Object? formAssistanceSubmitDate = null,Object? visiteMenbre = null,Object? visiteOuvrier = null,Object? weekActivity = null,Object? dateActivitySubmited = null,Object? formActivityIsSubmit = null,Object? formActivitySubmitDate = null,Object? resumerPredication = null,Object? suggestions = null,Object? faisAssignaler = null,Object? ouvrierSpritualLive = null,Object? formSuggestionIsSubmit = null,Object? formSuggestionSubmitDate = null,Object? tag = null,}) {
  return _then(_RapportCelluleResponse(
codeZone: null == codeZone ? _self.codeZone : codeZone // ignore: cast_nullable_to_non_nullable
as String,fullNameRespoZone: null == fullNameRespoZone ? _self.fullNameRespoZone : fullNameRespoZone // ignore: cast_nullable_to_non_nullable
as String,lieu: null == lieu ? _self.lieu : lieu // ignore: cast_nullable_to_non_nullable
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
as List<DiscipleCellule>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,formAdministrationIsSubmit: null == formAdministrationIsSubmit ? _self.formAdministrationIsSubmit : formAdministrationIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formAdministrationSubmitDate: null == formAdministrationSubmitDate ? _self.formAdministrationSubmitDate : formAdministrationSubmitDate // ignore: cast_nullable_to_non_nullable
as String,assistanceNonBaptiser: null == assistanceNonBaptiser ? _self.assistanceNonBaptiser : assistanceNonBaptiser // ignore: cast_nullable_to_non_nullable
as RequestHumaneSectionAssistanceResponse,assistanceNouveau: null == assistanceNouveau ? _self.assistanceNouveau : assistanceNouveau // ignore: cast_nullable_to_non_nullable
as RequestHumaneSectionAssistanceResponse,assistanceInviter: null == assistanceInviter ? _self.assistanceInviter : assistanceInviter // ignore: cast_nullable_to_non_nullable
as RequestHumaneSectionAssistanceResponse,assistanceCellule: null == assistanceCellule ? _self.assistanceCellule : assistanceCellule // ignore: cast_nullable_to_non_nullable
as RequestAuherResponse,formAssistanceIsSubmit: null == formAssistanceIsSubmit ? _self.formAssistanceIsSubmit : formAssistanceIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formAssistanceSubmitDate: null == formAssistanceSubmitDate ? _self.formAssistanceSubmitDate : formAssistanceSubmitDate // ignore: cast_nullable_to_non_nullable
as String,visiteMenbre: null == visiteMenbre ? _self._visiteMenbre : visiteMenbre // ignore: cast_nullable_to_non_nullable
as List<RequestSuggestionResponse>,visiteOuvrier: null == visiteOuvrier ? _self._visiteOuvrier : visiteOuvrier // ignore: cast_nullable_to_non_nullable
as List<RequestSuggestionResponse>,weekActivity: null == weekActivity ? _self._weekActivity : weekActivity // ignore: cast_nullable_to_non_nullable
as List<WeekActivityResponse>,dateActivitySubmited: null == dateActivitySubmited ? _self.dateActivitySubmited : dateActivitySubmited // ignore: cast_nullable_to_non_nullable
as String,formActivityIsSubmit: null == formActivityIsSubmit ? _self.formActivityIsSubmit : formActivityIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formActivitySubmitDate: null == formActivitySubmitDate ? _self.formActivitySubmitDate : formActivitySubmitDate // ignore: cast_nullable_to_non_nullable
as String,resumerPredication: null == resumerPredication ? _self.resumerPredication : resumerPredication // ignore: cast_nullable_to_non_nullable
as String,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<RequestHumaneSectionActivityResponse>,faisAssignaler: null == faisAssignaler ? _self.faisAssignaler : faisAssignaler // ignore: cast_nullable_to_non_nullable
as String,ouvrierSpritualLive: null == ouvrierSpritualLive ? _self.ouvrierSpritualLive : ouvrierSpritualLive // ignore: cast_nullable_to_non_nullable
as String,formSuggestionIsSubmit: null == formSuggestionIsSubmit ? _self.formSuggestionIsSubmit : formSuggestionIsSubmit // ignore: cast_nullable_to_non_nullable
as String,formSuggestionSubmitDate: null == formSuggestionSubmitDate ? _self.formSuggestionSubmitDate : formSuggestionSubmitDate // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of RapportCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestHumaneSectionAssistanceResponseCopyWith<$Res> get assistanceNonBaptiser {
  
  return $RequestHumaneSectionAssistanceResponseCopyWith<$Res>(_self.assistanceNonBaptiser, (value) {
    return _then(_self.copyWith(assistanceNonBaptiser: value));
  });
}/// Create a copy of RapportCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestHumaneSectionAssistanceResponseCopyWith<$Res> get assistanceNouveau {
  
  return $RequestHumaneSectionAssistanceResponseCopyWith<$Res>(_self.assistanceNouveau, (value) {
    return _then(_self.copyWith(assistanceNouveau: value));
  });
}/// Create a copy of RapportCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestHumaneSectionAssistanceResponseCopyWith<$Res> get assistanceInviter {
  
  return $RequestHumaneSectionAssistanceResponseCopyWith<$Res>(_self.assistanceInviter, (value) {
    return _then(_self.copyWith(assistanceInviter: value));
  });
}/// Create a copy of RapportCelluleResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestAuherResponseCopyWith<$Res> get assistanceCellule {
  
  return $RequestAuherResponseCopyWith<$Res>(_self.assistanceCellule, (value) {
    return _then(_self.copyWith(assistanceCellule: value));
  });
}
}


/// @nodoc
mixin _$RequestAuherResponse {

 String get libelle; String get formationNewDFB; String get formationNewBaptDFD; String get visiteMenbre; String get visiteDisciple; String get nbTravailleurs; String get nbEleveAndEtudiants; String get nbOuvrierEM; String get nbOuvrierAutreDepatementDirigeantEM; String get nbFormationNiveau2; String get ngAgendaEM; String get nbDecisionnaires; String get id; int get count;
/// Create a copy of RequestAuherResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuherResponseCopyWith<RequestAuherResponse> get copyWith => _$RequestAuherResponseCopyWithImpl<RequestAuherResponse>(this as RequestAuherResponse, _$identity);

  /// Serializes this RequestAuherResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuherResponse&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.formationNewDFB, formationNewDFB) || other.formationNewDFB == formationNewDFB)&&(identical(other.formationNewBaptDFD, formationNewBaptDFD) || other.formationNewBaptDFD == formationNewBaptDFD)&&(identical(other.visiteMenbre, visiteMenbre) || other.visiteMenbre == visiteMenbre)&&(identical(other.visiteDisciple, visiteDisciple) || other.visiteDisciple == visiteDisciple)&&(identical(other.nbTravailleurs, nbTravailleurs) || other.nbTravailleurs == nbTravailleurs)&&(identical(other.nbEleveAndEtudiants, nbEleveAndEtudiants) || other.nbEleveAndEtudiants == nbEleveAndEtudiants)&&(identical(other.nbOuvrierEM, nbOuvrierEM) || other.nbOuvrierEM == nbOuvrierEM)&&(identical(other.nbOuvrierAutreDepatementDirigeantEM, nbOuvrierAutreDepatementDirigeantEM) || other.nbOuvrierAutreDepatementDirigeantEM == nbOuvrierAutreDepatementDirigeantEM)&&(identical(other.nbFormationNiveau2, nbFormationNiveau2) || other.nbFormationNiveau2 == nbFormationNiveau2)&&(identical(other.ngAgendaEM, ngAgendaEM) || other.ngAgendaEM == ngAgendaEM)&&(identical(other.nbDecisionnaires, nbDecisionnaires) || other.nbDecisionnaires == nbDecisionnaires)&&(identical(other.id, id) || other.id == id)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,libelle,formationNewDFB,formationNewBaptDFD,visiteMenbre,visiteDisciple,nbTravailleurs,nbEleveAndEtudiants,nbOuvrierEM,nbOuvrierAutreDepatementDirigeantEM,nbFormationNiveau2,ngAgendaEM,nbDecisionnaires,id,count);

@override
String toString() {
  return 'RequestAuherResponse(libelle: $libelle, formationNewDFB: $formationNewDFB, formationNewBaptDFD: $formationNewBaptDFD, visiteMenbre: $visiteMenbre, visiteDisciple: $visiteDisciple, nbTravailleurs: $nbTravailleurs, nbEleveAndEtudiants: $nbEleveAndEtudiants, nbOuvrierEM: $nbOuvrierEM, nbOuvrierAutreDepatementDirigeantEM: $nbOuvrierAutreDepatementDirigeantEM, nbFormationNiveau2: $nbFormationNiveau2, ngAgendaEM: $ngAgendaEM, nbDecisionnaires: $nbDecisionnaires, id: $id, count: $count)';
}


}

/// @nodoc
abstract mixin class $RequestAuherResponseCopyWith<$Res>  {
  factory $RequestAuherResponseCopyWith(RequestAuherResponse value, $Res Function(RequestAuherResponse) _then) = _$RequestAuherResponseCopyWithImpl;
@useResult
$Res call({
 String libelle, String formationNewDFB, String formationNewBaptDFD, String visiteMenbre, String visiteDisciple, String nbTravailleurs, String nbEleveAndEtudiants, String nbOuvrierEM, String nbOuvrierAutreDepatementDirigeantEM, String nbFormationNiveau2, String ngAgendaEM, String nbDecisionnaires, String id, int count
});




}
/// @nodoc
class _$RequestAuherResponseCopyWithImpl<$Res>
    implements $RequestAuherResponseCopyWith<$Res> {
  _$RequestAuherResponseCopyWithImpl(this._self, this._then);

  final RequestAuherResponse _self;
  final $Res Function(RequestAuherResponse) _then;

/// Create a copy of RequestAuherResponse
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


/// Adds pattern-matching-related methods to [RequestAuherResponse].
extension RequestAuherResponsePatterns on RequestAuherResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestAuherResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestAuherResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestAuherResponse value)  $default,){
final _that = this;
switch (_that) {
case _RequestAuherResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestAuherResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RequestAuherResponse() when $default != null:
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
case _RequestAuherResponse() when $default != null:
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
case _RequestAuherResponse():
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
case _RequestAuherResponse() when $default != null:
return $default(_that.libelle,_that.formationNewDFB,_that.formationNewBaptDFD,_that.visiteMenbre,_that.visiteDisciple,_that.nbTravailleurs,_that.nbEleveAndEtudiants,_that.nbOuvrierEM,_that.nbOuvrierAutreDepatementDirigeantEM,_that.nbFormationNiveau2,_that.ngAgendaEM,_that.nbDecisionnaires,_that.id,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestAuherResponse implements RequestAuherResponse {
   _RequestAuherResponse({required this.libelle, required this.formationNewDFB, required this.formationNewBaptDFD, required this.visiteMenbre, required this.visiteDisciple, required this.nbTravailleurs, required this.nbEleveAndEtudiants, required this.nbOuvrierEM, required this.nbOuvrierAutreDepatementDirigeantEM, required this.nbFormationNiveau2, required this.ngAgendaEM, required this.nbDecisionnaires, required this.id, required this.count});
  factory _RequestAuherResponse.fromJson(Map<String, dynamic> json) => _$RequestAuherResponseFromJson(json);

@override final  String libelle;
@override final  String formationNewDFB;
@override final  String formationNewBaptDFD;
@override final  String visiteMenbre;
@override final  String visiteDisciple;
@override final  String nbTravailleurs;
@override final  String nbEleveAndEtudiants;
@override final  String nbOuvrierEM;
@override final  String nbOuvrierAutreDepatementDirigeantEM;
@override final  String nbFormationNiveau2;
@override final  String ngAgendaEM;
@override final  String nbDecisionnaires;
@override final  String id;
@override final  int count;

/// Create a copy of RequestAuherResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestAuherResponseCopyWith<_RequestAuherResponse> get copyWith => __$RequestAuherResponseCopyWithImpl<_RequestAuherResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestAuherResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestAuherResponse&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.formationNewDFB, formationNewDFB) || other.formationNewDFB == formationNewDFB)&&(identical(other.formationNewBaptDFD, formationNewBaptDFD) || other.formationNewBaptDFD == formationNewBaptDFD)&&(identical(other.visiteMenbre, visiteMenbre) || other.visiteMenbre == visiteMenbre)&&(identical(other.visiteDisciple, visiteDisciple) || other.visiteDisciple == visiteDisciple)&&(identical(other.nbTravailleurs, nbTravailleurs) || other.nbTravailleurs == nbTravailleurs)&&(identical(other.nbEleveAndEtudiants, nbEleveAndEtudiants) || other.nbEleveAndEtudiants == nbEleveAndEtudiants)&&(identical(other.nbOuvrierEM, nbOuvrierEM) || other.nbOuvrierEM == nbOuvrierEM)&&(identical(other.nbOuvrierAutreDepatementDirigeantEM, nbOuvrierAutreDepatementDirigeantEM) || other.nbOuvrierAutreDepatementDirigeantEM == nbOuvrierAutreDepatementDirigeantEM)&&(identical(other.nbFormationNiveau2, nbFormationNiveau2) || other.nbFormationNiveau2 == nbFormationNiveau2)&&(identical(other.ngAgendaEM, ngAgendaEM) || other.ngAgendaEM == ngAgendaEM)&&(identical(other.nbDecisionnaires, nbDecisionnaires) || other.nbDecisionnaires == nbDecisionnaires)&&(identical(other.id, id) || other.id == id)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,libelle,formationNewDFB,formationNewBaptDFD,visiteMenbre,visiteDisciple,nbTravailleurs,nbEleveAndEtudiants,nbOuvrierEM,nbOuvrierAutreDepatementDirigeantEM,nbFormationNiveau2,ngAgendaEM,nbDecisionnaires,id,count);

@override
String toString() {
  return 'RequestAuherResponse(libelle: $libelle, formationNewDFB: $formationNewDFB, formationNewBaptDFD: $formationNewBaptDFD, visiteMenbre: $visiteMenbre, visiteDisciple: $visiteDisciple, nbTravailleurs: $nbTravailleurs, nbEleveAndEtudiants: $nbEleveAndEtudiants, nbOuvrierEM: $nbOuvrierEM, nbOuvrierAutreDepatementDirigeantEM: $nbOuvrierAutreDepatementDirigeantEM, nbFormationNiveau2: $nbFormationNiveau2, ngAgendaEM: $ngAgendaEM, nbDecisionnaires: $nbDecisionnaires, id: $id, count: $count)';
}


}

/// @nodoc
abstract mixin class _$RequestAuherResponseCopyWith<$Res> implements $RequestAuherResponseCopyWith<$Res> {
  factory _$RequestAuherResponseCopyWith(_RequestAuherResponse value, $Res Function(_RequestAuherResponse) _then) = __$RequestAuherResponseCopyWithImpl;
@override @useResult
$Res call({
 String libelle, String formationNewDFB, String formationNewBaptDFD, String visiteMenbre, String visiteDisciple, String nbTravailleurs, String nbEleveAndEtudiants, String nbOuvrierEM, String nbOuvrierAutreDepatementDirigeantEM, String nbFormationNiveau2, String ngAgendaEM, String nbDecisionnaires, String id, int count
});




}
/// @nodoc
class __$RequestAuherResponseCopyWithImpl<$Res>
    implements _$RequestAuherResponseCopyWith<$Res> {
  __$RequestAuherResponseCopyWithImpl(this._self, this._then);

  final _RequestAuherResponse _self;
  final $Res Function(_RequestAuherResponse) _then;

/// Create a copy of RequestAuherResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? libelle = null,Object? formationNewDFB = null,Object? formationNewBaptDFD = null,Object? visiteMenbre = null,Object? visiteDisciple = null,Object? nbTravailleurs = null,Object? nbEleveAndEtudiants = null,Object? nbOuvrierEM = null,Object? nbOuvrierAutreDepatementDirigeantEM = null,Object? nbFormationNiveau2 = null,Object? ngAgendaEM = null,Object? nbDecisionnaires = null,Object? id = null,Object? count = null,}) {
  return _then(_RequestAuherResponse(
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
mixin _$RequestHumaneSectionAssistanceResponse {

 String get libelle; String get toutPetit; String get juniors; String get cadets; int get total;
/// Create a copy of RequestHumaneSectionAssistanceResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestHumaneSectionAssistanceResponseCopyWith<RequestHumaneSectionAssistanceResponse> get copyWith => _$RequestHumaneSectionAssistanceResponseCopyWithImpl<RequestHumaneSectionAssistanceResponse>(this as RequestHumaneSectionAssistanceResponse, _$identity);

  /// Serializes this RequestHumaneSectionAssistanceResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestHumaneSectionAssistanceResponse&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.toutPetit, toutPetit) || other.toutPetit == toutPetit)&&(identical(other.juniors, juniors) || other.juniors == juniors)&&(identical(other.cadets, cadets) || other.cadets == cadets)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,libelle,toutPetit,juniors,cadets,total);

@override
String toString() {
  return 'RequestHumaneSectionAssistanceResponse(libelle: $libelle, toutPetit: $toutPetit, juniors: $juniors, cadets: $cadets, total: $total)';
}


}

/// @nodoc
abstract mixin class $RequestHumaneSectionAssistanceResponseCopyWith<$Res>  {
  factory $RequestHumaneSectionAssistanceResponseCopyWith(RequestHumaneSectionAssistanceResponse value, $Res Function(RequestHumaneSectionAssistanceResponse) _then) = _$RequestHumaneSectionAssistanceResponseCopyWithImpl;
@useResult
$Res call({
 String libelle, String toutPetit, String juniors, String cadets, int total
});




}
/// @nodoc
class _$RequestHumaneSectionAssistanceResponseCopyWithImpl<$Res>
    implements $RequestHumaneSectionAssistanceResponseCopyWith<$Res> {
  _$RequestHumaneSectionAssistanceResponseCopyWithImpl(this._self, this._then);

  final RequestHumaneSectionAssistanceResponse _self;
  final $Res Function(RequestHumaneSectionAssistanceResponse) _then;

/// Create a copy of RequestHumaneSectionAssistanceResponse
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


/// Adds pattern-matching-related methods to [RequestHumaneSectionAssistanceResponse].
extension RequestHumaneSectionAssistanceResponsePatterns on RequestHumaneSectionAssistanceResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestHumaneSectionAssistanceResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestHumaneSectionAssistanceResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestHumaneSectionAssistanceResponse value)  $default,){
final _that = this;
switch (_that) {
case _RequestHumaneSectionAssistanceResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestHumaneSectionAssistanceResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RequestHumaneSectionAssistanceResponse() when $default != null:
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
case _RequestHumaneSectionAssistanceResponse() when $default != null:
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
case _RequestHumaneSectionAssistanceResponse():
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
case _RequestHumaneSectionAssistanceResponse() when $default != null:
return $default(_that.libelle,_that.toutPetit,_that.juniors,_that.cadets,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestHumaneSectionAssistanceResponse implements RequestHumaneSectionAssistanceResponse {
   _RequestHumaneSectionAssistanceResponse({required this.libelle, required this.toutPetit, required this.juniors, required this.cadets, required this.total});
  factory _RequestHumaneSectionAssistanceResponse.fromJson(Map<String, dynamic> json) => _$RequestHumaneSectionAssistanceResponseFromJson(json);

@override final  String libelle;
@override final  String toutPetit;
@override final  String juniors;
@override final  String cadets;
@override final  int total;

/// Create a copy of RequestHumaneSectionAssistanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestHumaneSectionAssistanceResponseCopyWith<_RequestHumaneSectionAssistanceResponse> get copyWith => __$RequestHumaneSectionAssistanceResponseCopyWithImpl<_RequestHumaneSectionAssistanceResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestHumaneSectionAssistanceResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestHumaneSectionAssistanceResponse&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.toutPetit, toutPetit) || other.toutPetit == toutPetit)&&(identical(other.juniors, juniors) || other.juniors == juniors)&&(identical(other.cadets, cadets) || other.cadets == cadets)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,libelle,toutPetit,juniors,cadets,total);

@override
String toString() {
  return 'RequestHumaneSectionAssistanceResponse(libelle: $libelle, toutPetit: $toutPetit, juniors: $juniors, cadets: $cadets, total: $total)';
}


}

/// @nodoc
abstract mixin class _$RequestHumaneSectionAssistanceResponseCopyWith<$Res> implements $RequestHumaneSectionAssistanceResponseCopyWith<$Res> {
  factory _$RequestHumaneSectionAssistanceResponseCopyWith(_RequestHumaneSectionAssistanceResponse value, $Res Function(_RequestHumaneSectionAssistanceResponse) _then) = __$RequestHumaneSectionAssistanceResponseCopyWithImpl;
@override @useResult
$Res call({
 String libelle, String toutPetit, String juniors, String cadets, int total
});




}
/// @nodoc
class __$RequestHumaneSectionAssistanceResponseCopyWithImpl<$Res>
    implements _$RequestHumaneSectionAssistanceResponseCopyWith<$Res> {
  __$RequestHumaneSectionAssistanceResponseCopyWithImpl(this._self, this._then);

  final _RequestHumaneSectionAssistanceResponse _self;
  final $Res Function(_RequestHumaneSectionAssistanceResponse) _then;

/// Create a copy of RequestHumaneSectionAssistanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? libelle = null,Object? toutPetit = null,Object? juniors = null,Object? cadets = null,Object? total = null,}) {
  return _then(_RequestHumaneSectionAssistanceResponse(
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
mixin _$RequestHumaneSectionActivityResponse {

 String get suggestions; String get probleme; String get temoignage;
/// Create a copy of RequestHumaneSectionActivityResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestHumaneSectionActivityResponseCopyWith<RequestHumaneSectionActivityResponse> get copyWith => _$RequestHumaneSectionActivityResponseCopyWithImpl<RequestHumaneSectionActivityResponse>(this as RequestHumaneSectionActivityResponse, _$identity);

  /// Serializes this RequestHumaneSectionActivityResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestHumaneSectionActivityResponse&&(identical(other.suggestions, suggestions) || other.suggestions == suggestions)&&(identical(other.probleme, probleme) || other.probleme == probleme)&&(identical(other.temoignage, temoignage) || other.temoignage == temoignage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,suggestions,probleme,temoignage);

@override
String toString() {
  return 'RequestHumaneSectionActivityResponse(suggestions: $suggestions, probleme: $probleme, temoignage: $temoignage)';
}


}

/// @nodoc
abstract mixin class $RequestHumaneSectionActivityResponseCopyWith<$Res>  {
  factory $RequestHumaneSectionActivityResponseCopyWith(RequestHumaneSectionActivityResponse value, $Res Function(RequestHumaneSectionActivityResponse) _then) = _$RequestHumaneSectionActivityResponseCopyWithImpl;
@useResult
$Res call({
 String suggestions, String probleme, String temoignage
});




}
/// @nodoc
class _$RequestHumaneSectionActivityResponseCopyWithImpl<$Res>
    implements $RequestHumaneSectionActivityResponseCopyWith<$Res> {
  _$RequestHumaneSectionActivityResponseCopyWithImpl(this._self, this._then);

  final RequestHumaneSectionActivityResponse _self;
  final $Res Function(RequestHumaneSectionActivityResponse) _then;

/// Create a copy of RequestHumaneSectionActivityResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestions = null,Object? probleme = null,Object? temoignage = null,}) {
  return _then(_self.copyWith(
suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as String,probleme: null == probleme ? _self.probleme : probleme // ignore: cast_nullable_to_non_nullable
as String,temoignage: null == temoignage ? _self.temoignage : temoignage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestHumaneSectionActivityResponse].
extension RequestHumaneSectionActivityResponsePatterns on RequestHumaneSectionActivityResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestHumaneSectionActivityResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestHumaneSectionActivityResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestHumaneSectionActivityResponse value)  $default,){
final _that = this;
switch (_that) {
case _RequestHumaneSectionActivityResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestHumaneSectionActivityResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RequestHumaneSectionActivityResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String suggestions,  String probleme,  String temoignage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestHumaneSectionActivityResponse() when $default != null:
return $default(_that.suggestions,_that.probleme,_that.temoignage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String suggestions,  String probleme,  String temoignage)  $default,) {final _that = this;
switch (_that) {
case _RequestHumaneSectionActivityResponse():
return $default(_that.suggestions,_that.probleme,_that.temoignage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String suggestions,  String probleme,  String temoignage)?  $default,) {final _that = this;
switch (_that) {
case _RequestHumaneSectionActivityResponse() when $default != null:
return $default(_that.suggestions,_that.probleme,_that.temoignage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestHumaneSectionActivityResponse implements RequestHumaneSectionActivityResponse {
   _RequestHumaneSectionActivityResponse({required this.suggestions, required this.probleme, required this.temoignage});
  factory _RequestHumaneSectionActivityResponse.fromJson(Map<String, dynamic> json) => _$RequestHumaneSectionActivityResponseFromJson(json);

@override final  String suggestions;
@override final  String probleme;
@override final  String temoignage;

/// Create a copy of RequestHumaneSectionActivityResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestHumaneSectionActivityResponseCopyWith<_RequestHumaneSectionActivityResponse> get copyWith => __$RequestHumaneSectionActivityResponseCopyWithImpl<_RequestHumaneSectionActivityResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestHumaneSectionActivityResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestHumaneSectionActivityResponse&&(identical(other.suggestions, suggestions) || other.suggestions == suggestions)&&(identical(other.probleme, probleme) || other.probleme == probleme)&&(identical(other.temoignage, temoignage) || other.temoignage == temoignage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,suggestions,probleme,temoignage);

@override
String toString() {
  return 'RequestHumaneSectionActivityResponse(suggestions: $suggestions, probleme: $probleme, temoignage: $temoignage)';
}


}

/// @nodoc
abstract mixin class _$RequestHumaneSectionActivityResponseCopyWith<$Res> implements $RequestHumaneSectionActivityResponseCopyWith<$Res> {
  factory _$RequestHumaneSectionActivityResponseCopyWith(_RequestHumaneSectionActivityResponse value, $Res Function(_RequestHumaneSectionActivityResponse) _then) = __$RequestHumaneSectionActivityResponseCopyWithImpl;
@override @useResult
$Res call({
 String suggestions, String probleme, String temoignage
});




}
/// @nodoc
class __$RequestHumaneSectionActivityResponseCopyWithImpl<$Res>
    implements _$RequestHumaneSectionActivityResponseCopyWith<$Res> {
  __$RequestHumaneSectionActivityResponseCopyWithImpl(this._self, this._then);

  final _RequestHumaneSectionActivityResponse _self;
  final $Res Function(_RequestHumaneSectionActivityResponse) _then;

/// Create a copy of RequestHumaneSectionActivityResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? suggestions = null,Object? probleme = null,Object? temoignage = null,}) {
  return _then(_RequestHumaneSectionActivityResponse(
suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as String,probleme: null == probleme ? _self.probleme : probleme // ignore: cast_nullable_to_non_nullable
as String,temoignage: null == temoignage ? _self.temoignage : temoignage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RequestSuggestionResponse {

 String get fullname; String get recommandation; bool get isDisciple; String get probleme;
/// Create a copy of RequestSuggestionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestSuggestionResponseCopyWith<RequestSuggestionResponse> get copyWith => _$RequestSuggestionResponseCopyWithImpl<RequestSuggestionResponse>(this as RequestSuggestionResponse, _$identity);

  /// Serializes this RequestSuggestionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestSuggestionResponse&&(identical(other.fullname, fullname) || other.fullname == fullname)&&(identical(other.recommandation, recommandation) || other.recommandation == recommandation)&&(identical(other.isDisciple, isDisciple) || other.isDisciple == isDisciple)&&(identical(other.probleme, probleme) || other.probleme == probleme));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullname,recommandation,isDisciple,probleme);

@override
String toString() {
  return 'RequestSuggestionResponse(fullname: $fullname, recommandation: $recommandation, isDisciple: $isDisciple, probleme: $probleme)';
}


}

/// @nodoc
abstract mixin class $RequestSuggestionResponseCopyWith<$Res>  {
  factory $RequestSuggestionResponseCopyWith(RequestSuggestionResponse value, $Res Function(RequestSuggestionResponse) _then) = _$RequestSuggestionResponseCopyWithImpl;
@useResult
$Res call({
 String fullname, String recommandation, bool isDisciple, String probleme
});




}
/// @nodoc
class _$RequestSuggestionResponseCopyWithImpl<$Res>
    implements $RequestSuggestionResponseCopyWith<$Res> {
  _$RequestSuggestionResponseCopyWithImpl(this._self, this._then);

  final RequestSuggestionResponse _self;
  final $Res Function(RequestSuggestionResponse) _then;

/// Create a copy of RequestSuggestionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullname = null,Object? recommandation = null,Object? isDisciple = null,Object? probleme = null,}) {
  return _then(_self.copyWith(
fullname: null == fullname ? _self.fullname : fullname // ignore: cast_nullable_to_non_nullable
as String,recommandation: null == recommandation ? _self.recommandation : recommandation // ignore: cast_nullable_to_non_nullable
as String,isDisciple: null == isDisciple ? _self.isDisciple : isDisciple // ignore: cast_nullable_to_non_nullable
as bool,probleme: null == probleme ? _self.probleme : probleme // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestSuggestionResponse].
extension RequestSuggestionResponsePatterns on RequestSuggestionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestSuggestionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestSuggestionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestSuggestionResponse value)  $default,){
final _that = this;
switch (_that) {
case _RequestSuggestionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestSuggestionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RequestSuggestionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fullname,  String recommandation,  bool isDisciple,  String probleme)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestSuggestionResponse() when $default != null:
return $default(_that.fullname,_that.recommandation,_that.isDisciple,_that.probleme);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fullname,  String recommandation,  bool isDisciple,  String probleme)  $default,) {final _that = this;
switch (_that) {
case _RequestSuggestionResponse():
return $default(_that.fullname,_that.recommandation,_that.isDisciple,_that.probleme);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fullname,  String recommandation,  bool isDisciple,  String probleme)?  $default,) {final _that = this;
switch (_that) {
case _RequestSuggestionResponse() when $default != null:
return $default(_that.fullname,_that.recommandation,_that.isDisciple,_that.probleme);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestSuggestionResponse implements RequestSuggestionResponse {
   _RequestSuggestionResponse({required this.fullname, required this.recommandation, required this.isDisciple, required this.probleme});
  factory _RequestSuggestionResponse.fromJson(Map<String, dynamic> json) => _$RequestSuggestionResponseFromJson(json);

@override final  String fullname;
@override final  String recommandation;
@override final  bool isDisciple;
@override final  String probleme;

/// Create a copy of RequestSuggestionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestSuggestionResponseCopyWith<_RequestSuggestionResponse> get copyWith => __$RequestSuggestionResponseCopyWithImpl<_RequestSuggestionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestSuggestionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestSuggestionResponse&&(identical(other.fullname, fullname) || other.fullname == fullname)&&(identical(other.recommandation, recommandation) || other.recommandation == recommandation)&&(identical(other.isDisciple, isDisciple) || other.isDisciple == isDisciple)&&(identical(other.probleme, probleme) || other.probleme == probleme));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullname,recommandation,isDisciple,probleme);

@override
String toString() {
  return 'RequestSuggestionResponse(fullname: $fullname, recommandation: $recommandation, isDisciple: $isDisciple, probleme: $probleme)';
}


}

/// @nodoc
abstract mixin class _$RequestSuggestionResponseCopyWith<$Res> implements $RequestSuggestionResponseCopyWith<$Res> {
  factory _$RequestSuggestionResponseCopyWith(_RequestSuggestionResponse value, $Res Function(_RequestSuggestionResponse) _then) = __$RequestSuggestionResponseCopyWithImpl;
@override @useResult
$Res call({
 String fullname, String recommandation, bool isDisciple, String probleme
});




}
/// @nodoc
class __$RequestSuggestionResponseCopyWithImpl<$Res>
    implements _$RequestSuggestionResponseCopyWith<$Res> {
  __$RequestSuggestionResponseCopyWithImpl(this._self, this._then);

  final _RequestSuggestionResponse _self;
  final $Res Function(_RequestSuggestionResponse) _then;

/// Create a copy of RequestSuggestionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullname = null,Object? recommandation = null,Object? isDisciple = null,Object? probleme = null,}) {
  return _then(_RequestSuggestionResponse(
fullname: null == fullname ? _self.fullname : fullname // ignore: cast_nullable_to_non_nullable
as String,recommandation: null == recommandation ? _self.recommandation : recommandation // ignore: cast_nullable_to_non_nullable
as String,isDisciple: null == isDisciple ? _self.isDisciple : isDisciple // ignore: cast_nullable_to_non_nullable
as bool,probleme: null == probleme ? _self.probleme : probleme // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$WeekActivityResponse {

 String get theme; String get orateur; String get lieu; String get date; String get programmeNature;
/// Create a copy of WeekActivityResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeekActivityResponseCopyWith<WeekActivityResponse> get copyWith => _$WeekActivityResponseCopyWithImpl<WeekActivityResponse>(this as WeekActivityResponse, _$identity);

  /// Serializes this WeekActivityResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeekActivityResponse&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.orateur, orateur) || other.orateur == orateur)&&(identical(other.lieu, lieu) || other.lieu == lieu)&&(identical(other.date, date) || other.date == date)&&(identical(other.programmeNature, programmeNature) || other.programmeNature == programmeNature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,theme,orateur,lieu,date,programmeNature);

@override
String toString() {
  return 'WeekActivityResponse(theme: $theme, orateur: $orateur, lieu: $lieu, date: $date, programmeNature: $programmeNature)';
}


}

/// @nodoc
abstract mixin class $WeekActivityResponseCopyWith<$Res>  {
  factory $WeekActivityResponseCopyWith(WeekActivityResponse value, $Res Function(WeekActivityResponse) _then) = _$WeekActivityResponseCopyWithImpl;
@useResult
$Res call({
 String theme, String orateur, String lieu, String date, String programmeNature
});




}
/// @nodoc
class _$WeekActivityResponseCopyWithImpl<$Res>
    implements $WeekActivityResponseCopyWith<$Res> {
  _$WeekActivityResponseCopyWithImpl(this._self, this._then);

  final WeekActivityResponse _self;
  final $Res Function(WeekActivityResponse) _then;

/// Create a copy of WeekActivityResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? theme = null,Object? orateur = null,Object? lieu = null,Object? date = null,Object? programmeNature = null,}) {
  return _then(_self.copyWith(
theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as String,orateur: null == orateur ? _self.orateur : orateur // ignore: cast_nullable_to_non_nullable
as String,lieu: null == lieu ? _self.lieu : lieu // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,programmeNature: null == programmeNature ? _self.programmeNature : programmeNature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WeekActivityResponse].
extension WeekActivityResponsePatterns on WeekActivityResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeekActivityResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeekActivityResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeekActivityResponse value)  $default,){
final _that = this;
switch (_that) {
case _WeekActivityResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeekActivityResponse value)?  $default,){
final _that = this;
switch (_that) {
case _WeekActivityResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String theme,  String orateur,  String lieu,  String date,  String programmeNature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeekActivityResponse() when $default != null:
return $default(_that.theme,_that.orateur,_that.lieu,_that.date,_that.programmeNature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String theme,  String orateur,  String lieu,  String date,  String programmeNature)  $default,) {final _that = this;
switch (_that) {
case _WeekActivityResponse():
return $default(_that.theme,_that.orateur,_that.lieu,_that.date,_that.programmeNature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String theme,  String orateur,  String lieu,  String date,  String programmeNature)?  $default,) {final _that = this;
switch (_that) {
case _WeekActivityResponse() when $default != null:
return $default(_that.theme,_that.orateur,_that.lieu,_that.date,_that.programmeNature);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeekActivityResponse implements WeekActivityResponse {
   _WeekActivityResponse({required this.theme, required this.orateur, required this.lieu, required this.date, required this.programmeNature});
  factory _WeekActivityResponse.fromJson(Map<String, dynamic> json) => _$WeekActivityResponseFromJson(json);

@override final  String theme;
@override final  String orateur;
@override final  String lieu;
@override final  String date;
@override final  String programmeNature;

/// Create a copy of WeekActivityResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeekActivityResponseCopyWith<_WeekActivityResponse> get copyWith => __$WeekActivityResponseCopyWithImpl<_WeekActivityResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeekActivityResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeekActivityResponse&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.orateur, orateur) || other.orateur == orateur)&&(identical(other.lieu, lieu) || other.lieu == lieu)&&(identical(other.date, date) || other.date == date)&&(identical(other.programmeNature, programmeNature) || other.programmeNature == programmeNature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,theme,orateur,lieu,date,programmeNature);

@override
String toString() {
  return 'WeekActivityResponse(theme: $theme, orateur: $orateur, lieu: $lieu, date: $date, programmeNature: $programmeNature)';
}


}

/// @nodoc
abstract mixin class _$WeekActivityResponseCopyWith<$Res> implements $WeekActivityResponseCopyWith<$Res> {
  factory _$WeekActivityResponseCopyWith(_WeekActivityResponse value, $Res Function(_WeekActivityResponse) _then) = __$WeekActivityResponseCopyWithImpl;
@override @useResult
$Res call({
 String theme, String orateur, String lieu, String date, String programmeNature
});




}
/// @nodoc
class __$WeekActivityResponseCopyWithImpl<$Res>
    implements _$WeekActivityResponseCopyWith<$Res> {
  __$WeekActivityResponseCopyWithImpl(this._self, this._then);

  final _WeekActivityResponse _self;
  final $Res Function(_WeekActivityResponse) _then;

/// Create a copy of WeekActivityResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? theme = null,Object? orateur = null,Object? lieu = null,Object? date = null,Object? programmeNature = null,}) {
  return _then(_WeekActivityResponse(
theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as String,orateur: null == orateur ? _self.orateur : orateur // ignore: cast_nullable_to_non_nullable
as String,lieu: null == lieu ? _self.lieu : lieu // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,programmeNature: null == programmeNature ? _self.programmeNature : programmeNature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$VisiteDisciple {

 String get fullname; bool get isDisciple; String get probleme; String get recommandation;
/// Create a copy of VisiteDisciple
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisiteDiscipleCopyWith<VisiteDisciple> get copyWith => _$VisiteDiscipleCopyWithImpl<VisiteDisciple>(this as VisiteDisciple, _$identity);

  /// Serializes this VisiteDisciple to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisiteDisciple&&(identical(other.fullname, fullname) || other.fullname == fullname)&&(identical(other.isDisciple, isDisciple) || other.isDisciple == isDisciple)&&(identical(other.probleme, probleme) || other.probleme == probleme)&&(identical(other.recommandation, recommandation) || other.recommandation == recommandation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullname,isDisciple,probleme,recommandation);

@override
String toString() {
  return 'VisiteDisciple(fullname: $fullname, isDisciple: $isDisciple, probleme: $probleme, recommandation: $recommandation)';
}


}

/// @nodoc
abstract mixin class $VisiteDiscipleCopyWith<$Res>  {
  factory $VisiteDiscipleCopyWith(VisiteDisciple value, $Res Function(VisiteDisciple) _then) = _$VisiteDiscipleCopyWithImpl;
@useResult
$Res call({
 String fullname, bool isDisciple, String probleme, String recommandation
});




}
/// @nodoc
class _$VisiteDiscipleCopyWithImpl<$Res>
    implements $VisiteDiscipleCopyWith<$Res> {
  _$VisiteDiscipleCopyWithImpl(this._self, this._then);

  final VisiteDisciple _self;
  final $Res Function(VisiteDisciple) _then;

/// Create a copy of VisiteDisciple
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullname = null,Object? isDisciple = null,Object? probleme = null,Object? recommandation = null,}) {
  return _then(_self.copyWith(
fullname: null == fullname ? _self.fullname : fullname // ignore: cast_nullable_to_non_nullable
as String,isDisciple: null == isDisciple ? _self.isDisciple : isDisciple // ignore: cast_nullable_to_non_nullable
as bool,probleme: null == probleme ? _self.probleme : probleme // ignore: cast_nullable_to_non_nullable
as String,recommandation: null == recommandation ? _self.recommandation : recommandation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VisiteDisciple].
extension VisiteDisciplePatterns on VisiteDisciple {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisiteDisciple value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisiteDisciple() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisiteDisciple value)  $default,){
final _that = this;
switch (_that) {
case _VisiteDisciple():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisiteDisciple value)?  $default,){
final _that = this;
switch (_that) {
case _VisiteDisciple() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fullname,  bool isDisciple,  String probleme,  String recommandation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisiteDisciple() when $default != null:
return $default(_that.fullname,_that.isDisciple,_that.probleme,_that.recommandation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fullname,  bool isDisciple,  String probleme,  String recommandation)  $default,) {final _that = this;
switch (_that) {
case _VisiteDisciple():
return $default(_that.fullname,_that.isDisciple,_that.probleme,_that.recommandation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fullname,  bool isDisciple,  String probleme,  String recommandation)?  $default,) {final _that = this;
switch (_that) {
case _VisiteDisciple() when $default != null:
return $default(_that.fullname,_that.isDisciple,_that.probleme,_that.recommandation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VisiteDisciple implements VisiteDisciple {
   _VisiteDisciple({required this.fullname, this.isDisciple = false, required this.probleme, required this.recommandation});
  factory _VisiteDisciple.fromJson(Map<String, dynamic> json) => _$VisiteDiscipleFromJson(json);

@override final  String fullname;
@override@JsonKey() final  bool isDisciple;
@override final  String probleme;
@override final  String recommandation;

/// Create a copy of VisiteDisciple
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisiteDiscipleCopyWith<_VisiteDisciple> get copyWith => __$VisiteDiscipleCopyWithImpl<_VisiteDisciple>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VisiteDiscipleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisiteDisciple&&(identical(other.fullname, fullname) || other.fullname == fullname)&&(identical(other.isDisciple, isDisciple) || other.isDisciple == isDisciple)&&(identical(other.probleme, probleme) || other.probleme == probleme)&&(identical(other.recommandation, recommandation) || other.recommandation == recommandation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullname,isDisciple,probleme,recommandation);

@override
String toString() {
  return 'VisiteDisciple(fullname: $fullname, isDisciple: $isDisciple, probleme: $probleme, recommandation: $recommandation)';
}


}

/// @nodoc
abstract mixin class _$VisiteDiscipleCopyWith<$Res> implements $VisiteDiscipleCopyWith<$Res> {
  factory _$VisiteDiscipleCopyWith(_VisiteDisciple value, $Res Function(_VisiteDisciple) _then) = __$VisiteDiscipleCopyWithImpl;
@override @useResult
$Res call({
 String fullname, bool isDisciple, String probleme, String recommandation
});




}
/// @nodoc
class __$VisiteDiscipleCopyWithImpl<$Res>
    implements _$VisiteDiscipleCopyWith<$Res> {
  __$VisiteDiscipleCopyWithImpl(this._self, this._then);

  final _VisiteDisciple _self;
  final $Res Function(_VisiteDisciple) _then;

/// Create a copy of VisiteDisciple
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullname = null,Object? isDisciple = null,Object? probleme = null,Object? recommandation = null,}) {
  return _then(_VisiteDisciple(
fullname: null == fullname ? _self.fullname : fullname // ignore: cast_nullable_to_non_nullable
as String,isDisciple: null == isDisciple ? _self.isDisciple : isDisciple // ignore: cast_nullable_to_non_nullable
as bool,probleme: null == probleme ? _self.probleme : probleme // ignore: cast_nullable_to_non_nullable
as String,recommandation: null == recommandation ? _self.recommandation : recommandation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$WeekActivity {

 String get theme; String get orateur; String get lieu; String get date; String get programmeNature;
/// Create a copy of WeekActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeekActivityCopyWith<WeekActivity> get copyWith => _$WeekActivityCopyWithImpl<WeekActivity>(this as WeekActivity, _$identity);

  /// Serializes this WeekActivity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeekActivity&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.orateur, orateur) || other.orateur == orateur)&&(identical(other.lieu, lieu) || other.lieu == lieu)&&(identical(other.date, date) || other.date == date)&&(identical(other.programmeNature, programmeNature) || other.programmeNature == programmeNature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,theme,orateur,lieu,date,programmeNature);

@override
String toString() {
  return 'WeekActivity(theme: $theme, orateur: $orateur, lieu: $lieu, date: $date, programmeNature: $programmeNature)';
}


}

/// @nodoc
abstract mixin class $WeekActivityCopyWith<$Res>  {
  factory $WeekActivityCopyWith(WeekActivity value, $Res Function(WeekActivity) _then) = _$WeekActivityCopyWithImpl;
@useResult
$Res call({
 String theme, String orateur, String lieu, String date, String programmeNature
});




}
/// @nodoc
class _$WeekActivityCopyWithImpl<$Res>
    implements $WeekActivityCopyWith<$Res> {
  _$WeekActivityCopyWithImpl(this._self, this._then);

  final WeekActivity _self;
  final $Res Function(WeekActivity) _then;

/// Create a copy of WeekActivity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? theme = null,Object? orateur = null,Object? lieu = null,Object? date = null,Object? programmeNature = null,}) {
  return _then(_self.copyWith(
theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as String,orateur: null == orateur ? _self.orateur : orateur // ignore: cast_nullable_to_non_nullable
as String,lieu: null == lieu ? _self.lieu : lieu // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,programmeNature: null == programmeNature ? _self.programmeNature : programmeNature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WeekActivity].
extension WeekActivityPatterns on WeekActivity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeekActivity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeekActivity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeekActivity value)  $default,){
final _that = this;
switch (_that) {
case _WeekActivity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeekActivity value)?  $default,){
final _that = this;
switch (_that) {
case _WeekActivity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String theme,  String orateur,  String lieu,  String date,  String programmeNature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeekActivity() when $default != null:
return $default(_that.theme,_that.orateur,_that.lieu,_that.date,_that.programmeNature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String theme,  String orateur,  String lieu,  String date,  String programmeNature)  $default,) {final _that = this;
switch (_that) {
case _WeekActivity():
return $default(_that.theme,_that.orateur,_that.lieu,_that.date,_that.programmeNature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String theme,  String orateur,  String lieu,  String date,  String programmeNature)?  $default,) {final _that = this;
switch (_that) {
case _WeekActivity() when $default != null:
return $default(_that.theme,_that.orateur,_that.lieu,_that.date,_that.programmeNature);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeekActivity implements WeekActivity {
   _WeekActivity({required this.theme, required this.orateur, required this.lieu, required this.date, required this.programmeNature});
  factory _WeekActivity.fromJson(Map<String, dynamic> json) => _$WeekActivityFromJson(json);

@override final  String theme;
@override final  String orateur;
@override final  String lieu;
@override final  String date;
@override final  String programmeNature;

/// Create a copy of WeekActivity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeekActivityCopyWith<_WeekActivity> get copyWith => __$WeekActivityCopyWithImpl<_WeekActivity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeekActivityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeekActivity&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.orateur, orateur) || other.orateur == orateur)&&(identical(other.lieu, lieu) || other.lieu == lieu)&&(identical(other.date, date) || other.date == date)&&(identical(other.programmeNature, programmeNature) || other.programmeNature == programmeNature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,theme,orateur,lieu,date,programmeNature);

@override
String toString() {
  return 'WeekActivity(theme: $theme, orateur: $orateur, lieu: $lieu, date: $date, programmeNature: $programmeNature)';
}


}

/// @nodoc
abstract mixin class _$WeekActivityCopyWith<$Res> implements $WeekActivityCopyWith<$Res> {
  factory _$WeekActivityCopyWith(_WeekActivity value, $Res Function(_WeekActivity) _then) = __$WeekActivityCopyWithImpl;
@override @useResult
$Res call({
 String theme, String orateur, String lieu, String date, String programmeNature
});




}
/// @nodoc
class __$WeekActivityCopyWithImpl<$Res>
    implements _$WeekActivityCopyWith<$Res> {
  __$WeekActivityCopyWithImpl(this._self, this._then);

  final _WeekActivity _self;
  final $Res Function(_WeekActivity) _then;

/// Create a copy of WeekActivity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? theme = null,Object? orateur = null,Object? lieu = null,Object? date = null,Object? programmeNature = null,}) {
  return _then(_WeekActivity(
theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as String,orateur: null == orateur ? _self.orateur : orateur // ignore: cast_nullable_to_non_nullable
as String,lieu: null == lieu ? _self.lieu : lieu // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,programmeNature: null == programmeNature ? _self.programmeNature : programmeNature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RapportSuggestion {

 String get temoignage; String get suggestions; String get probleme;
/// Create a copy of RapportSuggestion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RapportSuggestionCopyWith<RapportSuggestion> get copyWith => _$RapportSuggestionCopyWithImpl<RapportSuggestion>(this as RapportSuggestion, _$identity);

  /// Serializes this RapportSuggestion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RapportSuggestion&&(identical(other.temoignage, temoignage) || other.temoignage == temoignage)&&(identical(other.suggestions, suggestions) || other.suggestions == suggestions)&&(identical(other.probleme, probleme) || other.probleme == probleme));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temoignage,suggestions,probleme);

@override
String toString() {
  return 'RapportSuggestion(temoignage: $temoignage, suggestions: $suggestions, probleme: $probleme)';
}


}

/// @nodoc
abstract mixin class $RapportSuggestionCopyWith<$Res>  {
  factory $RapportSuggestionCopyWith(RapportSuggestion value, $Res Function(RapportSuggestion) _then) = _$RapportSuggestionCopyWithImpl;
@useResult
$Res call({
 String temoignage, String suggestions, String probleme
});




}
/// @nodoc
class _$RapportSuggestionCopyWithImpl<$Res>
    implements $RapportSuggestionCopyWith<$Res> {
  _$RapportSuggestionCopyWithImpl(this._self, this._then);

  final RapportSuggestion _self;
  final $Res Function(RapportSuggestion) _then;

/// Create a copy of RapportSuggestion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temoignage = null,Object? suggestions = null,Object? probleme = null,}) {
  return _then(_self.copyWith(
temoignage: null == temoignage ? _self.temoignage : temoignage // ignore: cast_nullable_to_non_nullable
as String,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as String,probleme: null == probleme ? _self.probleme : probleme // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RapportSuggestion].
extension RapportSuggestionPatterns on RapportSuggestion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RapportSuggestion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RapportSuggestion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RapportSuggestion value)  $default,){
final _that = this;
switch (_that) {
case _RapportSuggestion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RapportSuggestion value)?  $default,){
final _that = this;
switch (_that) {
case _RapportSuggestion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String temoignage,  String suggestions,  String probleme)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RapportSuggestion() when $default != null:
return $default(_that.temoignage,_that.suggestions,_that.probleme);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String temoignage,  String suggestions,  String probleme)  $default,) {final _that = this;
switch (_that) {
case _RapportSuggestion():
return $default(_that.temoignage,_that.suggestions,_that.probleme);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String temoignage,  String suggestions,  String probleme)?  $default,) {final _that = this;
switch (_that) {
case _RapportSuggestion() when $default != null:
return $default(_that.temoignage,_that.suggestions,_that.probleme);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RapportSuggestion implements RapportSuggestion {
   _RapportSuggestion({required this.temoignage, required this.suggestions, required this.probleme});
  factory _RapportSuggestion.fromJson(Map<String, dynamic> json) => _$RapportSuggestionFromJson(json);

@override final  String temoignage;
@override final  String suggestions;
@override final  String probleme;

/// Create a copy of RapportSuggestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RapportSuggestionCopyWith<_RapportSuggestion> get copyWith => __$RapportSuggestionCopyWithImpl<_RapportSuggestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RapportSuggestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RapportSuggestion&&(identical(other.temoignage, temoignage) || other.temoignage == temoignage)&&(identical(other.suggestions, suggestions) || other.suggestions == suggestions)&&(identical(other.probleme, probleme) || other.probleme == probleme));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temoignage,suggestions,probleme);

@override
String toString() {
  return 'RapportSuggestion(temoignage: $temoignage, suggestions: $suggestions, probleme: $probleme)';
}


}

/// @nodoc
abstract mixin class _$RapportSuggestionCopyWith<$Res> implements $RapportSuggestionCopyWith<$Res> {
  factory _$RapportSuggestionCopyWith(_RapportSuggestion value, $Res Function(_RapportSuggestion) _then) = __$RapportSuggestionCopyWithImpl;
@override @useResult
$Res call({
 String temoignage, String suggestions, String probleme
});




}
/// @nodoc
class __$RapportSuggestionCopyWithImpl<$Res>
    implements _$RapportSuggestionCopyWith<$Res> {
  __$RapportSuggestionCopyWithImpl(this._self, this._then);

  final _RapportSuggestion _self;
  final $Res Function(_RapportSuggestion) _then;

/// Create a copy of RapportSuggestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temoignage = null,Object? suggestions = null,Object? probleme = null,}) {
  return _then(_RapportSuggestion(
temoignage: null == temoignage ? _self.temoignage : temoignage // ignore: cast_nullable_to_non_nullable
as String,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as String,probleme: null == probleme ? _self.probleme : probleme // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
