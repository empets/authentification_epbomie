// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cellule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CelluleResponseModel {

 String? get celluleId; String? get celluleCode; String? get nom; String? get date; String? get description; String? get adresse; double? get latitude; double? get longitude; String? get responsableCelluleId; String? get responsableCellule; String? get contactResponsableCellule; String? get emailResponsableCellule; String? get adresseResponsableCellule; String? get secteurId; String? get secteurCode; String? get jourCellule; String? get heureCellule;
/// Create a copy of CelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CelluleResponseModelCopyWith<CelluleResponseModel> get copyWith => _$CelluleResponseModelCopyWithImpl<CelluleResponseModel>(this as CelluleResponseModel, _$identity);

  /// Serializes this CelluleResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CelluleResponseModel&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.date, date) || other.date == date)&&(identical(other.description, description) || other.description == description)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId)&&(identical(other.responsableCellule, responsableCellule) || other.responsableCellule == responsableCellule)&&(identical(other.contactResponsableCellule, contactResponsableCellule) || other.contactResponsableCellule == contactResponsableCellule)&&(identical(other.emailResponsableCellule, emailResponsableCellule) || other.emailResponsableCellule == emailResponsableCellule)&&(identical(other.adresseResponsableCellule, adresseResponsableCellule) || other.adresseResponsableCellule == adresseResponsableCellule)&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.jourCellule, jourCellule) || other.jourCellule == jourCellule)&&(identical(other.heureCellule, heureCellule) || other.heureCellule == heureCellule));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,celluleId,celluleCode,nom,date,description,adresse,latitude,longitude,responsableCelluleId,responsableCellule,contactResponsableCellule,emailResponsableCellule,adresseResponsableCellule,secteurId,secteurCode,jourCellule,heureCellule);

@override
String toString() {
  return 'CelluleResponseModel(celluleId: $celluleId, celluleCode: $celluleCode, nom: $nom, date: $date, description: $description, adresse: $adresse, latitude: $latitude, longitude: $longitude, responsableCelluleId: $responsableCelluleId, responsableCellule: $responsableCellule, contactResponsableCellule: $contactResponsableCellule, emailResponsableCellule: $emailResponsableCellule, adresseResponsableCellule: $adresseResponsableCellule, secteurId: $secteurId, secteurCode: $secteurCode, jourCellule: $jourCellule, heureCellule: $heureCellule)';
}


}

/// @nodoc
abstract mixin class $CelluleResponseModelCopyWith<$Res>  {
  factory $CelluleResponseModelCopyWith(CelluleResponseModel value, $Res Function(CelluleResponseModel) _then) = _$CelluleResponseModelCopyWithImpl;
@useResult
$Res call({
 String? celluleId, String? celluleCode, String? nom, String? date, String? description, String? adresse, double? latitude, double? longitude, String? responsableCelluleId, String? responsableCellule, String? contactResponsableCellule, String? emailResponsableCellule, String? adresseResponsableCellule, String? secteurId, String? secteurCode, String? jourCellule, String? heureCellule
});




}
/// @nodoc
class _$CelluleResponseModelCopyWithImpl<$Res>
    implements $CelluleResponseModelCopyWith<$Res> {
  _$CelluleResponseModelCopyWithImpl(this._self, this._then);

  final CelluleResponseModel _self;
  final $Res Function(CelluleResponseModel) _then;

/// Create a copy of CelluleResponseModel
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


/// Adds pattern-matching-related methods to [CelluleResponseModel].
extension CelluleResponseModelPatterns on CelluleResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CelluleResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CelluleResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CelluleResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CelluleResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CelluleResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CelluleResponseModel() when $default != null:
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
case _CelluleResponseModel() when $default != null:
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
case _CelluleResponseModel():
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
case _CelluleResponseModel() when $default != null:
return $default(_that.celluleId,_that.celluleCode,_that.nom,_that.date,_that.description,_that.adresse,_that.latitude,_that.longitude,_that.responsableCelluleId,_that.responsableCellule,_that.contactResponsableCellule,_that.emailResponsableCellule,_that.adresseResponsableCellule,_that.secteurId,_that.secteurCode,_that.jourCellule,_that.heureCellule);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CelluleResponseModel implements CelluleResponseModel {
   _CelluleResponseModel({required this.celluleId, required this.celluleCode, required this.nom, required this.date, required this.description, required this.adresse, required this.latitude, required this.longitude, required this.responsableCelluleId, required this.responsableCellule, required this.contactResponsableCellule, required this.emailResponsableCellule, required this.adresseResponsableCellule, required this.secteurId, required this.secteurCode, required this.jourCellule, required this.heureCellule});
  factory _CelluleResponseModel.fromJson(Map<String, dynamic> json) => _$CelluleResponseModelFromJson(json);

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

/// Create a copy of CelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CelluleResponseModelCopyWith<_CelluleResponseModel> get copyWith => __$CelluleResponseModelCopyWithImpl<_CelluleResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CelluleResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CelluleResponseModel&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.date, date) || other.date == date)&&(identical(other.description, description) || other.description == description)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId)&&(identical(other.responsableCellule, responsableCellule) || other.responsableCellule == responsableCellule)&&(identical(other.contactResponsableCellule, contactResponsableCellule) || other.contactResponsableCellule == contactResponsableCellule)&&(identical(other.emailResponsableCellule, emailResponsableCellule) || other.emailResponsableCellule == emailResponsableCellule)&&(identical(other.adresseResponsableCellule, adresseResponsableCellule) || other.adresseResponsableCellule == adresseResponsableCellule)&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.jourCellule, jourCellule) || other.jourCellule == jourCellule)&&(identical(other.heureCellule, heureCellule) || other.heureCellule == heureCellule));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,celluleId,celluleCode,nom,date,description,adresse,latitude,longitude,responsableCelluleId,responsableCellule,contactResponsableCellule,emailResponsableCellule,adresseResponsableCellule,secteurId,secteurCode,jourCellule,heureCellule);

@override
String toString() {
  return 'CelluleResponseModel(celluleId: $celluleId, celluleCode: $celluleCode, nom: $nom, date: $date, description: $description, adresse: $adresse, latitude: $latitude, longitude: $longitude, responsableCelluleId: $responsableCelluleId, responsableCellule: $responsableCellule, contactResponsableCellule: $contactResponsableCellule, emailResponsableCellule: $emailResponsableCellule, adresseResponsableCellule: $adresseResponsableCellule, secteurId: $secteurId, secteurCode: $secteurCode, jourCellule: $jourCellule, heureCellule: $heureCellule)';
}


}

/// @nodoc
abstract mixin class _$CelluleResponseModelCopyWith<$Res> implements $CelluleResponseModelCopyWith<$Res> {
  factory _$CelluleResponseModelCopyWith(_CelluleResponseModel value, $Res Function(_CelluleResponseModel) _then) = __$CelluleResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? celluleId, String? celluleCode, String? nom, String? date, String? description, String? adresse, double? latitude, double? longitude, String? responsableCelluleId, String? responsableCellule, String? contactResponsableCellule, String? emailResponsableCellule, String? adresseResponsableCellule, String? secteurId, String? secteurCode, String? jourCellule, String? heureCellule
});




}
/// @nodoc
class __$CelluleResponseModelCopyWithImpl<$Res>
    implements _$CelluleResponseModelCopyWith<$Res> {
  __$CelluleResponseModelCopyWithImpl(this._self, this._then);

  final _CelluleResponseModel _self;
  final $Res Function(_CelluleResponseModel) _then;

/// Create a copy of CelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? celluleId = freezed,Object? celluleCode = freezed,Object? nom = freezed,Object? date = freezed,Object? description = freezed,Object? adresse = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? responsableCelluleId = freezed,Object? responsableCellule = freezed,Object? contactResponsableCellule = freezed,Object? emailResponsableCellule = freezed,Object? adresseResponsableCellule = freezed,Object? secteurId = freezed,Object? secteurCode = freezed,Object? jourCellule = freezed,Object? heureCellule = freezed,}) {
  return _then(_CelluleResponseModel(
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
mixin _$ReponsableCelluleResponseModel {

 String? get responsable; String? get celluleCode; String? get date; String? get nom; String? get prenom; String? get contact; String? get email; String? get adresse; String? get celluleId; String? get celluleName; String? get secteurId; String? get secteurCode; String? get responsableCelluleId;
/// Create a copy of ReponsableCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReponsableCelluleResponseModelCopyWith<ReponsableCelluleResponseModel> get copyWith => _$ReponsableCelluleResponseModelCopyWithImpl<ReponsableCelluleResponseModel>(this as ReponsableCelluleResponseModel, _$identity);

  /// Serializes this ReponsableCelluleResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReponsableCelluleResponseModel&&(identical(other.responsable, responsable) || other.responsable == responsable)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.date, date) || other.date == date)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.prenom, prenom) || other.prenom == prenom)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.email, email) || other.email == email)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId)&&(identical(other.celluleName, celluleName) || other.celluleName == celluleName)&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,responsable,celluleCode,date,nom,prenom,contact,email,adresse,celluleId,celluleName,secteurId,secteurCode,responsableCelluleId);

@override
String toString() {
  return 'ReponsableCelluleResponseModel(responsable: $responsable, celluleCode: $celluleCode, date: $date, nom: $nom, prenom: $prenom, contact: $contact, email: $email, adresse: $adresse, celluleId: $celluleId, celluleName: $celluleName, secteurId: $secteurId, secteurCode: $secteurCode, responsableCelluleId: $responsableCelluleId)';
}


}

/// @nodoc
abstract mixin class $ReponsableCelluleResponseModelCopyWith<$Res>  {
  factory $ReponsableCelluleResponseModelCopyWith(ReponsableCelluleResponseModel value, $Res Function(ReponsableCelluleResponseModel) _then) = _$ReponsableCelluleResponseModelCopyWithImpl;
@useResult
$Res call({
 String? responsable, String? celluleCode, String? date, String? nom, String? prenom, String? contact, String? email, String? adresse, String? celluleId, String? celluleName, String? secteurId, String? secteurCode, String? responsableCelluleId
});




}
/// @nodoc
class _$ReponsableCelluleResponseModelCopyWithImpl<$Res>
    implements $ReponsableCelluleResponseModelCopyWith<$Res> {
  _$ReponsableCelluleResponseModelCopyWithImpl(this._self, this._then);

  final ReponsableCelluleResponseModel _self;
  final $Res Function(ReponsableCelluleResponseModel) _then;

/// Create a copy of ReponsableCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? responsable = freezed,Object? celluleCode = freezed,Object? date = freezed,Object? nom = freezed,Object? prenom = freezed,Object? contact = freezed,Object? email = freezed,Object? adresse = freezed,Object? celluleId = freezed,Object? celluleName = freezed,Object? secteurId = freezed,Object? secteurCode = freezed,Object? responsableCelluleId = freezed,}) {
  return _then(_self.copyWith(
responsable: freezed == responsable ? _self.responsable : responsable // ignore: cast_nullable_to_non_nullable
as String?,celluleCode: freezed == celluleCode ? _self.celluleCode : celluleCode // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,nom: freezed == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String?,prenom: freezed == prenom ? _self.prenom : prenom // ignore: cast_nullable_to_non_nullable
as String?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,celluleId: freezed == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as String?,celluleName: freezed == celluleName ? _self.celluleName : celluleName // ignore: cast_nullable_to_non_nullable
as String?,secteurId: freezed == secteurId ? _self.secteurId : secteurId // ignore: cast_nullable_to_non_nullable
as String?,secteurCode: freezed == secteurCode ? _self.secteurCode : secteurCode // ignore: cast_nullable_to_non_nullable
as String?,responsableCelluleId: freezed == responsableCelluleId ? _self.responsableCelluleId : responsableCelluleId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReponsableCelluleResponseModel].
extension ReponsableCelluleResponseModelPatterns on ReponsableCelluleResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReponsableCelluleResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReponsableCelluleResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReponsableCelluleResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ReponsableCelluleResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReponsableCelluleResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReponsableCelluleResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? responsable,  String? celluleCode,  String? date,  String? nom,  String? prenom,  String? contact,  String? email,  String? adresse,  String? celluleId,  String? celluleName,  String? secteurId,  String? secteurCode,  String? responsableCelluleId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReponsableCelluleResponseModel() when $default != null:
return $default(_that.responsable,_that.celluleCode,_that.date,_that.nom,_that.prenom,_that.contact,_that.email,_that.adresse,_that.celluleId,_that.celluleName,_that.secteurId,_that.secteurCode,_that.responsableCelluleId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? responsable,  String? celluleCode,  String? date,  String? nom,  String? prenom,  String? contact,  String? email,  String? adresse,  String? celluleId,  String? celluleName,  String? secteurId,  String? secteurCode,  String? responsableCelluleId)  $default,) {final _that = this;
switch (_that) {
case _ReponsableCelluleResponseModel():
return $default(_that.responsable,_that.celluleCode,_that.date,_that.nom,_that.prenom,_that.contact,_that.email,_that.adresse,_that.celluleId,_that.celluleName,_that.secteurId,_that.secteurCode,_that.responsableCelluleId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? responsable,  String? celluleCode,  String? date,  String? nom,  String? prenom,  String? contact,  String? email,  String? adresse,  String? celluleId,  String? celluleName,  String? secteurId,  String? secteurCode,  String? responsableCelluleId)?  $default,) {final _that = this;
switch (_that) {
case _ReponsableCelluleResponseModel() when $default != null:
return $default(_that.responsable,_that.celluleCode,_that.date,_that.nom,_that.prenom,_that.contact,_that.email,_that.adresse,_that.celluleId,_that.celluleName,_that.secteurId,_that.secteurCode,_that.responsableCelluleId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReponsableCelluleResponseModel implements ReponsableCelluleResponseModel {
   _ReponsableCelluleResponseModel({required this.responsable, required this.celluleCode, required this.date, required this.nom, required this.prenom, required this.contact, required this.email, required this.adresse, required this.celluleId, required this.celluleName, required this.secteurId, required this.secteurCode, required this.responsableCelluleId});
  factory _ReponsableCelluleResponseModel.fromJson(Map<String, dynamic> json) => _$ReponsableCelluleResponseModelFromJson(json);

@override final  String? responsable;
@override final  String? celluleCode;
@override final  String? date;
@override final  String? nom;
@override final  String? prenom;
@override final  String? contact;
@override final  String? email;
@override final  String? adresse;
@override final  String? celluleId;
@override final  String? celluleName;
@override final  String? secteurId;
@override final  String? secteurCode;
@override final  String? responsableCelluleId;

/// Create a copy of ReponsableCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReponsableCelluleResponseModelCopyWith<_ReponsableCelluleResponseModel> get copyWith => __$ReponsableCelluleResponseModelCopyWithImpl<_ReponsableCelluleResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReponsableCelluleResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReponsableCelluleResponseModel&&(identical(other.responsable, responsable) || other.responsable == responsable)&&(identical(other.celluleCode, celluleCode) || other.celluleCode == celluleCode)&&(identical(other.date, date) || other.date == date)&&(identical(other.nom, nom) || other.nom == nom)&&(identical(other.prenom, prenom) || other.prenom == prenom)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.email, email) || other.email == email)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.celluleId, celluleId) || other.celluleId == celluleId)&&(identical(other.celluleName, celluleName) || other.celluleName == celluleName)&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,responsable,celluleCode,date,nom,prenom,contact,email,adresse,celluleId,celluleName,secteurId,secteurCode,responsableCelluleId);

@override
String toString() {
  return 'ReponsableCelluleResponseModel(responsable: $responsable, celluleCode: $celluleCode, date: $date, nom: $nom, prenom: $prenom, contact: $contact, email: $email, adresse: $adresse, celluleId: $celluleId, celluleName: $celluleName, secteurId: $secteurId, secteurCode: $secteurCode, responsableCelluleId: $responsableCelluleId)';
}


}

/// @nodoc
abstract mixin class _$ReponsableCelluleResponseModelCopyWith<$Res> implements $ReponsableCelluleResponseModelCopyWith<$Res> {
  factory _$ReponsableCelluleResponseModelCopyWith(_ReponsableCelluleResponseModel value, $Res Function(_ReponsableCelluleResponseModel) _then) = __$ReponsableCelluleResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? responsable, String? celluleCode, String? date, String? nom, String? prenom, String? contact, String? email, String? adresse, String? celluleId, String? celluleName, String? secteurId, String? secteurCode, String? responsableCelluleId
});




}
/// @nodoc
class __$ReponsableCelluleResponseModelCopyWithImpl<$Res>
    implements _$ReponsableCelluleResponseModelCopyWith<$Res> {
  __$ReponsableCelluleResponseModelCopyWithImpl(this._self, this._then);

  final _ReponsableCelluleResponseModel _self;
  final $Res Function(_ReponsableCelluleResponseModel) _then;

/// Create a copy of ReponsableCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? responsable = freezed,Object? celluleCode = freezed,Object? date = freezed,Object? nom = freezed,Object? prenom = freezed,Object? contact = freezed,Object? email = freezed,Object? adresse = freezed,Object? celluleId = freezed,Object? celluleName = freezed,Object? secteurId = freezed,Object? secteurCode = freezed,Object? responsableCelluleId = freezed,}) {
  return _then(_ReponsableCelluleResponseModel(
responsable: freezed == responsable ? _self.responsable : responsable // ignore: cast_nullable_to_non_nullable
as String?,celluleCode: freezed == celluleCode ? _self.celluleCode : celluleCode // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,nom: freezed == nom ? _self.nom : nom // ignore: cast_nullable_to_non_nullable
as String?,prenom: freezed == prenom ? _self.prenom : prenom // ignore: cast_nullable_to_non_nullable
as String?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,adresse: freezed == adresse ? _self.adresse : adresse // ignore: cast_nullable_to_non_nullable
as String?,celluleId: freezed == celluleId ? _self.celluleId : celluleId // ignore: cast_nullable_to_non_nullable
as String?,celluleName: freezed == celluleName ? _self.celluleName : celluleName // ignore: cast_nullable_to_non_nullable
as String?,secteurId: freezed == secteurId ? _self.secteurId : secteurId // ignore: cast_nullable_to_non_nullable
as String?,secteurCode: freezed == secteurCode ? _self.secteurCode : secteurCode // ignore: cast_nullable_to_non_nullable
as String?,responsableCelluleId: freezed == responsableCelluleId ? _self.responsableCelluleId : responsableCelluleId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SecteurModel {

 String? get secteurId; String? get secteurCode; String? get secteurName; String? get dateCreated; String? get secteurResponsableName; String? get contactResponsable; String? get emailResponsableSecteur; String? get adressResponsableSecteur; String? get responsableSecteurId; String? get adresse; String? get zoneId; String? get zoneCode;
/// Create a copy of SecteurModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecteurModelCopyWith<SecteurModel> get copyWith => _$SecteurModelCopyWithImpl<SecteurModel>(this as SecteurModel, _$identity);

  /// Serializes this SecteurModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecteurModel&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.secteurName, secteurName) || other.secteurName == secteurName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.secteurResponsableName, secteurResponsableName) || other.secteurResponsableName == secteurResponsableName)&&(identical(other.contactResponsable, contactResponsable) || other.contactResponsable == contactResponsable)&&(identical(other.emailResponsableSecteur, emailResponsableSecteur) || other.emailResponsableSecteur == emailResponsableSecteur)&&(identical(other.adressResponsableSecteur, adressResponsableSecteur) || other.adressResponsableSecteur == adressResponsableSecteur)&&(identical(other.responsableSecteurId, responsableSecteurId) || other.responsableSecteurId == responsableSecteurId)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.zoneCode, zoneCode) || other.zoneCode == zoneCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,secteurId,secteurCode,secteurName,dateCreated,secteurResponsableName,contactResponsable,emailResponsableSecteur,adressResponsableSecteur,responsableSecteurId,adresse,zoneId,zoneCode);

@override
String toString() {
  return 'SecteurModel(secteurId: $secteurId, secteurCode: $secteurCode, secteurName: $secteurName, dateCreated: $dateCreated, secteurResponsableName: $secteurResponsableName, contactResponsable: $contactResponsable, emailResponsableSecteur: $emailResponsableSecteur, adressResponsableSecteur: $adressResponsableSecteur, responsableSecteurId: $responsableSecteurId, adresse: $adresse, zoneId: $zoneId, zoneCode: $zoneCode)';
}


}

/// @nodoc
abstract mixin class $SecteurModelCopyWith<$Res>  {
  factory $SecteurModelCopyWith(SecteurModel value, $Res Function(SecteurModel) _then) = _$SecteurModelCopyWithImpl;
@useResult
$Res call({
 String? secteurId, String? secteurCode, String? secteurName, String? dateCreated, String? secteurResponsableName, String? contactResponsable, String? emailResponsableSecteur, String? adressResponsableSecteur, String? responsableSecteurId, String? adresse, String? zoneId, String? zoneCode
});




}
/// @nodoc
class _$SecteurModelCopyWithImpl<$Res>
    implements $SecteurModelCopyWith<$Res> {
  _$SecteurModelCopyWithImpl(this._self, this._then);

  final SecteurModel _self;
  final $Res Function(SecteurModel) _then;

/// Create a copy of SecteurModel
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


/// Adds pattern-matching-related methods to [SecteurModel].
extension SecteurModelPatterns on SecteurModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecteurModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecteurModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecteurModel value)  $default,){
final _that = this;
switch (_that) {
case _SecteurModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecteurModel value)?  $default,){
final _that = this;
switch (_that) {
case _SecteurModel() when $default != null:
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
case _SecteurModel() when $default != null:
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
case _SecteurModel():
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
case _SecteurModel() when $default != null:
return $default(_that.secteurId,_that.secteurCode,_that.secteurName,_that.dateCreated,_that.secteurResponsableName,_that.contactResponsable,_that.emailResponsableSecteur,_that.adressResponsableSecteur,_that.responsableSecteurId,_that.adresse,_that.zoneId,_that.zoneCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecteurModel implements SecteurModel {
   _SecteurModel({required this.secteurId, required this.secteurCode, required this.secteurName, required this.dateCreated, required this.secteurResponsableName, required this.contactResponsable, required this.emailResponsableSecteur, required this.adressResponsableSecteur, required this.responsableSecteurId, required this.adresse, required this.zoneId, required this.zoneCode});
  factory _SecteurModel.fromJson(Map<String, dynamic> json) => _$SecteurModelFromJson(json);

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

/// Create a copy of SecteurModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecteurModelCopyWith<_SecteurModel> get copyWith => __$SecteurModelCopyWithImpl<_SecteurModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecteurModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecteurModel&&(identical(other.secteurId, secteurId) || other.secteurId == secteurId)&&(identical(other.secteurCode, secteurCode) || other.secteurCode == secteurCode)&&(identical(other.secteurName, secteurName) || other.secteurName == secteurName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.secteurResponsableName, secteurResponsableName) || other.secteurResponsableName == secteurResponsableName)&&(identical(other.contactResponsable, contactResponsable) || other.contactResponsable == contactResponsable)&&(identical(other.emailResponsableSecteur, emailResponsableSecteur) || other.emailResponsableSecteur == emailResponsableSecteur)&&(identical(other.adressResponsableSecteur, adressResponsableSecteur) || other.adressResponsableSecteur == adressResponsableSecteur)&&(identical(other.responsableSecteurId, responsableSecteurId) || other.responsableSecteurId == responsableSecteurId)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.zoneCode, zoneCode) || other.zoneCode == zoneCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,secteurId,secteurCode,secteurName,dateCreated,secteurResponsableName,contactResponsable,emailResponsableSecteur,adressResponsableSecteur,responsableSecteurId,adresse,zoneId,zoneCode);

@override
String toString() {
  return 'SecteurModel(secteurId: $secteurId, secteurCode: $secteurCode, secteurName: $secteurName, dateCreated: $dateCreated, secteurResponsableName: $secteurResponsableName, contactResponsable: $contactResponsable, emailResponsableSecteur: $emailResponsableSecteur, adressResponsableSecteur: $adressResponsableSecteur, responsableSecteurId: $responsableSecteurId, adresse: $adresse, zoneId: $zoneId, zoneCode: $zoneCode)';
}


}

/// @nodoc
abstract mixin class _$SecteurModelCopyWith<$Res> implements $SecteurModelCopyWith<$Res> {
  factory _$SecteurModelCopyWith(_SecteurModel value, $Res Function(_SecteurModel) _then) = __$SecteurModelCopyWithImpl;
@override @useResult
$Res call({
 String? secteurId, String? secteurCode, String? secteurName, String? dateCreated, String? secteurResponsableName, String? contactResponsable, String? emailResponsableSecteur, String? adressResponsableSecteur, String? responsableSecteurId, String? adresse, String? zoneId, String? zoneCode
});




}
/// @nodoc
class __$SecteurModelCopyWithImpl<$Res>
    implements _$SecteurModelCopyWith<$Res> {
  __$SecteurModelCopyWithImpl(this._self, this._then);

  final _SecteurModel _self;
  final $Res Function(_SecteurModel) _then;

/// Create a copy of SecteurModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? secteurId = freezed,Object? secteurCode = freezed,Object? secteurName = freezed,Object? dateCreated = freezed,Object? secteurResponsableName = freezed,Object? contactResponsable = freezed,Object? emailResponsableSecteur = freezed,Object? adressResponsableSecteur = freezed,Object? responsableSecteurId = freezed,Object? adresse = freezed,Object? zoneId = freezed,Object? zoneCode = freezed,}) {
  return _then(_SecteurModel(
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
mixin _$ZoneResponseModel {

 String? get zoneId; String? get zoneCode; String? get zoneName; String? get dateCreated; String? get zoneResponsableName; String? get contactResponsable; String? get emailResponsablezone; String? get adressResponsablezone; String? get responsablezoneId; String? get adresse; String? get regionId; String? get regionCode;
/// Create a copy of ZoneResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZoneResponseModelCopyWith<ZoneResponseModel> get copyWith => _$ZoneResponseModelCopyWithImpl<ZoneResponseModel>(this as ZoneResponseModel, _$identity);

  /// Serializes this ZoneResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZoneResponseModel&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.zoneCode, zoneCode) || other.zoneCode == zoneCode)&&(identical(other.zoneName, zoneName) || other.zoneName == zoneName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.zoneResponsableName, zoneResponsableName) || other.zoneResponsableName == zoneResponsableName)&&(identical(other.contactResponsable, contactResponsable) || other.contactResponsable == contactResponsable)&&(identical(other.emailResponsablezone, emailResponsablezone) || other.emailResponsablezone == emailResponsablezone)&&(identical(other.adressResponsablezone, adressResponsablezone) || other.adressResponsablezone == adressResponsablezone)&&(identical(other.responsablezoneId, responsablezoneId) || other.responsablezoneId == responsablezoneId)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.regionCode, regionCode) || other.regionCode == regionCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,zoneId,zoneCode,zoneName,dateCreated,zoneResponsableName,contactResponsable,emailResponsablezone,adressResponsablezone,responsablezoneId,adresse,regionId,regionCode);

@override
String toString() {
  return 'ZoneResponseModel(zoneId: $zoneId, zoneCode: $zoneCode, zoneName: $zoneName, dateCreated: $dateCreated, zoneResponsableName: $zoneResponsableName, contactResponsable: $contactResponsable, emailResponsablezone: $emailResponsablezone, adressResponsablezone: $adressResponsablezone, responsablezoneId: $responsablezoneId, adresse: $adresse, regionId: $regionId, regionCode: $regionCode)';
}


}

/// @nodoc
abstract mixin class $ZoneResponseModelCopyWith<$Res>  {
  factory $ZoneResponseModelCopyWith(ZoneResponseModel value, $Res Function(ZoneResponseModel) _then) = _$ZoneResponseModelCopyWithImpl;
@useResult
$Res call({
 String? zoneId, String? zoneCode, String? zoneName, String? dateCreated, String? zoneResponsableName, String? contactResponsable, String? emailResponsablezone, String? adressResponsablezone, String? responsablezoneId, String? adresse, String? regionId, String? regionCode
});




}
/// @nodoc
class _$ZoneResponseModelCopyWithImpl<$Res>
    implements $ZoneResponseModelCopyWith<$Res> {
  _$ZoneResponseModelCopyWithImpl(this._self, this._then);

  final ZoneResponseModel _self;
  final $Res Function(ZoneResponseModel) _then;

/// Create a copy of ZoneResponseModel
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


/// Adds pattern-matching-related methods to [ZoneResponseModel].
extension ZoneResponseModelPatterns on ZoneResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZoneResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZoneResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZoneResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ZoneResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZoneResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ZoneResponseModel() when $default != null:
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
case _ZoneResponseModel() when $default != null:
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
case _ZoneResponseModel():
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
case _ZoneResponseModel() when $default != null:
return $default(_that.zoneId,_that.zoneCode,_that.zoneName,_that.dateCreated,_that.zoneResponsableName,_that.contactResponsable,_that.emailResponsablezone,_that.adressResponsablezone,_that.responsablezoneId,_that.adresse,_that.regionId,_that.regionCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZoneResponseModel implements ZoneResponseModel {
   _ZoneResponseModel({required this.zoneId, required this.zoneCode, required this.zoneName, required this.dateCreated, required this.zoneResponsableName, required this.contactResponsable, required this.emailResponsablezone, required this.adressResponsablezone, required this.responsablezoneId, required this.adresse, required this.regionId, required this.regionCode});
  factory _ZoneResponseModel.fromJson(Map<String, dynamic> json) => _$ZoneResponseModelFromJson(json);

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

/// Create a copy of ZoneResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZoneResponseModelCopyWith<_ZoneResponseModel> get copyWith => __$ZoneResponseModelCopyWithImpl<_ZoneResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZoneResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZoneResponseModel&&(identical(other.zoneId, zoneId) || other.zoneId == zoneId)&&(identical(other.zoneCode, zoneCode) || other.zoneCode == zoneCode)&&(identical(other.zoneName, zoneName) || other.zoneName == zoneName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.zoneResponsableName, zoneResponsableName) || other.zoneResponsableName == zoneResponsableName)&&(identical(other.contactResponsable, contactResponsable) || other.contactResponsable == contactResponsable)&&(identical(other.emailResponsablezone, emailResponsablezone) || other.emailResponsablezone == emailResponsablezone)&&(identical(other.adressResponsablezone, adressResponsablezone) || other.adressResponsablezone == adressResponsablezone)&&(identical(other.responsablezoneId, responsablezoneId) || other.responsablezoneId == responsablezoneId)&&(identical(other.adresse, adresse) || other.adresse == adresse)&&(identical(other.regionId, regionId) || other.regionId == regionId)&&(identical(other.regionCode, regionCode) || other.regionCode == regionCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,zoneId,zoneCode,zoneName,dateCreated,zoneResponsableName,contactResponsable,emailResponsablezone,adressResponsablezone,responsablezoneId,adresse,regionId,regionCode);

@override
String toString() {
  return 'ZoneResponseModel(zoneId: $zoneId, zoneCode: $zoneCode, zoneName: $zoneName, dateCreated: $dateCreated, zoneResponsableName: $zoneResponsableName, contactResponsable: $contactResponsable, emailResponsablezone: $emailResponsablezone, adressResponsablezone: $adressResponsablezone, responsablezoneId: $responsablezoneId, adresse: $adresse, regionId: $regionId, regionCode: $regionCode)';
}


}

/// @nodoc
abstract mixin class _$ZoneResponseModelCopyWith<$Res> implements $ZoneResponseModelCopyWith<$Res> {
  factory _$ZoneResponseModelCopyWith(_ZoneResponseModel value, $Res Function(_ZoneResponseModel) _then) = __$ZoneResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? zoneId, String? zoneCode, String? zoneName, String? dateCreated, String? zoneResponsableName, String? contactResponsable, String? emailResponsablezone, String? adressResponsablezone, String? responsablezoneId, String? adresse, String? regionId, String? regionCode
});




}
/// @nodoc
class __$ZoneResponseModelCopyWithImpl<$Res>
    implements _$ZoneResponseModelCopyWith<$Res> {
  __$ZoneResponseModelCopyWithImpl(this._self, this._then);

  final _ZoneResponseModel _self;
  final $Res Function(_ZoneResponseModel) _then;

/// Create a copy of ZoneResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? zoneId = freezed,Object? zoneCode = freezed,Object? zoneName = freezed,Object? dateCreated = freezed,Object? zoneResponsableName = freezed,Object? contactResponsable = freezed,Object? emailResponsablezone = freezed,Object? adressResponsablezone = freezed,Object? responsablezoneId = freezed,Object? adresse = freezed,Object? regionId = freezed,Object? regionCode = freezed,}) {
  return _then(_ZoneResponseModel(
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
mixin _$DiscipleCelluleModel {

 String? get fullName; String? get isBaptierOrNot;
/// Create a copy of DiscipleCelluleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiscipleCelluleModelCopyWith<DiscipleCelluleModel> get copyWith => _$DiscipleCelluleModelCopyWithImpl<DiscipleCelluleModel>(this as DiscipleCelluleModel, _$identity);

  /// Serializes this DiscipleCelluleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiscipleCelluleModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.isBaptierOrNot, isBaptierOrNot) || other.isBaptierOrNot == isBaptierOrNot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,isBaptierOrNot);

@override
String toString() {
  return 'DiscipleCelluleModel(fullName: $fullName, isBaptierOrNot: $isBaptierOrNot)';
}


}

/// @nodoc
abstract mixin class $DiscipleCelluleModelCopyWith<$Res>  {
  factory $DiscipleCelluleModelCopyWith(DiscipleCelluleModel value, $Res Function(DiscipleCelluleModel) _then) = _$DiscipleCelluleModelCopyWithImpl;
@useResult
$Res call({
 String? fullName, String? isBaptierOrNot
});




}
/// @nodoc
class _$DiscipleCelluleModelCopyWithImpl<$Res>
    implements $DiscipleCelluleModelCopyWith<$Res> {
  _$DiscipleCelluleModelCopyWithImpl(this._self, this._then);

  final DiscipleCelluleModel _self;
  final $Res Function(DiscipleCelluleModel) _then;

/// Create a copy of DiscipleCelluleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = freezed,Object? isBaptierOrNot = freezed,}) {
  return _then(_self.copyWith(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,isBaptierOrNot: freezed == isBaptierOrNot ? _self.isBaptierOrNot : isBaptierOrNot // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DiscipleCelluleModel].
extension DiscipleCelluleModelPatterns on DiscipleCelluleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiscipleCelluleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiscipleCelluleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiscipleCelluleModel value)  $default,){
final _that = this;
switch (_that) {
case _DiscipleCelluleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiscipleCelluleModel value)?  $default,){
final _that = this;
switch (_that) {
case _DiscipleCelluleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? fullName,  String? isBaptierOrNot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiscipleCelluleModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? fullName,  String? isBaptierOrNot)  $default,) {final _that = this;
switch (_that) {
case _DiscipleCelluleModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? fullName,  String? isBaptierOrNot)?  $default,) {final _that = this;
switch (_that) {
case _DiscipleCelluleModel() when $default != null:
return $default(_that.fullName,_that.isBaptierOrNot);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiscipleCelluleModel implements DiscipleCelluleModel {
  const _DiscipleCelluleModel({this.fullName = "", this.isBaptierOrNot = ""});
  factory _DiscipleCelluleModel.fromJson(Map<String, dynamic> json) => _$DiscipleCelluleModelFromJson(json);

@override@JsonKey() final  String? fullName;
@override@JsonKey() final  String? isBaptierOrNot;

/// Create a copy of DiscipleCelluleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiscipleCelluleModelCopyWith<_DiscipleCelluleModel> get copyWith => __$DiscipleCelluleModelCopyWithImpl<_DiscipleCelluleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiscipleCelluleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiscipleCelluleModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.isBaptierOrNot, isBaptierOrNot) || other.isBaptierOrNot == isBaptierOrNot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,isBaptierOrNot);

@override
String toString() {
  return 'DiscipleCelluleModel(fullName: $fullName, isBaptierOrNot: $isBaptierOrNot)';
}


}

/// @nodoc
abstract mixin class _$DiscipleCelluleModelCopyWith<$Res> implements $DiscipleCelluleModelCopyWith<$Res> {
  factory _$DiscipleCelluleModelCopyWith(_DiscipleCelluleModel value, $Res Function(_DiscipleCelluleModel) _then) = __$DiscipleCelluleModelCopyWithImpl;
@override @useResult
$Res call({
 String? fullName, String? isBaptierOrNot
});




}
/// @nodoc
class __$DiscipleCelluleModelCopyWithImpl<$Res>
    implements _$DiscipleCelluleModelCopyWith<$Res> {
  __$DiscipleCelluleModelCopyWithImpl(this._self, this._then);

  final _DiscipleCelluleModel _self;
  final $Res Function(_DiscipleCelluleModel) _then;

/// Create a copy of DiscipleCelluleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = freezed,Object? isBaptierOrNot = freezed,}) {
  return _then(_DiscipleCelluleModel(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,isBaptierOrNot: freezed == isBaptierOrNot ? _self.isBaptierOrNot : isBaptierOrNot // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RapportSuggestionModel {

 String? get temoignage; String? get suggestions; String? get probleme;
/// Create a copy of RapportSuggestionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RapportSuggestionModelCopyWith<RapportSuggestionModel> get copyWith => _$RapportSuggestionModelCopyWithImpl<RapportSuggestionModel>(this as RapportSuggestionModel, _$identity);

  /// Serializes this RapportSuggestionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RapportSuggestionModel&&(identical(other.temoignage, temoignage) || other.temoignage == temoignage)&&(identical(other.suggestions, suggestions) || other.suggestions == suggestions)&&(identical(other.probleme, probleme) || other.probleme == probleme));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temoignage,suggestions,probleme);

@override
String toString() {
  return 'RapportSuggestionModel(temoignage: $temoignage, suggestions: $suggestions, probleme: $probleme)';
}


}

/// @nodoc
abstract mixin class $RapportSuggestionModelCopyWith<$Res>  {
  factory $RapportSuggestionModelCopyWith(RapportSuggestionModel value, $Res Function(RapportSuggestionModel) _then) = _$RapportSuggestionModelCopyWithImpl;
@useResult
$Res call({
 String? temoignage, String? suggestions, String? probleme
});




}
/// @nodoc
class _$RapportSuggestionModelCopyWithImpl<$Res>
    implements $RapportSuggestionModelCopyWith<$Res> {
  _$RapportSuggestionModelCopyWithImpl(this._self, this._then);

  final RapportSuggestionModel _self;
  final $Res Function(RapportSuggestionModel) _then;

/// Create a copy of RapportSuggestionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temoignage = freezed,Object? suggestions = freezed,Object? probleme = freezed,}) {
  return _then(_self.copyWith(
temoignage: freezed == temoignage ? _self.temoignage : temoignage // ignore: cast_nullable_to_non_nullable
as String?,suggestions: freezed == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as String?,probleme: freezed == probleme ? _self.probleme : probleme // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RapportSuggestionModel].
extension RapportSuggestionModelPatterns on RapportSuggestionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RapportSuggestionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RapportSuggestionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RapportSuggestionModel value)  $default,){
final _that = this;
switch (_that) {
case _RapportSuggestionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RapportSuggestionModel value)?  $default,){
final _that = this;
switch (_that) {
case _RapportSuggestionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? temoignage,  String? suggestions,  String? probleme)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RapportSuggestionModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? temoignage,  String? suggestions,  String? probleme)  $default,) {final _that = this;
switch (_that) {
case _RapportSuggestionModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? temoignage,  String? suggestions,  String? probleme)?  $default,) {final _that = this;
switch (_that) {
case _RapportSuggestionModel() when $default != null:
return $default(_that.temoignage,_that.suggestions,_that.probleme);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RapportSuggestionModel implements RapportSuggestionModel {
   _RapportSuggestionModel({this.temoignage = "", this.suggestions = "", this.probleme = ""});
  factory _RapportSuggestionModel.fromJson(Map<String, dynamic> json) => _$RapportSuggestionModelFromJson(json);

@override@JsonKey() final  String? temoignage;
@override@JsonKey() final  String? suggestions;
@override@JsonKey() final  String? probleme;

/// Create a copy of RapportSuggestionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RapportSuggestionModelCopyWith<_RapportSuggestionModel> get copyWith => __$RapportSuggestionModelCopyWithImpl<_RapportSuggestionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RapportSuggestionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RapportSuggestionModel&&(identical(other.temoignage, temoignage) || other.temoignage == temoignage)&&(identical(other.suggestions, suggestions) || other.suggestions == suggestions)&&(identical(other.probleme, probleme) || other.probleme == probleme));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temoignage,suggestions,probleme);

@override
String toString() {
  return 'RapportSuggestionModel(temoignage: $temoignage, suggestions: $suggestions, probleme: $probleme)';
}


}

/// @nodoc
abstract mixin class _$RapportSuggestionModelCopyWith<$Res> implements $RapportSuggestionModelCopyWith<$Res> {
  factory _$RapportSuggestionModelCopyWith(_RapportSuggestionModel value, $Res Function(_RapportSuggestionModel) _then) = __$RapportSuggestionModelCopyWithImpl;
@override @useResult
$Res call({
 String? temoignage, String? suggestions, String? probleme
});




}
/// @nodoc
class __$RapportSuggestionModelCopyWithImpl<$Res>
    implements _$RapportSuggestionModelCopyWith<$Res> {
  __$RapportSuggestionModelCopyWithImpl(this._self, this._then);

  final _RapportSuggestionModel _self;
  final $Res Function(_RapportSuggestionModel) _then;

/// Create a copy of RapportSuggestionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temoignage = freezed,Object? suggestions = freezed,Object? probleme = freezed,}) {
  return _then(_RapportSuggestionModel(
temoignage: freezed == temoignage ? _self.temoignage : temoignage // ignore: cast_nullable_to_non_nullable
as String?,suggestions: freezed == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as String?,probleme: freezed == probleme ? _self.probleme : probleme // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RequestHumaneSectionActivityResponseModel {

 String get suggestions; String get probleme; String get temoignage;
/// Create a copy of RequestHumaneSectionActivityResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestHumaneSectionActivityResponseModelCopyWith<RequestHumaneSectionActivityResponseModel> get copyWith => _$RequestHumaneSectionActivityResponseModelCopyWithImpl<RequestHumaneSectionActivityResponseModel>(this as RequestHumaneSectionActivityResponseModel, _$identity);

  /// Serializes this RequestHumaneSectionActivityResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestHumaneSectionActivityResponseModel&&(identical(other.suggestions, suggestions) || other.suggestions == suggestions)&&(identical(other.probleme, probleme) || other.probleme == probleme)&&(identical(other.temoignage, temoignage) || other.temoignage == temoignage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,suggestions,probleme,temoignage);

@override
String toString() {
  return 'RequestHumaneSectionActivityResponseModel(suggestions: $suggestions, probleme: $probleme, temoignage: $temoignage)';
}


}

/// @nodoc
abstract mixin class $RequestHumaneSectionActivityResponseModelCopyWith<$Res>  {
  factory $RequestHumaneSectionActivityResponseModelCopyWith(RequestHumaneSectionActivityResponseModel value, $Res Function(RequestHumaneSectionActivityResponseModel) _then) = _$RequestHumaneSectionActivityResponseModelCopyWithImpl;
@useResult
$Res call({
 String suggestions, String probleme, String temoignage
});




}
/// @nodoc
class _$RequestHumaneSectionActivityResponseModelCopyWithImpl<$Res>
    implements $RequestHumaneSectionActivityResponseModelCopyWith<$Res> {
  _$RequestHumaneSectionActivityResponseModelCopyWithImpl(this._self, this._then);

  final RequestHumaneSectionActivityResponseModel _self;
  final $Res Function(RequestHumaneSectionActivityResponseModel) _then;

/// Create a copy of RequestHumaneSectionActivityResponseModel
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


/// Adds pattern-matching-related methods to [RequestHumaneSectionActivityResponseModel].
extension RequestHumaneSectionActivityResponseModelPatterns on RequestHumaneSectionActivityResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestHumaneSectionActivityResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestHumaneSectionActivityResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestHumaneSectionActivityResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _RequestHumaneSectionActivityResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestHumaneSectionActivityResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _RequestHumaneSectionActivityResponseModel() when $default != null:
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
case _RequestHumaneSectionActivityResponseModel() when $default != null:
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
case _RequestHumaneSectionActivityResponseModel():
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
case _RequestHumaneSectionActivityResponseModel() when $default != null:
return $default(_that.suggestions,_that.probleme,_that.temoignage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestHumaneSectionActivityResponseModel implements RequestHumaneSectionActivityResponseModel {
  const _RequestHumaneSectionActivityResponseModel({this.suggestions = "", this.probleme = "", this.temoignage = ""});
  factory _RequestHumaneSectionActivityResponseModel.fromJson(Map<String, dynamic> json) => _$RequestHumaneSectionActivityResponseModelFromJson(json);

@override@JsonKey() final  String suggestions;
@override@JsonKey() final  String probleme;
@override@JsonKey() final  String temoignage;

/// Create a copy of RequestHumaneSectionActivityResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestHumaneSectionActivityResponseModelCopyWith<_RequestHumaneSectionActivityResponseModel> get copyWith => __$RequestHumaneSectionActivityResponseModelCopyWithImpl<_RequestHumaneSectionActivityResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestHumaneSectionActivityResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestHumaneSectionActivityResponseModel&&(identical(other.suggestions, suggestions) || other.suggestions == suggestions)&&(identical(other.probleme, probleme) || other.probleme == probleme)&&(identical(other.temoignage, temoignage) || other.temoignage == temoignage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,suggestions,probleme,temoignage);

@override
String toString() {
  return 'RequestHumaneSectionActivityResponseModel(suggestions: $suggestions, probleme: $probleme, temoignage: $temoignage)';
}


}

/// @nodoc
abstract mixin class _$RequestHumaneSectionActivityResponseModelCopyWith<$Res> implements $RequestHumaneSectionActivityResponseModelCopyWith<$Res> {
  factory _$RequestHumaneSectionActivityResponseModelCopyWith(_RequestHumaneSectionActivityResponseModel value, $Res Function(_RequestHumaneSectionActivityResponseModel) _then) = __$RequestHumaneSectionActivityResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String suggestions, String probleme, String temoignage
});




}
/// @nodoc
class __$RequestHumaneSectionActivityResponseModelCopyWithImpl<$Res>
    implements _$RequestHumaneSectionActivityResponseModelCopyWith<$Res> {
  __$RequestHumaneSectionActivityResponseModelCopyWithImpl(this._self, this._then);

  final _RequestHumaneSectionActivityResponseModel _self;
  final $Res Function(_RequestHumaneSectionActivityResponseModel) _then;

/// Create a copy of RequestHumaneSectionActivityResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? suggestions = null,Object? probleme = null,Object? temoignage = null,}) {
  return _then(_RequestHumaneSectionActivityResponseModel(
suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as String,probleme: null == probleme ? _self.probleme : probleme // ignore: cast_nullable_to_non_nullable
as String,temoignage: null == temoignage ? _self.temoignage : temoignage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RapportCelluleResponseModel {

 String? get codeZone; String? get fullNameRespoZone; String? get contactRespoZone; String? get codeSecteur; String? get responsableCelluleId; String? get fullNameRespoSecteur; String? get contactRespoSecteur; String? get codeCellule; String? get fullNameRespoCellule; String? get contactRespoCellule; String? get jourCellule; String? get offrande; String? get nombreBaptiser; String? get nombreNonBaptiser; List<DiscipleCelluleModel> get discipleCellule; String? get id; String? get formAdministrationIsSubmit; String? get formAdministrationSubmitDate; String? get resumerPredication; String? get lieu;// required String? nombreBaptiser,
 RequestHumaneSectionAssistanceResponseModel get assistanceNonBaptiser; RequestHumaneSectionAssistanceResponseModel get assistanceNouveau; RequestHumaneSectionAssistanceResponseModel get assistanceInviter; RequestAuherResponseModel get assistanceCellule;// id,
 String? get formAssistanceIsSubmit; String? get formAssistanceSubmitDate; List<RequestSuggestionResponseModel> get visiteMenbre; List<RequestSuggestionResponseModel> get visiteOuvrier; String? get dateActivitySubmited; String? get formActivityIsSubmit; String? get formActivitySubmitDate; List<RequestHumaneSectionActivityResponseModel> get suggestions; List<WeekActivityResponseModel> get weekActivity; String? get faisAssignaler; String? get ouvrierSpritualLive; String? get formSuggestionIsSubmit; String? get formSuggestionSubmitDate; String? get tag;
/// Create a copy of RapportCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RapportCelluleResponseModelCopyWith<RapportCelluleResponseModel> get copyWith => _$RapportCelluleResponseModelCopyWithImpl<RapportCelluleResponseModel>(this as RapportCelluleResponseModel, _$identity);

  /// Serializes this RapportCelluleResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RapportCelluleResponseModel&&(identical(other.codeZone, codeZone) || other.codeZone == codeZone)&&(identical(other.fullNameRespoZone, fullNameRespoZone) || other.fullNameRespoZone == fullNameRespoZone)&&(identical(other.contactRespoZone, contactRespoZone) || other.contactRespoZone == contactRespoZone)&&(identical(other.codeSecteur, codeSecteur) || other.codeSecteur == codeSecteur)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId)&&(identical(other.fullNameRespoSecteur, fullNameRespoSecteur) || other.fullNameRespoSecteur == fullNameRespoSecteur)&&(identical(other.contactRespoSecteur, contactRespoSecteur) || other.contactRespoSecteur == contactRespoSecteur)&&(identical(other.codeCellule, codeCellule) || other.codeCellule == codeCellule)&&(identical(other.fullNameRespoCellule, fullNameRespoCellule) || other.fullNameRespoCellule == fullNameRespoCellule)&&(identical(other.contactRespoCellule, contactRespoCellule) || other.contactRespoCellule == contactRespoCellule)&&(identical(other.jourCellule, jourCellule) || other.jourCellule == jourCellule)&&(identical(other.offrande, offrande) || other.offrande == offrande)&&(identical(other.nombreBaptiser, nombreBaptiser) || other.nombreBaptiser == nombreBaptiser)&&(identical(other.nombreNonBaptiser, nombreNonBaptiser) || other.nombreNonBaptiser == nombreNonBaptiser)&&const DeepCollectionEquality().equals(other.discipleCellule, discipleCellule)&&(identical(other.id, id) || other.id == id)&&(identical(other.formAdministrationIsSubmit, formAdministrationIsSubmit) || other.formAdministrationIsSubmit == formAdministrationIsSubmit)&&(identical(other.formAdministrationSubmitDate, formAdministrationSubmitDate) || other.formAdministrationSubmitDate == formAdministrationSubmitDate)&&(identical(other.resumerPredication, resumerPredication) || other.resumerPredication == resumerPredication)&&(identical(other.lieu, lieu) || other.lieu == lieu)&&(identical(other.assistanceNonBaptiser, assistanceNonBaptiser) || other.assistanceNonBaptiser == assistanceNonBaptiser)&&(identical(other.assistanceNouveau, assistanceNouveau) || other.assistanceNouveau == assistanceNouveau)&&(identical(other.assistanceInviter, assistanceInviter) || other.assistanceInviter == assistanceInviter)&&(identical(other.assistanceCellule, assistanceCellule) || other.assistanceCellule == assistanceCellule)&&(identical(other.formAssistanceIsSubmit, formAssistanceIsSubmit) || other.formAssistanceIsSubmit == formAssistanceIsSubmit)&&(identical(other.formAssistanceSubmitDate, formAssistanceSubmitDate) || other.formAssistanceSubmitDate == formAssistanceSubmitDate)&&const DeepCollectionEquality().equals(other.visiteMenbre, visiteMenbre)&&const DeepCollectionEquality().equals(other.visiteOuvrier, visiteOuvrier)&&(identical(other.dateActivitySubmited, dateActivitySubmited) || other.dateActivitySubmited == dateActivitySubmited)&&(identical(other.formActivityIsSubmit, formActivityIsSubmit) || other.formActivityIsSubmit == formActivityIsSubmit)&&(identical(other.formActivitySubmitDate, formActivitySubmitDate) || other.formActivitySubmitDate == formActivitySubmitDate)&&const DeepCollectionEquality().equals(other.suggestions, suggestions)&&const DeepCollectionEquality().equals(other.weekActivity, weekActivity)&&(identical(other.faisAssignaler, faisAssignaler) || other.faisAssignaler == faisAssignaler)&&(identical(other.ouvrierSpritualLive, ouvrierSpritualLive) || other.ouvrierSpritualLive == ouvrierSpritualLive)&&(identical(other.formSuggestionIsSubmit, formSuggestionIsSubmit) || other.formSuggestionIsSubmit == formSuggestionIsSubmit)&&(identical(other.formSuggestionSubmitDate, formSuggestionSubmitDate) || other.formSuggestionSubmitDate == formSuggestionSubmitDate)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,codeZone,fullNameRespoZone,contactRespoZone,codeSecteur,responsableCelluleId,fullNameRespoSecteur,contactRespoSecteur,codeCellule,fullNameRespoCellule,contactRespoCellule,jourCellule,offrande,nombreBaptiser,nombreNonBaptiser,const DeepCollectionEquality().hash(discipleCellule),id,formAdministrationIsSubmit,formAdministrationSubmitDate,resumerPredication,lieu,assistanceNonBaptiser,assistanceNouveau,assistanceInviter,assistanceCellule,formAssistanceIsSubmit,formAssistanceSubmitDate,const DeepCollectionEquality().hash(visiteMenbre),const DeepCollectionEquality().hash(visiteOuvrier),dateActivitySubmited,formActivityIsSubmit,formActivitySubmitDate,const DeepCollectionEquality().hash(suggestions),const DeepCollectionEquality().hash(weekActivity),faisAssignaler,ouvrierSpritualLive,formSuggestionIsSubmit,formSuggestionSubmitDate,tag]);

@override
String toString() {
  return 'RapportCelluleResponseModel(codeZone: $codeZone, fullNameRespoZone: $fullNameRespoZone, contactRespoZone: $contactRespoZone, codeSecteur: $codeSecteur, responsableCelluleId: $responsableCelluleId, fullNameRespoSecteur: $fullNameRespoSecteur, contactRespoSecteur: $contactRespoSecteur, codeCellule: $codeCellule, fullNameRespoCellule: $fullNameRespoCellule, contactRespoCellule: $contactRespoCellule, jourCellule: $jourCellule, offrande: $offrande, nombreBaptiser: $nombreBaptiser, nombreNonBaptiser: $nombreNonBaptiser, discipleCellule: $discipleCellule, id: $id, formAdministrationIsSubmit: $formAdministrationIsSubmit, formAdministrationSubmitDate: $formAdministrationSubmitDate, resumerPredication: $resumerPredication, lieu: $lieu, assistanceNonBaptiser: $assistanceNonBaptiser, assistanceNouveau: $assistanceNouveau, assistanceInviter: $assistanceInviter, assistanceCellule: $assistanceCellule, formAssistanceIsSubmit: $formAssistanceIsSubmit, formAssistanceSubmitDate: $formAssistanceSubmitDate, visiteMenbre: $visiteMenbre, visiteOuvrier: $visiteOuvrier, dateActivitySubmited: $dateActivitySubmited, formActivityIsSubmit: $formActivityIsSubmit, formActivitySubmitDate: $formActivitySubmitDate, suggestions: $suggestions, weekActivity: $weekActivity, faisAssignaler: $faisAssignaler, ouvrierSpritualLive: $ouvrierSpritualLive, formSuggestionIsSubmit: $formSuggestionIsSubmit, formSuggestionSubmitDate: $formSuggestionSubmitDate, tag: $tag)';
}


}

/// @nodoc
abstract mixin class $RapportCelluleResponseModelCopyWith<$Res>  {
  factory $RapportCelluleResponseModelCopyWith(RapportCelluleResponseModel value, $Res Function(RapportCelluleResponseModel) _then) = _$RapportCelluleResponseModelCopyWithImpl;
@useResult
$Res call({
 String? codeZone, String? fullNameRespoZone, String? contactRespoZone, String? codeSecteur, String? responsableCelluleId, String? fullNameRespoSecteur, String? contactRespoSecteur, String? codeCellule, String? fullNameRespoCellule, String? contactRespoCellule, String? jourCellule, String? offrande, String? nombreBaptiser, String? nombreNonBaptiser, List<DiscipleCelluleModel> discipleCellule, String? id, String? formAdministrationIsSubmit, String? formAdministrationSubmitDate, String? resumerPredication, String? lieu, RequestHumaneSectionAssistanceResponseModel assistanceNonBaptiser, RequestHumaneSectionAssistanceResponseModel assistanceNouveau, RequestHumaneSectionAssistanceResponseModel assistanceInviter, RequestAuherResponseModel assistanceCellule, String? formAssistanceIsSubmit, String? formAssistanceSubmitDate, List<RequestSuggestionResponseModel> visiteMenbre, List<RequestSuggestionResponseModel> visiteOuvrier, String? dateActivitySubmited, String? formActivityIsSubmit, String? formActivitySubmitDate, List<RequestHumaneSectionActivityResponseModel> suggestions, List<WeekActivityResponseModel> weekActivity, String? faisAssignaler, String? ouvrierSpritualLive, String? formSuggestionIsSubmit, String? formSuggestionSubmitDate, String? tag
});


$RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> get assistanceNonBaptiser;$RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> get assistanceNouveau;$RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> get assistanceInviter;$RequestAuherResponseModelCopyWith<$Res> get assistanceCellule;

}
/// @nodoc
class _$RapportCelluleResponseModelCopyWithImpl<$Res>
    implements $RapportCelluleResponseModelCopyWith<$Res> {
  _$RapportCelluleResponseModelCopyWithImpl(this._self, this._then);

  final RapportCelluleResponseModel _self;
  final $Res Function(RapportCelluleResponseModel) _then;

/// Create a copy of RapportCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? codeZone = freezed,Object? fullNameRespoZone = freezed,Object? contactRespoZone = freezed,Object? codeSecteur = freezed,Object? responsableCelluleId = freezed,Object? fullNameRespoSecteur = freezed,Object? contactRespoSecteur = freezed,Object? codeCellule = freezed,Object? fullNameRespoCellule = freezed,Object? contactRespoCellule = freezed,Object? jourCellule = freezed,Object? offrande = freezed,Object? nombreBaptiser = freezed,Object? nombreNonBaptiser = freezed,Object? discipleCellule = null,Object? id = freezed,Object? formAdministrationIsSubmit = freezed,Object? formAdministrationSubmitDate = freezed,Object? resumerPredication = freezed,Object? lieu = freezed,Object? assistanceNonBaptiser = null,Object? assistanceNouveau = null,Object? assistanceInviter = null,Object? assistanceCellule = null,Object? formAssistanceIsSubmit = freezed,Object? formAssistanceSubmitDate = freezed,Object? visiteMenbre = null,Object? visiteOuvrier = null,Object? dateActivitySubmited = freezed,Object? formActivityIsSubmit = freezed,Object? formActivitySubmitDate = freezed,Object? suggestions = null,Object? weekActivity = null,Object? faisAssignaler = freezed,Object? ouvrierSpritualLive = freezed,Object? formSuggestionIsSubmit = freezed,Object? formSuggestionSubmitDate = freezed,Object? tag = freezed,}) {
  return _then(_self.copyWith(
codeZone: freezed == codeZone ? _self.codeZone : codeZone // ignore: cast_nullable_to_non_nullable
as String?,fullNameRespoZone: freezed == fullNameRespoZone ? _self.fullNameRespoZone : fullNameRespoZone // ignore: cast_nullable_to_non_nullable
as String?,contactRespoZone: freezed == contactRespoZone ? _self.contactRespoZone : contactRespoZone // ignore: cast_nullable_to_non_nullable
as String?,codeSecteur: freezed == codeSecteur ? _self.codeSecteur : codeSecteur // ignore: cast_nullable_to_non_nullable
as String?,responsableCelluleId: freezed == responsableCelluleId ? _self.responsableCelluleId : responsableCelluleId // ignore: cast_nullable_to_non_nullable
as String?,fullNameRespoSecteur: freezed == fullNameRespoSecteur ? _self.fullNameRespoSecteur : fullNameRespoSecteur // ignore: cast_nullable_to_non_nullable
as String?,contactRespoSecteur: freezed == contactRespoSecteur ? _self.contactRespoSecteur : contactRespoSecteur // ignore: cast_nullable_to_non_nullable
as String?,codeCellule: freezed == codeCellule ? _self.codeCellule : codeCellule // ignore: cast_nullable_to_non_nullable
as String?,fullNameRespoCellule: freezed == fullNameRespoCellule ? _self.fullNameRespoCellule : fullNameRespoCellule // ignore: cast_nullable_to_non_nullable
as String?,contactRespoCellule: freezed == contactRespoCellule ? _self.contactRespoCellule : contactRespoCellule // ignore: cast_nullable_to_non_nullable
as String?,jourCellule: freezed == jourCellule ? _self.jourCellule : jourCellule // ignore: cast_nullable_to_non_nullable
as String?,offrande: freezed == offrande ? _self.offrande : offrande // ignore: cast_nullable_to_non_nullable
as String?,nombreBaptiser: freezed == nombreBaptiser ? _self.nombreBaptiser : nombreBaptiser // ignore: cast_nullable_to_non_nullable
as String?,nombreNonBaptiser: freezed == nombreNonBaptiser ? _self.nombreNonBaptiser : nombreNonBaptiser // ignore: cast_nullable_to_non_nullable
as String?,discipleCellule: null == discipleCellule ? _self.discipleCellule : discipleCellule // ignore: cast_nullable_to_non_nullable
as List<DiscipleCelluleModel>,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,formAdministrationIsSubmit: freezed == formAdministrationIsSubmit ? _self.formAdministrationIsSubmit : formAdministrationIsSubmit // ignore: cast_nullable_to_non_nullable
as String?,formAdministrationSubmitDate: freezed == formAdministrationSubmitDate ? _self.formAdministrationSubmitDate : formAdministrationSubmitDate // ignore: cast_nullable_to_non_nullable
as String?,resumerPredication: freezed == resumerPredication ? _self.resumerPredication : resumerPredication // ignore: cast_nullable_to_non_nullable
as String?,lieu: freezed == lieu ? _self.lieu : lieu // ignore: cast_nullable_to_non_nullable
as String?,assistanceNonBaptiser: null == assistanceNonBaptiser ? _self.assistanceNonBaptiser : assistanceNonBaptiser // ignore: cast_nullable_to_non_nullable
as RequestHumaneSectionAssistanceResponseModel,assistanceNouveau: null == assistanceNouveau ? _self.assistanceNouveau : assistanceNouveau // ignore: cast_nullable_to_non_nullable
as RequestHumaneSectionAssistanceResponseModel,assistanceInviter: null == assistanceInviter ? _self.assistanceInviter : assistanceInviter // ignore: cast_nullable_to_non_nullable
as RequestHumaneSectionAssistanceResponseModel,assistanceCellule: null == assistanceCellule ? _self.assistanceCellule : assistanceCellule // ignore: cast_nullable_to_non_nullable
as RequestAuherResponseModel,formAssistanceIsSubmit: freezed == formAssistanceIsSubmit ? _self.formAssistanceIsSubmit : formAssistanceIsSubmit // ignore: cast_nullable_to_non_nullable
as String?,formAssistanceSubmitDate: freezed == formAssistanceSubmitDate ? _self.formAssistanceSubmitDate : formAssistanceSubmitDate // ignore: cast_nullable_to_non_nullable
as String?,visiteMenbre: null == visiteMenbre ? _self.visiteMenbre : visiteMenbre // ignore: cast_nullable_to_non_nullable
as List<RequestSuggestionResponseModel>,visiteOuvrier: null == visiteOuvrier ? _self.visiteOuvrier : visiteOuvrier // ignore: cast_nullable_to_non_nullable
as List<RequestSuggestionResponseModel>,dateActivitySubmited: freezed == dateActivitySubmited ? _self.dateActivitySubmited : dateActivitySubmited // ignore: cast_nullable_to_non_nullable
as String?,formActivityIsSubmit: freezed == formActivityIsSubmit ? _self.formActivityIsSubmit : formActivityIsSubmit // ignore: cast_nullable_to_non_nullable
as String?,formActivitySubmitDate: freezed == formActivitySubmitDate ? _self.formActivitySubmitDate : formActivitySubmitDate // ignore: cast_nullable_to_non_nullable
as String?,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<RequestHumaneSectionActivityResponseModel>,weekActivity: null == weekActivity ? _self.weekActivity : weekActivity // ignore: cast_nullable_to_non_nullable
as List<WeekActivityResponseModel>,faisAssignaler: freezed == faisAssignaler ? _self.faisAssignaler : faisAssignaler // ignore: cast_nullable_to_non_nullable
as String?,ouvrierSpritualLive: freezed == ouvrierSpritualLive ? _self.ouvrierSpritualLive : ouvrierSpritualLive // ignore: cast_nullable_to_non_nullable
as String?,formSuggestionIsSubmit: freezed == formSuggestionIsSubmit ? _self.formSuggestionIsSubmit : formSuggestionIsSubmit // ignore: cast_nullable_to_non_nullable
as String?,formSuggestionSubmitDate: freezed == formSuggestionSubmitDate ? _self.formSuggestionSubmitDate : formSuggestionSubmitDate // ignore: cast_nullable_to_non_nullable
as String?,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of RapportCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> get assistanceNonBaptiser {
  
  return $RequestHumaneSectionAssistanceResponseModelCopyWith<$Res>(_self.assistanceNonBaptiser, (value) {
    return _then(_self.copyWith(assistanceNonBaptiser: value));
  });
}/// Create a copy of RapportCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> get assistanceNouveau {
  
  return $RequestHumaneSectionAssistanceResponseModelCopyWith<$Res>(_self.assistanceNouveau, (value) {
    return _then(_self.copyWith(assistanceNouveau: value));
  });
}/// Create a copy of RapportCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> get assistanceInviter {
  
  return $RequestHumaneSectionAssistanceResponseModelCopyWith<$Res>(_self.assistanceInviter, (value) {
    return _then(_self.copyWith(assistanceInviter: value));
  });
}/// Create a copy of RapportCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestAuherResponseModelCopyWith<$Res> get assistanceCellule {
  
  return $RequestAuherResponseModelCopyWith<$Res>(_self.assistanceCellule, (value) {
    return _then(_self.copyWith(assistanceCellule: value));
  });
}
}


/// Adds pattern-matching-related methods to [RapportCelluleResponseModel].
extension RapportCelluleResponseModelPatterns on RapportCelluleResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RapportCelluleResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RapportCelluleResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RapportCelluleResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _RapportCelluleResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RapportCelluleResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _RapportCelluleResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? codeZone,  String? fullNameRespoZone,  String? contactRespoZone,  String? codeSecteur,  String? responsableCelluleId,  String? fullNameRespoSecteur,  String? contactRespoSecteur,  String? codeCellule,  String? fullNameRespoCellule,  String? contactRespoCellule,  String? jourCellule,  String? offrande,  String? nombreBaptiser,  String? nombreNonBaptiser,  List<DiscipleCelluleModel> discipleCellule,  String? id,  String? formAdministrationIsSubmit,  String? formAdministrationSubmitDate,  String? resumerPredication,  String? lieu,  RequestHumaneSectionAssistanceResponseModel assistanceNonBaptiser,  RequestHumaneSectionAssistanceResponseModel assistanceNouveau,  RequestHumaneSectionAssistanceResponseModel assistanceInviter,  RequestAuherResponseModel assistanceCellule,  String? formAssistanceIsSubmit,  String? formAssistanceSubmitDate,  List<RequestSuggestionResponseModel> visiteMenbre,  List<RequestSuggestionResponseModel> visiteOuvrier,  String? dateActivitySubmited,  String? formActivityIsSubmit,  String? formActivitySubmitDate,  List<RequestHumaneSectionActivityResponseModel> suggestions,  List<WeekActivityResponseModel> weekActivity,  String? faisAssignaler,  String? ouvrierSpritualLive,  String? formSuggestionIsSubmit,  String? formSuggestionSubmitDate,  String? tag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RapportCelluleResponseModel() when $default != null:
return $default(_that.codeZone,_that.fullNameRespoZone,_that.contactRespoZone,_that.codeSecteur,_that.responsableCelluleId,_that.fullNameRespoSecteur,_that.contactRespoSecteur,_that.codeCellule,_that.fullNameRespoCellule,_that.contactRespoCellule,_that.jourCellule,_that.offrande,_that.nombreBaptiser,_that.nombreNonBaptiser,_that.discipleCellule,_that.id,_that.formAdministrationIsSubmit,_that.formAdministrationSubmitDate,_that.resumerPredication,_that.lieu,_that.assistanceNonBaptiser,_that.assistanceNouveau,_that.assistanceInviter,_that.assistanceCellule,_that.formAssistanceIsSubmit,_that.formAssistanceSubmitDate,_that.visiteMenbre,_that.visiteOuvrier,_that.dateActivitySubmited,_that.formActivityIsSubmit,_that.formActivitySubmitDate,_that.suggestions,_that.weekActivity,_that.faisAssignaler,_that.ouvrierSpritualLive,_that.formSuggestionIsSubmit,_that.formSuggestionSubmitDate,_that.tag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? codeZone,  String? fullNameRespoZone,  String? contactRespoZone,  String? codeSecteur,  String? responsableCelluleId,  String? fullNameRespoSecteur,  String? contactRespoSecteur,  String? codeCellule,  String? fullNameRespoCellule,  String? contactRespoCellule,  String? jourCellule,  String? offrande,  String? nombreBaptiser,  String? nombreNonBaptiser,  List<DiscipleCelluleModel> discipleCellule,  String? id,  String? formAdministrationIsSubmit,  String? formAdministrationSubmitDate,  String? resumerPredication,  String? lieu,  RequestHumaneSectionAssistanceResponseModel assistanceNonBaptiser,  RequestHumaneSectionAssistanceResponseModel assistanceNouveau,  RequestHumaneSectionAssistanceResponseModel assistanceInviter,  RequestAuherResponseModel assistanceCellule,  String? formAssistanceIsSubmit,  String? formAssistanceSubmitDate,  List<RequestSuggestionResponseModel> visiteMenbre,  List<RequestSuggestionResponseModel> visiteOuvrier,  String? dateActivitySubmited,  String? formActivityIsSubmit,  String? formActivitySubmitDate,  List<RequestHumaneSectionActivityResponseModel> suggestions,  List<WeekActivityResponseModel> weekActivity,  String? faisAssignaler,  String? ouvrierSpritualLive,  String? formSuggestionIsSubmit,  String? formSuggestionSubmitDate,  String? tag)  $default,) {final _that = this;
switch (_that) {
case _RapportCelluleResponseModel():
return $default(_that.codeZone,_that.fullNameRespoZone,_that.contactRespoZone,_that.codeSecteur,_that.responsableCelluleId,_that.fullNameRespoSecteur,_that.contactRespoSecteur,_that.codeCellule,_that.fullNameRespoCellule,_that.contactRespoCellule,_that.jourCellule,_that.offrande,_that.nombreBaptiser,_that.nombreNonBaptiser,_that.discipleCellule,_that.id,_that.formAdministrationIsSubmit,_that.formAdministrationSubmitDate,_that.resumerPredication,_that.lieu,_that.assistanceNonBaptiser,_that.assistanceNouveau,_that.assistanceInviter,_that.assistanceCellule,_that.formAssistanceIsSubmit,_that.formAssistanceSubmitDate,_that.visiteMenbre,_that.visiteOuvrier,_that.dateActivitySubmited,_that.formActivityIsSubmit,_that.formActivitySubmitDate,_that.suggestions,_that.weekActivity,_that.faisAssignaler,_that.ouvrierSpritualLive,_that.formSuggestionIsSubmit,_that.formSuggestionSubmitDate,_that.tag);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? codeZone,  String? fullNameRespoZone,  String? contactRespoZone,  String? codeSecteur,  String? responsableCelluleId,  String? fullNameRespoSecteur,  String? contactRespoSecteur,  String? codeCellule,  String? fullNameRespoCellule,  String? contactRespoCellule,  String? jourCellule,  String? offrande,  String? nombreBaptiser,  String? nombreNonBaptiser,  List<DiscipleCelluleModel> discipleCellule,  String? id,  String? formAdministrationIsSubmit,  String? formAdministrationSubmitDate,  String? resumerPredication,  String? lieu,  RequestHumaneSectionAssistanceResponseModel assistanceNonBaptiser,  RequestHumaneSectionAssistanceResponseModel assistanceNouveau,  RequestHumaneSectionAssistanceResponseModel assistanceInviter,  RequestAuherResponseModel assistanceCellule,  String? formAssistanceIsSubmit,  String? formAssistanceSubmitDate,  List<RequestSuggestionResponseModel> visiteMenbre,  List<RequestSuggestionResponseModel> visiteOuvrier,  String? dateActivitySubmited,  String? formActivityIsSubmit,  String? formActivitySubmitDate,  List<RequestHumaneSectionActivityResponseModel> suggestions,  List<WeekActivityResponseModel> weekActivity,  String? faisAssignaler,  String? ouvrierSpritualLive,  String? formSuggestionIsSubmit,  String? formSuggestionSubmitDate,  String? tag)?  $default,) {final _that = this;
switch (_that) {
case _RapportCelluleResponseModel() when $default != null:
return $default(_that.codeZone,_that.fullNameRespoZone,_that.contactRespoZone,_that.codeSecteur,_that.responsableCelluleId,_that.fullNameRespoSecteur,_that.contactRespoSecteur,_that.codeCellule,_that.fullNameRespoCellule,_that.contactRespoCellule,_that.jourCellule,_that.offrande,_that.nombreBaptiser,_that.nombreNonBaptiser,_that.discipleCellule,_that.id,_that.formAdministrationIsSubmit,_that.formAdministrationSubmitDate,_that.resumerPredication,_that.lieu,_that.assistanceNonBaptiser,_that.assistanceNouveau,_that.assistanceInviter,_that.assistanceCellule,_that.formAssistanceIsSubmit,_that.formAssistanceSubmitDate,_that.visiteMenbre,_that.visiteOuvrier,_that.dateActivitySubmited,_that.formActivityIsSubmit,_that.formActivitySubmitDate,_that.suggestions,_that.weekActivity,_that.faisAssignaler,_that.ouvrierSpritualLive,_that.formSuggestionIsSubmit,_that.formSuggestionSubmitDate,_that.tag);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RapportCelluleResponseModel implements RapportCelluleResponseModel {
   _RapportCelluleResponseModel({required this.codeZone, required this.fullNameRespoZone, required this.contactRespoZone, required this.codeSecteur, required this.responsableCelluleId, required this.fullNameRespoSecteur, required this.contactRespoSecteur, required this.codeCellule, required this.fullNameRespoCellule, required this.contactRespoCellule, required this.jourCellule, required this.offrande, required this.nombreBaptiser, required this.nombreNonBaptiser, final  List<DiscipleCelluleModel> discipleCellule = const [DiscipleCelluleModel(fullName: "", isBaptierOrNot: "")], required this.id, this.formAdministrationIsSubmit = 'false', required this.formAdministrationSubmitDate, required this.resumerPredication, required this.lieu, this.assistanceNonBaptiser = const RequestHumaneSectionAssistanceResponseModel(libelle: '', toutPetit: "", juniors: '', cadets: "", total: 0), this.assistanceNouveau = const RequestHumaneSectionAssistanceResponseModel(libelle: '', toutPetit: "", juniors: '', cadets: "", total: 0), this.assistanceInviter = const RequestHumaneSectionAssistanceResponseModel(libelle: '', toutPetit: "", juniors: '', cadets: "", total: 0), this.assistanceCellule = const RequestAuherResponseModel(libelle: '', formationNewDFB: '', formationNewBaptDFD: '', visiteMenbre: '', visiteDisciple: '', nbTravailleurs: '', nbEleveAndEtudiants: '', nbOuvrierEM: '', nbOuvrierAutreDepatementDirigeantEM: '', nbFormationNiveau2: '', ngAgendaEM: '', nbDecisionnaires: '', id: '', count: 0), this.formAssistanceIsSubmit = 'false', required this.formAssistanceSubmitDate, final  List<RequestSuggestionResponseModel> visiteMenbre = const [RequestSuggestionResponseModel(fullname: "", recommandation: "", isDisciple: false, probleme: "")], final  List<RequestSuggestionResponseModel> visiteOuvrier = const [RequestSuggestionResponseModel(fullname: "", recommandation: "", isDisciple: false, probleme: "")], required this.dateActivitySubmited, this.formActivityIsSubmit = 'false', required this.formActivitySubmitDate, final  List<RequestHumaneSectionActivityResponseModel> suggestions = const [RequestHumaneSectionActivityResponseModel(suggestions: "", probleme: "", temoignage: "")], final  List<WeekActivityResponseModel> weekActivity = const [WeekActivityResponseModel(date: '', orateur: '', lieu: '', programmeNature: '', theme: '')], required this.faisAssignaler, required this.ouvrierSpritualLive, this.formSuggestionIsSubmit = 'false', required this.formSuggestionSubmitDate, this.tag = 'en_cours'}): _discipleCellule = discipleCellule,_visiteMenbre = visiteMenbre,_visiteOuvrier = visiteOuvrier,_suggestions = suggestions,_weekActivity = weekActivity;
  factory _RapportCelluleResponseModel.fromJson(Map<String, dynamic> json) => _$RapportCelluleResponseModelFromJson(json);

@override final  String? codeZone;
@override final  String? fullNameRespoZone;
@override final  String? contactRespoZone;
@override final  String? codeSecteur;
@override final  String? responsableCelluleId;
@override final  String? fullNameRespoSecteur;
@override final  String? contactRespoSecteur;
@override final  String? codeCellule;
@override final  String? fullNameRespoCellule;
@override final  String? contactRespoCellule;
@override final  String? jourCellule;
@override final  String? offrande;
@override final  String? nombreBaptiser;
@override final  String? nombreNonBaptiser;
 final  List<DiscipleCelluleModel> _discipleCellule;
@override@JsonKey() List<DiscipleCelluleModel> get discipleCellule {
  if (_discipleCellule is EqualUnmodifiableListView) return _discipleCellule;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_discipleCellule);
}

@override final  String? id;
@override@JsonKey() final  String? formAdministrationIsSubmit;
@override final  String? formAdministrationSubmitDate;
@override final  String? resumerPredication;
@override final  String? lieu;
// required String? nombreBaptiser,
@override@JsonKey() final  RequestHumaneSectionAssistanceResponseModel assistanceNonBaptiser;
@override@JsonKey() final  RequestHumaneSectionAssistanceResponseModel assistanceNouveau;
@override@JsonKey() final  RequestHumaneSectionAssistanceResponseModel assistanceInviter;
@override@JsonKey() final  RequestAuherResponseModel assistanceCellule;
// id,
@override@JsonKey() final  String? formAssistanceIsSubmit;
@override final  String? formAssistanceSubmitDate;
 final  List<RequestSuggestionResponseModel> _visiteMenbre;
@override@JsonKey() List<RequestSuggestionResponseModel> get visiteMenbre {
  if (_visiteMenbre is EqualUnmodifiableListView) return _visiteMenbre;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visiteMenbre);
}

 final  List<RequestSuggestionResponseModel> _visiteOuvrier;
@override@JsonKey() List<RequestSuggestionResponseModel> get visiteOuvrier {
  if (_visiteOuvrier is EqualUnmodifiableListView) return _visiteOuvrier;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visiteOuvrier);
}

@override final  String? dateActivitySubmited;
@override@JsonKey() final  String? formActivityIsSubmit;
@override final  String? formActivitySubmitDate;
 final  List<RequestHumaneSectionActivityResponseModel> _suggestions;
@override@JsonKey() List<RequestHumaneSectionActivityResponseModel> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

 final  List<WeekActivityResponseModel> _weekActivity;
@override@JsonKey() List<WeekActivityResponseModel> get weekActivity {
  if (_weekActivity is EqualUnmodifiableListView) return _weekActivity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weekActivity);
}

@override final  String? faisAssignaler;
@override final  String? ouvrierSpritualLive;
@override@JsonKey() final  String? formSuggestionIsSubmit;
@override final  String? formSuggestionSubmitDate;
@override@JsonKey() final  String? tag;

/// Create a copy of RapportCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RapportCelluleResponseModelCopyWith<_RapportCelluleResponseModel> get copyWith => __$RapportCelluleResponseModelCopyWithImpl<_RapportCelluleResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RapportCelluleResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RapportCelluleResponseModel&&(identical(other.codeZone, codeZone) || other.codeZone == codeZone)&&(identical(other.fullNameRespoZone, fullNameRespoZone) || other.fullNameRespoZone == fullNameRespoZone)&&(identical(other.contactRespoZone, contactRespoZone) || other.contactRespoZone == contactRespoZone)&&(identical(other.codeSecteur, codeSecteur) || other.codeSecteur == codeSecteur)&&(identical(other.responsableCelluleId, responsableCelluleId) || other.responsableCelluleId == responsableCelluleId)&&(identical(other.fullNameRespoSecteur, fullNameRespoSecteur) || other.fullNameRespoSecteur == fullNameRespoSecteur)&&(identical(other.contactRespoSecteur, contactRespoSecteur) || other.contactRespoSecteur == contactRespoSecteur)&&(identical(other.codeCellule, codeCellule) || other.codeCellule == codeCellule)&&(identical(other.fullNameRespoCellule, fullNameRespoCellule) || other.fullNameRespoCellule == fullNameRespoCellule)&&(identical(other.contactRespoCellule, contactRespoCellule) || other.contactRespoCellule == contactRespoCellule)&&(identical(other.jourCellule, jourCellule) || other.jourCellule == jourCellule)&&(identical(other.offrande, offrande) || other.offrande == offrande)&&(identical(other.nombreBaptiser, nombreBaptiser) || other.nombreBaptiser == nombreBaptiser)&&(identical(other.nombreNonBaptiser, nombreNonBaptiser) || other.nombreNonBaptiser == nombreNonBaptiser)&&const DeepCollectionEquality().equals(other._discipleCellule, _discipleCellule)&&(identical(other.id, id) || other.id == id)&&(identical(other.formAdministrationIsSubmit, formAdministrationIsSubmit) || other.formAdministrationIsSubmit == formAdministrationIsSubmit)&&(identical(other.formAdministrationSubmitDate, formAdministrationSubmitDate) || other.formAdministrationSubmitDate == formAdministrationSubmitDate)&&(identical(other.resumerPredication, resumerPredication) || other.resumerPredication == resumerPredication)&&(identical(other.lieu, lieu) || other.lieu == lieu)&&(identical(other.assistanceNonBaptiser, assistanceNonBaptiser) || other.assistanceNonBaptiser == assistanceNonBaptiser)&&(identical(other.assistanceNouveau, assistanceNouveau) || other.assistanceNouveau == assistanceNouveau)&&(identical(other.assistanceInviter, assistanceInviter) || other.assistanceInviter == assistanceInviter)&&(identical(other.assistanceCellule, assistanceCellule) || other.assistanceCellule == assistanceCellule)&&(identical(other.formAssistanceIsSubmit, formAssistanceIsSubmit) || other.formAssistanceIsSubmit == formAssistanceIsSubmit)&&(identical(other.formAssistanceSubmitDate, formAssistanceSubmitDate) || other.formAssistanceSubmitDate == formAssistanceSubmitDate)&&const DeepCollectionEquality().equals(other._visiteMenbre, _visiteMenbre)&&const DeepCollectionEquality().equals(other._visiteOuvrier, _visiteOuvrier)&&(identical(other.dateActivitySubmited, dateActivitySubmited) || other.dateActivitySubmited == dateActivitySubmited)&&(identical(other.formActivityIsSubmit, formActivityIsSubmit) || other.formActivityIsSubmit == formActivityIsSubmit)&&(identical(other.formActivitySubmitDate, formActivitySubmitDate) || other.formActivitySubmitDate == formActivitySubmitDate)&&const DeepCollectionEquality().equals(other._suggestions, _suggestions)&&const DeepCollectionEquality().equals(other._weekActivity, _weekActivity)&&(identical(other.faisAssignaler, faisAssignaler) || other.faisAssignaler == faisAssignaler)&&(identical(other.ouvrierSpritualLive, ouvrierSpritualLive) || other.ouvrierSpritualLive == ouvrierSpritualLive)&&(identical(other.formSuggestionIsSubmit, formSuggestionIsSubmit) || other.formSuggestionIsSubmit == formSuggestionIsSubmit)&&(identical(other.formSuggestionSubmitDate, formSuggestionSubmitDate) || other.formSuggestionSubmitDate == formSuggestionSubmitDate)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,codeZone,fullNameRespoZone,contactRespoZone,codeSecteur,responsableCelluleId,fullNameRespoSecteur,contactRespoSecteur,codeCellule,fullNameRespoCellule,contactRespoCellule,jourCellule,offrande,nombreBaptiser,nombreNonBaptiser,const DeepCollectionEquality().hash(_discipleCellule),id,formAdministrationIsSubmit,formAdministrationSubmitDate,resumerPredication,lieu,assistanceNonBaptiser,assistanceNouveau,assistanceInviter,assistanceCellule,formAssistanceIsSubmit,formAssistanceSubmitDate,const DeepCollectionEquality().hash(_visiteMenbre),const DeepCollectionEquality().hash(_visiteOuvrier),dateActivitySubmited,formActivityIsSubmit,formActivitySubmitDate,const DeepCollectionEquality().hash(_suggestions),const DeepCollectionEquality().hash(_weekActivity),faisAssignaler,ouvrierSpritualLive,formSuggestionIsSubmit,formSuggestionSubmitDate,tag]);

@override
String toString() {
  return 'RapportCelluleResponseModel(codeZone: $codeZone, fullNameRespoZone: $fullNameRespoZone, contactRespoZone: $contactRespoZone, codeSecteur: $codeSecteur, responsableCelluleId: $responsableCelluleId, fullNameRespoSecteur: $fullNameRespoSecteur, contactRespoSecteur: $contactRespoSecteur, codeCellule: $codeCellule, fullNameRespoCellule: $fullNameRespoCellule, contactRespoCellule: $contactRespoCellule, jourCellule: $jourCellule, offrande: $offrande, nombreBaptiser: $nombreBaptiser, nombreNonBaptiser: $nombreNonBaptiser, discipleCellule: $discipleCellule, id: $id, formAdministrationIsSubmit: $formAdministrationIsSubmit, formAdministrationSubmitDate: $formAdministrationSubmitDate, resumerPredication: $resumerPredication, lieu: $lieu, assistanceNonBaptiser: $assistanceNonBaptiser, assistanceNouveau: $assistanceNouveau, assistanceInviter: $assistanceInviter, assistanceCellule: $assistanceCellule, formAssistanceIsSubmit: $formAssistanceIsSubmit, formAssistanceSubmitDate: $formAssistanceSubmitDate, visiteMenbre: $visiteMenbre, visiteOuvrier: $visiteOuvrier, dateActivitySubmited: $dateActivitySubmited, formActivityIsSubmit: $formActivityIsSubmit, formActivitySubmitDate: $formActivitySubmitDate, suggestions: $suggestions, weekActivity: $weekActivity, faisAssignaler: $faisAssignaler, ouvrierSpritualLive: $ouvrierSpritualLive, formSuggestionIsSubmit: $formSuggestionIsSubmit, formSuggestionSubmitDate: $formSuggestionSubmitDate, tag: $tag)';
}


}

/// @nodoc
abstract mixin class _$RapportCelluleResponseModelCopyWith<$Res> implements $RapportCelluleResponseModelCopyWith<$Res> {
  factory _$RapportCelluleResponseModelCopyWith(_RapportCelluleResponseModel value, $Res Function(_RapportCelluleResponseModel) _then) = __$RapportCelluleResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? codeZone, String? fullNameRespoZone, String? contactRespoZone, String? codeSecteur, String? responsableCelluleId, String? fullNameRespoSecteur, String? contactRespoSecteur, String? codeCellule, String? fullNameRespoCellule, String? contactRespoCellule, String? jourCellule, String? offrande, String? nombreBaptiser, String? nombreNonBaptiser, List<DiscipleCelluleModel> discipleCellule, String? id, String? formAdministrationIsSubmit, String? formAdministrationSubmitDate, String? resumerPredication, String? lieu, RequestHumaneSectionAssistanceResponseModel assistanceNonBaptiser, RequestHumaneSectionAssistanceResponseModel assistanceNouveau, RequestHumaneSectionAssistanceResponseModel assistanceInviter, RequestAuherResponseModel assistanceCellule, String? formAssistanceIsSubmit, String? formAssistanceSubmitDate, List<RequestSuggestionResponseModel> visiteMenbre, List<RequestSuggestionResponseModel> visiteOuvrier, String? dateActivitySubmited, String? formActivityIsSubmit, String? formActivitySubmitDate, List<RequestHumaneSectionActivityResponseModel> suggestions, List<WeekActivityResponseModel> weekActivity, String? faisAssignaler, String? ouvrierSpritualLive, String? formSuggestionIsSubmit, String? formSuggestionSubmitDate, String? tag
});


@override $RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> get assistanceNonBaptiser;@override $RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> get assistanceNouveau;@override $RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> get assistanceInviter;@override $RequestAuherResponseModelCopyWith<$Res> get assistanceCellule;

}
/// @nodoc
class __$RapportCelluleResponseModelCopyWithImpl<$Res>
    implements _$RapportCelluleResponseModelCopyWith<$Res> {
  __$RapportCelluleResponseModelCopyWithImpl(this._self, this._then);

  final _RapportCelluleResponseModel _self;
  final $Res Function(_RapportCelluleResponseModel) _then;

/// Create a copy of RapportCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? codeZone = freezed,Object? fullNameRespoZone = freezed,Object? contactRespoZone = freezed,Object? codeSecteur = freezed,Object? responsableCelluleId = freezed,Object? fullNameRespoSecteur = freezed,Object? contactRespoSecteur = freezed,Object? codeCellule = freezed,Object? fullNameRespoCellule = freezed,Object? contactRespoCellule = freezed,Object? jourCellule = freezed,Object? offrande = freezed,Object? nombreBaptiser = freezed,Object? nombreNonBaptiser = freezed,Object? discipleCellule = null,Object? id = freezed,Object? formAdministrationIsSubmit = freezed,Object? formAdministrationSubmitDate = freezed,Object? resumerPredication = freezed,Object? lieu = freezed,Object? assistanceNonBaptiser = null,Object? assistanceNouveau = null,Object? assistanceInviter = null,Object? assistanceCellule = null,Object? formAssistanceIsSubmit = freezed,Object? formAssistanceSubmitDate = freezed,Object? visiteMenbre = null,Object? visiteOuvrier = null,Object? dateActivitySubmited = freezed,Object? formActivityIsSubmit = freezed,Object? formActivitySubmitDate = freezed,Object? suggestions = null,Object? weekActivity = null,Object? faisAssignaler = freezed,Object? ouvrierSpritualLive = freezed,Object? formSuggestionIsSubmit = freezed,Object? formSuggestionSubmitDate = freezed,Object? tag = freezed,}) {
  return _then(_RapportCelluleResponseModel(
codeZone: freezed == codeZone ? _self.codeZone : codeZone // ignore: cast_nullable_to_non_nullable
as String?,fullNameRespoZone: freezed == fullNameRespoZone ? _self.fullNameRespoZone : fullNameRespoZone // ignore: cast_nullable_to_non_nullable
as String?,contactRespoZone: freezed == contactRespoZone ? _self.contactRespoZone : contactRespoZone // ignore: cast_nullable_to_non_nullable
as String?,codeSecteur: freezed == codeSecteur ? _self.codeSecteur : codeSecteur // ignore: cast_nullable_to_non_nullable
as String?,responsableCelluleId: freezed == responsableCelluleId ? _self.responsableCelluleId : responsableCelluleId // ignore: cast_nullable_to_non_nullable
as String?,fullNameRespoSecteur: freezed == fullNameRespoSecteur ? _self.fullNameRespoSecteur : fullNameRespoSecteur // ignore: cast_nullable_to_non_nullable
as String?,contactRespoSecteur: freezed == contactRespoSecteur ? _self.contactRespoSecteur : contactRespoSecteur // ignore: cast_nullable_to_non_nullable
as String?,codeCellule: freezed == codeCellule ? _self.codeCellule : codeCellule // ignore: cast_nullable_to_non_nullable
as String?,fullNameRespoCellule: freezed == fullNameRespoCellule ? _self.fullNameRespoCellule : fullNameRespoCellule // ignore: cast_nullable_to_non_nullable
as String?,contactRespoCellule: freezed == contactRespoCellule ? _self.contactRespoCellule : contactRespoCellule // ignore: cast_nullable_to_non_nullable
as String?,jourCellule: freezed == jourCellule ? _self.jourCellule : jourCellule // ignore: cast_nullable_to_non_nullable
as String?,offrande: freezed == offrande ? _self.offrande : offrande // ignore: cast_nullable_to_non_nullable
as String?,nombreBaptiser: freezed == nombreBaptiser ? _self.nombreBaptiser : nombreBaptiser // ignore: cast_nullable_to_non_nullable
as String?,nombreNonBaptiser: freezed == nombreNonBaptiser ? _self.nombreNonBaptiser : nombreNonBaptiser // ignore: cast_nullable_to_non_nullable
as String?,discipleCellule: null == discipleCellule ? _self._discipleCellule : discipleCellule // ignore: cast_nullable_to_non_nullable
as List<DiscipleCelluleModel>,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,formAdministrationIsSubmit: freezed == formAdministrationIsSubmit ? _self.formAdministrationIsSubmit : formAdministrationIsSubmit // ignore: cast_nullable_to_non_nullable
as String?,formAdministrationSubmitDate: freezed == formAdministrationSubmitDate ? _self.formAdministrationSubmitDate : formAdministrationSubmitDate // ignore: cast_nullable_to_non_nullable
as String?,resumerPredication: freezed == resumerPredication ? _self.resumerPredication : resumerPredication // ignore: cast_nullable_to_non_nullable
as String?,lieu: freezed == lieu ? _self.lieu : lieu // ignore: cast_nullable_to_non_nullable
as String?,assistanceNonBaptiser: null == assistanceNonBaptiser ? _self.assistanceNonBaptiser : assistanceNonBaptiser // ignore: cast_nullable_to_non_nullable
as RequestHumaneSectionAssistanceResponseModel,assistanceNouveau: null == assistanceNouveau ? _self.assistanceNouveau : assistanceNouveau // ignore: cast_nullable_to_non_nullable
as RequestHumaneSectionAssistanceResponseModel,assistanceInviter: null == assistanceInviter ? _self.assistanceInviter : assistanceInviter // ignore: cast_nullable_to_non_nullable
as RequestHumaneSectionAssistanceResponseModel,assistanceCellule: null == assistanceCellule ? _self.assistanceCellule : assistanceCellule // ignore: cast_nullable_to_non_nullable
as RequestAuherResponseModel,formAssistanceIsSubmit: freezed == formAssistanceIsSubmit ? _self.formAssistanceIsSubmit : formAssistanceIsSubmit // ignore: cast_nullable_to_non_nullable
as String?,formAssistanceSubmitDate: freezed == formAssistanceSubmitDate ? _self.formAssistanceSubmitDate : formAssistanceSubmitDate // ignore: cast_nullable_to_non_nullable
as String?,visiteMenbre: null == visiteMenbre ? _self._visiteMenbre : visiteMenbre // ignore: cast_nullable_to_non_nullable
as List<RequestSuggestionResponseModel>,visiteOuvrier: null == visiteOuvrier ? _self._visiteOuvrier : visiteOuvrier // ignore: cast_nullable_to_non_nullable
as List<RequestSuggestionResponseModel>,dateActivitySubmited: freezed == dateActivitySubmited ? _self.dateActivitySubmited : dateActivitySubmited // ignore: cast_nullable_to_non_nullable
as String?,formActivityIsSubmit: freezed == formActivityIsSubmit ? _self.formActivityIsSubmit : formActivityIsSubmit // ignore: cast_nullable_to_non_nullable
as String?,formActivitySubmitDate: freezed == formActivitySubmitDate ? _self.formActivitySubmitDate : formActivitySubmitDate // ignore: cast_nullable_to_non_nullable
as String?,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<RequestHumaneSectionActivityResponseModel>,weekActivity: null == weekActivity ? _self._weekActivity : weekActivity // ignore: cast_nullable_to_non_nullable
as List<WeekActivityResponseModel>,faisAssignaler: freezed == faisAssignaler ? _self.faisAssignaler : faisAssignaler // ignore: cast_nullable_to_non_nullable
as String?,ouvrierSpritualLive: freezed == ouvrierSpritualLive ? _self.ouvrierSpritualLive : ouvrierSpritualLive // ignore: cast_nullable_to_non_nullable
as String?,formSuggestionIsSubmit: freezed == formSuggestionIsSubmit ? _self.formSuggestionIsSubmit : formSuggestionIsSubmit // ignore: cast_nullable_to_non_nullable
as String?,formSuggestionSubmitDate: freezed == formSuggestionSubmitDate ? _self.formSuggestionSubmitDate : formSuggestionSubmitDate // ignore: cast_nullable_to_non_nullable
as String?,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of RapportCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> get assistanceNonBaptiser {
  
  return $RequestHumaneSectionAssistanceResponseModelCopyWith<$Res>(_self.assistanceNonBaptiser, (value) {
    return _then(_self.copyWith(assistanceNonBaptiser: value));
  });
}/// Create a copy of RapportCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> get assistanceNouveau {
  
  return $RequestHumaneSectionAssistanceResponseModelCopyWith<$Res>(_self.assistanceNouveau, (value) {
    return _then(_self.copyWith(assistanceNouveau: value));
  });
}/// Create a copy of RapportCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> get assistanceInviter {
  
  return $RequestHumaneSectionAssistanceResponseModelCopyWith<$Res>(_self.assistanceInviter, (value) {
    return _then(_self.copyWith(assistanceInviter: value));
  });
}/// Create a copy of RapportCelluleResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestAuherResponseModelCopyWith<$Res> get assistanceCellule {
  
  return $RequestAuherResponseModelCopyWith<$Res>(_self.assistanceCellule, (value) {
    return _then(_self.copyWith(assistanceCellule: value));
  });
}
}


/// @nodoc
mixin _$WeekActivityResponseModel {

 String get theme; String get orateur; String get lieu; String get date; String get programmeNature;
/// Create a copy of WeekActivityResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeekActivityResponseModelCopyWith<WeekActivityResponseModel> get copyWith => _$WeekActivityResponseModelCopyWithImpl<WeekActivityResponseModel>(this as WeekActivityResponseModel, _$identity);

  /// Serializes this WeekActivityResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeekActivityResponseModel&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.orateur, orateur) || other.orateur == orateur)&&(identical(other.lieu, lieu) || other.lieu == lieu)&&(identical(other.date, date) || other.date == date)&&(identical(other.programmeNature, programmeNature) || other.programmeNature == programmeNature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,theme,orateur,lieu,date,programmeNature);

@override
String toString() {
  return 'WeekActivityResponseModel(theme: $theme, orateur: $orateur, lieu: $lieu, date: $date, programmeNature: $programmeNature)';
}


}

/// @nodoc
abstract mixin class $WeekActivityResponseModelCopyWith<$Res>  {
  factory $WeekActivityResponseModelCopyWith(WeekActivityResponseModel value, $Res Function(WeekActivityResponseModel) _then) = _$WeekActivityResponseModelCopyWithImpl;
@useResult
$Res call({
 String theme, String orateur, String lieu, String date, String programmeNature
});




}
/// @nodoc
class _$WeekActivityResponseModelCopyWithImpl<$Res>
    implements $WeekActivityResponseModelCopyWith<$Res> {
  _$WeekActivityResponseModelCopyWithImpl(this._self, this._then);

  final WeekActivityResponseModel _self;
  final $Res Function(WeekActivityResponseModel) _then;

/// Create a copy of WeekActivityResponseModel
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


/// Adds pattern-matching-related methods to [WeekActivityResponseModel].
extension WeekActivityResponseModelPatterns on WeekActivityResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeekActivityResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeekActivityResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeekActivityResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _WeekActivityResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeekActivityResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _WeekActivityResponseModel() when $default != null:
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
case _WeekActivityResponseModel() when $default != null:
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
case _WeekActivityResponseModel():
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
case _WeekActivityResponseModel() when $default != null:
return $default(_that.theme,_that.orateur,_that.lieu,_that.date,_that.programmeNature);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeekActivityResponseModel implements WeekActivityResponseModel {
  const _WeekActivityResponseModel({this.theme = '', this.orateur = '', this.lieu = '', this.date = '', this.programmeNature = ''});
  factory _WeekActivityResponseModel.fromJson(Map<String, dynamic> json) => _$WeekActivityResponseModelFromJson(json);

@override@JsonKey() final  String theme;
@override@JsonKey() final  String orateur;
@override@JsonKey() final  String lieu;
@override@JsonKey() final  String date;
@override@JsonKey() final  String programmeNature;

/// Create a copy of WeekActivityResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeekActivityResponseModelCopyWith<_WeekActivityResponseModel> get copyWith => __$WeekActivityResponseModelCopyWithImpl<_WeekActivityResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeekActivityResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeekActivityResponseModel&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.orateur, orateur) || other.orateur == orateur)&&(identical(other.lieu, lieu) || other.lieu == lieu)&&(identical(other.date, date) || other.date == date)&&(identical(other.programmeNature, programmeNature) || other.programmeNature == programmeNature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,theme,orateur,lieu,date,programmeNature);

@override
String toString() {
  return 'WeekActivityResponseModel(theme: $theme, orateur: $orateur, lieu: $lieu, date: $date, programmeNature: $programmeNature)';
}


}

/// @nodoc
abstract mixin class _$WeekActivityResponseModelCopyWith<$Res> implements $WeekActivityResponseModelCopyWith<$Res> {
  factory _$WeekActivityResponseModelCopyWith(_WeekActivityResponseModel value, $Res Function(_WeekActivityResponseModel) _then) = __$WeekActivityResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String theme, String orateur, String lieu, String date, String programmeNature
});




}
/// @nodoc
class __$WeekActivityResponseModelCopyWithImpl<$Res>
    implements _$WeekActivityResponseModelCopyWith<$Res> {
  __$WeekActivityResponseModelCopyWithImpl(this._self, this._then);

  final _WeekActivityResponseModel _self;
  final $Res Function(_WeekActivityResponseModel) _then;

/// Create a copy of WeekActivityResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? theme = null,Object? orateur = null,Object? lieu = null,Object? date = null,Object? programmeNature = null,}) {
  return _then(_WeekActivityResponseModel(
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
mixin _$RequestAuherResponseModel {

 String? get libelle; String? get formationNewDFB; String? get formationNewBaptDFD; String? get visiteMenbre; String? get visiteDisciple; String? get nbTravailleurs; String? get nbEleveAndEtudiants; String? get nbOuvrierEM; String? get nbOuvrierAutreDepatementDirigeantEM; String? get nbFormationNiveau2; String? get ngAgendaEM; String? get nbDecisionnaires; String? get id; int? get count;
/// Create a copy of RequestAuherResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestAuherResponseModelCopyWith<RequestAuherResponseModel> get copyWith => _$RequestAuherResponseModelCopyWithImpl<RequestAuherResponseModel>(this as RequestAuherResponseModel, _$identity);

  /// Serializes this RequestAuherResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestAuherResponseModel&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.formationNewDFB, formationNewDFB) || other.formationNewDFB == formationNewDFB)&&(identical(other.formationNewBaptDFD, formationNewBaptDFD) || other.formationNewBaptDFD == formationNewBaptDFD)&&(identical(other.visiteMenbre, visiteMenbre) || other.visiteMenbre == visiteMenbre)&&(identical(other.visiteDisciple, visiteDisciple) || other.visiteDisciple == visiteDisciple)&&(identical(other.nbTravailleurs, nbTravailleurs) || other.nbTravailleurs == nbTravailleurs)&&(identical(other.nbEleveAndEtudiants, nbEleveAndEtudiants) || other.nbEleveAndEtudiants == nbEleveAndEtudiants)&&(identical(other.nbOuvrierEM, nbOuvrierEM) || other.nbOuvrierEM == nbOuvrierEM)&&(identical(other.nbOuvrierAutreDepatementDirigeantEM, nbOuvrierAutreDepatementDirigeantEM) || other.nbOuvrierAutreDepatementDirigeantEM == nbOuvrierAutreDepatementDirigeantEM)&&(identical(other.nbFormationNiveau2, nbFormationNiveau2) || other.nbFormationNiveau2 == nbFormationNiveau2)&&(identical(other.ngAgendaEM, ngAgendaEM) || other.ngAgendaEM == ngAgendaEM)&&(identical(other.nbDecisionnaires, nbDecisionnaires) || other.nbDecisionnaires == nbDecisionnaires)&&(identical(other.id, id) || other.id == id)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,libelle,formationNewDFB,formationNewBaptDFD,visiteMenbre,visiteDisciple,nbTravailleurs,nbEleveAndEtudiants,nbOuvrierEM,nbOuvrierAutreDepatementDirigeantEM,nbFormationNiveau2,ngAgendaEM,nbDecisionnaires,id,count);

@override
String toString() {
  return 'RequestAuherResponseModel(libelle: $libelle, formationNewDFB: $formationNewDFB, formationNewBaptDFD: $formationNewBaptDFD, visiteMenbre: $visiteMenbre, visiteDisciple: $visiteDisciple, nbTravailleurs: $nbTravailleurs, nbEleveAndEtudiants: $nbEleveAndEtudiants, nbOuvrierEM: $nbOuvrierEM, nbOuvrierAutreDepatementDirigeantEM: $nbOuvrierAutreDepatementDirigeantEM, nbFormationNiveau2: $nbFormationNiveau2, ngAgendaEM: $ngAgendaEM, nbDecisionnaires: $nbDecisionnaires, id: $id, count: $count)';
}


}

/// @nodoc
abstract mixin class $RequestAuherResponseModelCopyWith<$Res>  {
  factory $RequestAuherResponseModelCopyWith(RequestAuherResponseModel value, $Res Function(RequestAuherResponseModel) _then) = _$RequestAuherResponseModelCopyWithImpl;
@useResult
$Res call({
 String? libelle, String? formationNewDFB, String? formationNewBaptDFD, String? visiteMenbre, String? visiteDisciple, String? nbTravailleurs, String? nbEleveAndEtudiants, String? nbOuvrierEM, String? nbOuvrierAutreDepatementDirigeantEM, String? nbFormationNiveau2, String? ngAgendaEM, String? nbDecisionnaires, String? id, int? count
});




}
/// @nodoc
class _$RequestAuherResponseModelCopyWithImpl<$Res>
    implements $RequestAuherResponseModelCopyWith<$Res> {
  _$RequestAuherResponseModelCopyWithImpl(this._self, this._then);

  final RequestAuherResponseModel _self;
  final $Res Function(RequestAuherResponseModel) _then;

/// Create a copy of RequestAuherResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? libelle = freezed,Object? formationNewDFB = freezed,Object? formationNewBaptDFD = freezed,Object? visiteMenbre = freezed,Object? visiteDisciple = freezed,Object? nbTravailleurs = freezed,Object? nbEleveAndEtudiants = freezed,Object? nbOuvrierEM = freezed,Object? nbOuvrierAutreDepatementDirigeantEM = freezed,Object? nbFormationNiveau2 = freezed,Object? ngAgendaEM = freezed,Object? nbDecisionnaires = freezed,Object? id = freezed,Object? count = freezed,}) {
  return _then(_self.copyWith(
libelle: freezed == libelle ? _self.libelle : libelle // ignore: cast_nullable_to_non_nullable
as String?,formationNewDFB: freezed == formationNewDFB ? _self.formationNewDFB : formationNewDFB // ignore: cast_nullable_to_non_nullable
as String?,formationNewBaptDFD: freezed == formationNewBaptDFD ? _self.formationNewBaptDFD : formationNewBaptDFD // ignore: cast_nullable_to_non_nullable
as String?,visiteMenbre: freezed == visiteMenbre ? _self.visiteMenbre : visiteMenbre // ignore: cast_nullable_to_non_nullable
as String?,visiteDisciple: freezed == visiteDisciple ? _self.visiteDisciple : visiteDisciple // ignore: cast_nullable_to_non_nullable
as String?,nbTravailleurs: freezed == nbTravailleurs ? _self.nbTravailleurs : nbTravailleurs // ignore: cast_nullable_to_non_nullable
as String?,nbEleveAndEtudiants: freezed == nbEleveAndEtudiants ? _self.nbEleveAndEtudiants : nbEleveAndEtudiants // ignore: cast_nullable_to_non_nullable
as String?,nbOuvrierEM: freezed == nbOuvrierEM ? _self.nbOuvrierEM : nbOuvrierEM // ignore: cast_nullable_to_non_nullable
as String?,nbOuvrierAutreDepatementDirigeantEM: freezed == nbOuvrierAutreDepatementDirigeantEM ? _self.nbOuvrierAutreDepatementDirigeantEM : nbOuvrierAutreDepatementDirigeantEM // ignore: cast_nullable_to_non_nullable
as String?,nbFormationNiveau2: freezed == nbFormationNiveau2 ? _self.nbFormationNiveau2 : nbFormationNiveau2 // ignore: cast_nullable_to_non_nullable
as String?,ngAgendaEM: freezed == ngAgendaEM ? _self.ngAgendaEM : ngAgendaEM // ignore: cast_nullable_to_non_nullable
as String?,nbDecisionnaires: freezed == nbDecisionnaires ? _self.nbDecisionnaires : nbDecisionnaires // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestAuherResponseModel].
extension RequestAuherResponseModelPatterns on RequestAuherResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestAuherResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestAuherResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestAuherResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _RequestAuherResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestAuherResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _RequestAuherResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? libelle,  String? formationNewDFB,  String? formationNewBaptDFD,  String? visiteMenbre,  String? visiteDisciple,  String? nbTravailleurs,  String? nbEleveAndEtudiants,  String? nbOuvrierEM,  String? nbOuvrierAutreDepatementDirigeantEM,  String? nbFormationNiveau2,  String? ngAgendaEM,  String? nbDecisionnaires,  String? id,  int? count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestAuherResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? libelle,  String? formationNewDFB,  String? formationNewBaptDFD,  String? visiteMenbre,  String? visiteDisciple,  String? nbTravailleurs,  String? nbEleveAndEtudiants,  String? nbOuvrierEM,  String? nbOuvrierAutreDepatementDirigeantEM,  String? nbFormationNiveau2,  String? ngAgendaEM,  String? nbDecisionnaires,  String? id,  int? count)  $default,) {final _that = this;
switch (_that) {
case _RequestAuherResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? libelle,  String? formationNewDFB,  String? formationNewBaptDFD,  String? visiteMenbre,  String? visiteDisciple,  String? nbTravailleurs,  String? nbEleveAndEtudiants,  String? nbOuvrierEM,  String? nbOuvrierAutreDepatementDirigeantEM,  String? nbFormationNiveau2,  String? ngAgendaEM,  String? nbDecisionnaires,  String? id,  int? count)?  $default,) {final _that = this;
switch (_that) {
case _RequestAuherResponseModel() when $default != null:
return $default(_that.libelle,_that.formationNewDFB,_that.formationNewBaptDFD,_that.visiteMenbre,_that.visiteDisciple,_that.nbTravailleurs,_that.nbEleveAndEtudiants,_that.nbOuvrierEM,_that.nbOuvrierAutreDepatementDirigeantEM,_that.nbFormationNiveau2,_that.ngAgendaEM,_that.nbDecisionnaires,_that.id,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestAuherResponseModel implements RequestAuherResponseModel {
  const _RequestAuherResponseModel({required this.libelle, required this.formationNewDFB, required this.formationNewBaptDFD, required this.visiteMenbre, required this.visiteDisciple, required this.nbTravailleurs, required this.nbEleveAndEtudiants, required this.nbOuvrierEM, required this.nbOuvrierAutreDepatementDirigeantEM, required this.nbFormationNiveau2, required this.ngAgendaEM, required this.nbDecisionnaires, required this.id, required this.count});
  factory _RequestAuherResponseModel.fromJson(Map<String, dynamic> json) => _$RequestAuherResponseModelFromJson(json);

@override final  String? libelle;
@override final  String? formationNewDFB;
@override final  String? formationNewBaptDFD;
@override final  String? visiteMenbre;
@override final  String? visiteDisciple;
@override final  String? nbTravailleurs;
@override final  String? nbEleveAndEtudiants;
@override final  String? nbOuvrierEM;
@override final  String? nbOuvrierAutreDepatementDirigeantEM;
@override final  String? nbFormationNiveau2;
@override final  String? ngAgendaEM;
@override final  String? nbDecisionnaires;
@override final  String? id;
@override final  int? count;

/// Create a copy of RequestAuherResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestAuherResponseModelCopyWith<_RequestAuherResponseModel> get copyWith => __$RequestAuherResponseModelCopyWithImpl<_RequestAuherResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestAuherResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestAuherResponseModel&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.formationNewDFB, formationNewDFB) || other.formationNewDFB == formationNewDFB)&&(identical(other.formationNewBaptDFD, formationNewBaptDFD) || other.formationNewBaptDFD == formationNewBaptDFD)&&(identical(other.visiteMenbre, visiteMenbre) || other.visiteMenbre == visiteMenbre)&&(identical(other.visiteDisciple, visiteDisciple) || other.visiteDisciple == visiteDisciple)&&(identical(other.nbTravailleurs, nbTravailleurs) || other.nbTravailleurs == nbTravailleurs)&&(identical(other.nbEleveAndEtudiants, nbEleveAndEtudiants) || other.nbEleveAndEtudiants == nbEleveAndEtudiants)&&(identical(other.nbOuvrierEM, nbOuvrierEM) || other.nbOuvrierEM == nbOuvrierEM)&&(identical(other.nbOuvrierAutreDepatementDirigeantEM, nbOuvrierAutreDepatementDirigeantEM) || other.nbOuvrierAutreDepatementDirigeantEM == nbOuvrierAutreDepatementDirigeantEM)&&(identical(other.nbFormationNiveau2, nbFormationNiveau2) || other.nbFormationNiveau2 == nbFormationNiveau2)&&(identical(other.ngAgendaEM, ngAgendaEM) || other.ngAgendaEM == ngAgendaEM)&&(identical(other.nbDecisionnaires, nbDecisionnaires) || other.nbDecisionnaires == nbDecisionnaires)&&(identical(other.id, id) || other.id == id)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,libelle,formationNewDFB,formationNewBaptDFD,visiteMenbre,visiteDisciple,nbTravailleurs,nbEleveAndEtudiants,nbOuvrierEM,nbOuvrierAutreDepatementDirigeantEM,nbFormationNiveau2,ngAgendaEM,nbDecisionnaires,id,count);

@override
String toString() {
  return 'RequestAuherResponseModel(libelle: $libelle, formationNewDFB: $formationNewDFB, formationNewBaptDFD: $formationNewBaptDFD, visiteMenbre: $visiteMenbre, visiteDisciple: $visiteDisciple, nbTravailleurs: $nbTravailleurs, nbEleveAndEtudiants: $nbEleveAndEtudiants, nbOuvrierEM: $nbOuvrierEM, nbOuvrierAutreDepatementDirigeantEM: $nbOuvrierAutreDepatementDirigeantEM, nbFormationNiveau2: $nbFormationNiveau2, ngAgendaEM: $ngAgendaEM, nbDecisionnaires: $nbDecisionnaires, id: $id, count: $count)';
}


}

/// @nodoc
abstract mixin class _$RequestAuherResponseModelCopyWith<$Res> implements $RequestAuherResponseModelCopyWith<$Res> {
  factory _$RequestAuherResponseModelCopyWith(_RequestAuherResponseModel value, $Res Function(_RequestAuherResponseModel) _then) = __$RequestAuherResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? libelle, String? formationNewDFB, String? formationNewBaptDFD, String? visiteMenbre, String? visiteDisciple, String? nbTravailleurs, String? nbEleveAndEtudiants, String? nbOuvrierEM, String? nbOuvrierAutreDepatementDirigeantEM, String? nbFormationNiveau2, String? ngAgendaEM, String? nbDecisionnaires, String? id, int? count
});




}
/// @nodoc
class __$RequestAuherResponseModelCopyWithImpl<$Res>
    implements _$RequestAuherResponseModelCopyWith<$Res> {
  __$RequestAuherResponseModelCopyWithImpl(this._self, this._then);

  final _RequestAuherResponseModel _self;
  final $Res Function(_RequestAuherResponseModel) _then;

/// Create a copy of RequestAuherResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? libelle = freezed,Object? formationNewDFB = freezed,Object? formationNewBaptDFD = freezed,Object? visiteMenbre = freezed,Object? visiteDisciple = freezed,Object? nbTravailleurs = freezed,Object? nbEleveAndEtudiants = freezed,Object? nbOuvrierEM = freezed,Object? nbOuvrierAutreDepatementDirigeantEM = freezed,Object? nbFormationNiveau2 = freezed,Object? ngAgendaEM = freezed,Object? nbDecisionnaires = freezed,Object? id = freezed,Object? count = freezed,}) {
  return _then(_RequestAuherResponseModel(
libelle: freezed == libelle ? _self.libelle : libelle // ignore: cast_nullable_to_non_nullable
as String?,formationNewDFB: freezed == formationNewDFB ? _self.formationNewDFB : formationNewDFB // ignore: cast_nullable_to_non_nullable
as String?,formationNewBaptDFD: freezed == formationNewBaptDFD ? _self.formationNewBaptDFD : formationNewBaptDFD // ignore: cast_nullable_to_non_nullable
as String?,visiteMenbre: freezed == visiteMenbre ? _self.visiteMenbre : visiteMenbre // ignore: cast_nullable_to_non_nullable
as String?,visiteDisciple: freezed == visiteDisciple ? _self.visiteDisciple : visiteDisciple // ignore: cast_nullable_to_non_nullable
as String?,nbTravailleurs: freezed == nbTravailleurs ? _self.nbTravailleurs : nbTravailleurs // ignore: cast_nullable_to_non_nullable
as String?,nbEleveAndEtudiants: freezed == nbEleveAndEtudiants ? _self.nbEleveAndEtudiants : nbEleveAndEtudiants // ignore: cast_nullable_to_non_nullable
as String?,nbOuvrierEM: freezed == nbOuvrierEM ? _self.nbOuvrierEM : nbOuvrierEM // ignore: cast_nullable_to_non_nullable
as String?,nbOuvrierAutreDepatementDirigeantEM: freezed == nbOuvrierAutreDepatementDirigeantEM ? _self.nbOuvrierAutreDepatementDirigeantEM : nbOuvrierAutreDepatementDirigeantEM // ignore: cast_nullable_to_non_nullable
as String?,nbFormationNiveau2: freezed == nbFormationNiveau2 ? _self.nbFormationNiveau2 : nbFormationNiveau2 // ignore: cast_nullable_to_non_nullable
as String?,ngAgendaEM: freezed == ngAgendaEM ? _self.ngAgendaEM : ngAgendaEM // ignore: cast_nullable_to_non_nullable
as String?,nbDecisionnaires: freezed == nbDecisionnaires ? _self.nbDecisionnaires : nbDecisionnaires // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$RequestHumaneSectionAssistanceResponseModel {

 String? get libelle; String? get toutPetit; String? get juniors; String? get cadets; int? get total;
/// Create a copy of RequestHumaneSectionAssistanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestHumaneSectionAssistanceResponseModelCopyWith<RequestHumaneSectionAssistanceResponseModel> get copyWith => _$RequestHumaneSectionAssistanceResponseModelCopyWithImpl<RequestHumaneSectionAssistanceResponseModel>(this as RequestHumaneSectionAssistanceResponseModel, _$identity);

  /// Serializes this RequestHumaneSectionAssistanceResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestHumaneSectionAssistanceResponseModel&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.toutPetit, toutPetit) || other.toutPetit == toutPetit)&&(identical(other.juniors, juniors) || other.juniors == juniors)&&(identical(other.cadets, cadets) || other.cadets == cadets)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,libelle,toutPetit,juniors,cadets,total);

@override
String toString() {
  return 'RequestHumaneSectionAssistanceResponseModel(libelle: $libelle, toutPetit: $toutPetit, juniors: $juniors, cadets: $cadets, total: $total)';
}


}

/// @nodoc
abstract mixin class $RequestHumaneSectionAssistanceResponseModelCopyWith<$Res>  {
  factory $RequestHumaneSectionAssistanceResponseModelCopyWith(RequestHumaneSectionAssistanceResponseModel value, $Res Function(RequestHumaneSectionAssistanceResponseModel) _then) = _$RequestHumaneSectionAssistanceResponseModelCopyWithImpl;
@useResult
$Res call({
 String? libelle, String? toutPetit, String? juniors, String? cadets, int? total
});




}
/// @nodoc
class _$RequestHumaneSectionAssistanceResponseModelCopyWithImpl<$Res>
    implements $RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> {
  _$RequestHumaneSectionAssistanceResponseModelCopyWithImpl(this._self, this._then);

  final RequestHumaneSectionAssistanceResponseModel _self;
  final $Res Function(RequestHumaneSectionAssistanceResponseModel) _then;

/// Create a copy of RequestHumaneSectionAssistanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? libelle = freezed,Object? toutPetit = freezed,Object? juniors = freezed,Object? cadets = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
libelle: freezed == libelle ? _self.libelle : libelle // ignore: cast_nullable_to_non_nullable
as String?,toutPetit: freezed == toutPetit ? _self.toutPetit : toutPetit // ignore: cast_nullable_to_non_nullable
as String?,juniors: freezed == juniors ? _self.juniors : juniors // ignore: cast_nullable_to_non_nullable
as String?,cadets: freezed == cadets ? _self.cadets : cadets // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestHumaneSectionAssistanceResponseModel].
extension RequestHumaneSectionAssistanceResponseModelPatterns on RequestHumaneSectionAssistanceResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestHumaneSectionAssistanceResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestHumaneSectionAssistanceResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestHumaneSectionAssistanceResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _RequestHumaneSectionAssistanceResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestHumaneSectionAssistanceResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _RequestHumaneSectionAssistanceResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? libelle,  String? toutPetit,  String? juniors,  String? cadets,  int? total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestHumaneSectionAssistanceResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? libelle,  String? toutPetit,  String? juniors,  String? cadets,  int? total)  $default,) {final _that = this;
switch (_that) {
case _RequestHumaneSectionAssistanceResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? libelle,  String? toutPetit,  String? juniors,  String? cadets,  int? total)?  $default,) {final _that = this;
switch (_that) {
case _RequestHumaneSectionAssistanceResponseModel() when $default != null:
return $default(_that.libelle,_that.toutPetit,_that.juniors,_that.cadets,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestHumaneSectionAssistanceResponseModel implements RequestHumaneSectionAssistanceResponseModel {
  const _RequestHumaneSectionAssistanceResponseModel({this.libelle = "", this.toutPetit = "", this.juniors = "", this.cadets = "", this.total = 0});
  factory _RequestHumaneSectionAssistanceResponseModel.fromJson(Map<String, dynamic> json) => _$RequestHumaneSectionAssistanceResponseModelFromJson(json);

@override@JsonKey() final  String? libelle;
@override@JsonKey() final  String? toutPetit;
@override@JsonKey() final  String? juniors;
@override@JsonKey() final  String? cadets;
@override@JsonKey() final  int? total;

/// Create a copy of RequestHumaneSectionAssistanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestHumaneSectionAssistanceResponseModelCopyWith<_RequestHumaneSectionAssistanceResponseModel> get copyWith => __$RequestHumaneSectionAssistanceResponseModelCopyWithImpl<_RequestHumaneSectionAssistanceResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestHumaneSectionAssistanceResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestHumaneSectionAssistanceResponseModel&&(identical(other.libelle, libelle) || other.libelle == libelle)&&(identical(other.toutPetit, toutPetit) || other.toutPetit == toutPetit)&&(identical(other.juniors, juniors) || other.juniors == juniors)&&(identical(other.cadets, cadets) || other.cadets == cadets)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,libelle,toutPetit,juniors,cadets,total);

@override
String toString() {
  return 'RequestHumaneSectionAssistanceResponseModel(libelle: $libelle, toutPetit: $toutPetit, juniors: $juniors, cadets: $cadets, total: $total)';
}


}

/// @nodoc
abstract mixin class _$RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> implements $RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> {
  factory _$RequestHumaneSectionAssistanceResponseModelCopyWith(_RequestHumaneSectionAssistanceResponseModel value, $Res Function(_RequestHumaneSectionAssistanceResponseModel) _then) = __$RequestHumaneSectionAssistanceResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? libelle, String? toutPetit, String? juniors, String? cadets, int? total
});




}
/// @nodoc
class __$RequestHumaneSectionAssistanceResponseModelCopyWithImpl<$Res>
    implements _$RequestHumaneSectionAssistanceResponseModelCopyWith<$Res> {
  __$RequestHumaneSectionAssistanceResponseModelCopyWithImpl(this._self, this._then);

  final _RequestHumaneSectionAssistanceResponseModel _self;
  final $Res Function(_RequestHumaneSectionAssistanceResponseModel) _then;

/// Create a copy of RequestHumaneSectionAssistanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? libelle = freezed,Object? toutPetit = freezed,Object? juniors = freezed,Object? cadets = freezed,Object? total = freezed,}) {
  return _then(_RequestHumaneSectionAssistanceResponseModel(
libelle: freezed == libelle ? _self.libelle : libelle // ignore: cast_nullable_to_non_nullable
as String?,toutPetit: freezed == toutPetit ? _self.toutPetit : toutPetit // ignore: cast_nullable_to_non_nullable
as String?,juniors: freezed == juniors ? _self.juniors : juniors // ignore: cast_nullable_to_non_nullable
as String?,cadets: freezed == cadets ? _self.cadets : cadets // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$RequestHumaneSectionActivityModel {

 String? get suggestions; String? get probleme; String? get temoignage;
/// Create a copy of RequestHumaneSectionActivityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestHumaneSectionActivityModelCopyWith<RequestHumaneSectionActivityModel> get copyWith => _$RequestHumaneSectionActivityModelCopyWithImpl<RequestHumaneSectionActivityModel>(this as RequestHumaneSectionActivityModel, _$identity);

  /// Serializes this RequestHumaneSectionActivityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestHumaneSectionActivityModel&&(identical(other.suggestions, suggestions) || other.suggestions == suggestions)&&(identical(other.probleme, probleme) || other.probleme == probleme)&&(identical(other.temoignage, temoignage) || other.temoignage == temoignage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,suggestions,probleme,temoignage);

@override
String toString() {
  return 'RequestHumaneSectionActivityModel(suggestions: $suggestions, probleme: $probleme, temoignage: $temoignage)';
}


}

/// @nodoc
abstract mixin class $RequestHumaneSectionActivityModelCopyWith<$Res>  {
  factory $RequestHumaneSectionActivityModelCopyWith(RequestHumaneSectionActivityModel value, $Res Function(RequestHumaneSectionActivityModel) _then) = _$RequestHumaneSectionActivityModelCopyWithImpl;
@useResult
$Res call({
 String? suggestions, String? probleme, String? temoignage
});




}
/// @nodoc
class _$RequestHumaneSectionActivityModelCopyWithImpl<$Res>
    implements $RequestHumaneSectionActivityModelCopyWith<$Res> {
  _$RequestHumaneSectionActivityModelCopyWithImpl(this._self, this._then);

  final RequestHumaneSectionActivityModel _self;
  final $Res Function(RequestHumaneSectionActivityModel) _then;

/// Create a copy of RequestHumaneSectionActivityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestions = freezed,Object? probleme = freezed,Object? temoignage = freezed,}) {
  return _then(_self.copyWith(
suggestions: freezed == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as String?,probleme: freezed == probleme ? _self.probleme : probleme // ignore: cast_nullable_to_non_nullable
as String?,temoignage: freezed == temoignage ? _self.temoignage : temoignage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestHumaneSectionActivityModel].
extension RequestHumaneSectionActivityModelPatterns on RequestHumaneSectionActivityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestHumaneSectionActivityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestHumaneSectionActivityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestHumaneSectionActivityModel value)  $default,){
final _that = this;
switch (_that) {
case _RequestHumaneSectionActivityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestHumaneSectionActivityModel value)?  $default,){
final _that = this;
switch (_that) {
case _RequestHumaneSectionActivityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? suggestions,  String? probleme,  String? temoignage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestHumaneSectionActivityModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? suggestions,  String? probleme,  String? temoignage)  $default,) {final _that = this;
switch (_that) {
case _RequestHumaneSectionActivityModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? suggestions,  String? probleme,  String? temoignage)?  $default,) {final _that = this;
switch (_that) {
case _RequestHumaneSectionActivityModel() when $default != null:
return $default(_that.suggestions,_that.probleme,_that.temoignage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestHumaneSectionActivityModel implements RequestHumaneSectionActivityModel {
   _RequestHumaneSectionActivityModel({this.suggestions = "", this.probleme = "", this.temoignage = ""});
  factory _RequestHumaneSectionActivityModel.fromJson(Map<String, dynamic> json) => _$RequestHumaneSectionActivityModelFromJson(json);

@override@JsonKey() final  String? suggestions;
@override@JsonKey() final  String? probleme;
@override@JsonKey() final  String? temoignage;

/// Create a copy of RequestHumaneSectionActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestHumaneSectionActivityModelCopyWith<_RequestHumaneSectionActivityModel> get copyWith => __$RequestHumaneSectionActivityModelCopyWithImpl<_RequestHumaneSectionActivityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestHumaneSectionActivityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestHumaneSectionActivityModel&&(identical(other.suggestions, suggestions) || other.suggestions == suggestions)&&(identical(other.probleme, probleme) || other.probleme == probleme)&&(identical(other.temoignage, temoignage) || other.temoignage == temoignage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,suggestions,probleme,temoignage);

@override
String toString() {
  return 'RequestHumaneSectionActivityModel(suggestions: $suggestions, probleme: $probleme, temoignage: $temoignage)';
}


}

/// @nodoc
abstract mixin class _$RequestHumaneSectionActivityModelCopyWith<$Res> implements $RequestHumaneSectionActivityModelCopyWith<$Res> {
  factory _$RequestHumaneSectionActivityModelCopyWith(_RequestHumaneSectionActivityModel value, $Res Function(_RequestHumaneSectionActivityModel) _then) = __$RequestHumaneSectionActivityModelCopyWithImpl;
@override @useResult
$Res call({
 String? suggestions, String? probleme, String? temoignage
});




}
/// @nodoc
class __$RequestHumaneSectionActivityModelCopyWithImpl<$Res>
    implements _$RequestHumaneSectionActivityModelCopyWith<$Res> {
  __$RequestHumaneSectionActivityModelCopyWithImpl(this._self, this._then);

  final _RequestHumaneSectionActivityModel _self;
  final $Res Function(_RequestHumaneSectionActivityModel) _then;

/// Create a copy of RequestHumaneSectionActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? suggestions = freezed,Object? probleme = freezed,Object? temoignage = freezed,}) {
  return _then(_RequestHumaneSectionActivityModel(
suggestions: freezed == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as String?,probleme: freezed == probleme ? _self.probleme : probleme // ignore: cast_nullable_to_non_nullable
as String?,temoignage: freezed == temoignage ? _self.temoignage : temoignage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RequestSuggestionResponseModel {

 String? get fullname; String? get recommandation; bool? get isDisciple; String? get probleme;
/// Create a copy of RequestSuggestionResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestSuggestionResponseModelCopyWith<RequestSuggestionResponseModel> get copyWith => _$RequestSuggestionResponseModelCopyWithImpl<RequestSuggestionResponseModel>(this as RequestSuggestionResponseModel, _$identity);

  /// Serializes this RequestSuggestionResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestSuggestionResponseModel&&(identical(other.fullname, fullname) || other.fullname == fullname)&&(identical(other.recommandation, recommandation) || other.recommandation == recommandation)&&(identical(other.isDisciple, isDisciple) || other.isDisciple == isDisciple)&&(identical(other.probleme, probleme) || other.probleme == probleme));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullname,recommandation,isDisciple,probleme);

@override
String toString() {
  return 'RequestSuggestionResponseModel(fullname: $fullname, recommandation: $recommandation, isDisciple: $isDisciple, probleme: $probleme)';
}


}

/// @nodoc
abstract mixin class $RequestSuggestionResponseModelCopyWith<$Res>  {
  factory $RequestSuggestionResponseModelCopyWith(RequestSuggestionResponseModel value, $Res Function(RequestSuggestionResponseModel) _then) = _$RequestSuggestionResponseModelCopyWithImpl;
@useResult
$Res call({
 String? fullname, String? recommandation, bool? isDisciple, String? probleme
});




}
/// @nodoc
class _$RequestSuggestionResponseModelCopyWithImpl<$Res>
    implements $RequestSuggestionResponseModelCopyWith<$Res> {
  _$RequestSuggestionResponseModelCopyWithImpl(this._self, this._then);

  final RequestSuggestionResponseModel _self;
  final $Res Function(RequestSuggestionResponseModel) _then;

/// Create a copy of RequestSuggestionResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullname = freezed,Object? recommandation = freezed,Object? isDisciple = freezed,Object? probleme = freezed,}) {
  return _then(_self.copyWith(
fullname: freezed == fullname ? _self.fullname : fullname // ignore: cast_nullable_to_non_nullable
as String?,recommandation: freezed == recommandation ? _self.recommandation : recommandation // ignore: cast_nullable_to_non_nullable
as String?,isDisciple: freezed == isDisciple ? _self.isDisciple : isDisciple // ignore: cast_nullable_to_non_nullable
as bool?,probleme: freezed == probleme ? _self.probleme : probleme // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestSuggestionResponseModel].
extension RequestSuggestionResponseModelPatterns on RequestSuggestionResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestSuggestionResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestSuggestionResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestSuggestionResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _RequestSuggestionResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestSuggestionResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _RequestSuggestionResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? fullname,  String? recommandation,  bool? isDisciple,  String? probleme)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestSuggestionResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? fullname,  String? recommandation,  bool? isDisciple,  String? probleme)  $default,) {final _that = this;
switch (_that) {
case _RequestSuggestionResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? fullname,  String? recommandation,  bool? isDisciple,  String? probleme)?  $default,) {final _that = this;
switch (_that) {
case _RequestSuggestionResponseModel() when $default != null:
return $default(_that.fullname,_that.recommandation,_that.isDisciple,_that.probleme);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestSuggestionResponseModel implements RequestSuggestionResponseModel {
  const _RequestSuggestionResponseModel({this.fullname = "", this.recommandation = "", this.isDisciple = false, this.probleme = ""});
  factory _RequestSuggestionResponseModel.fromJson(Map<String, dynamic> json) => _$RequestSuggestionResponseModelFromJson(json);

@override@JsonKey() final  String? fullname;
@override@JsonKey() final  String? recommandation;
@override@JsonKey() final  bool? isDisciple;
@override@JsonKey() final  String? probleme;

/// Create a copy of RequestSuggestionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestSuggestionResponseModelCopyWith<_RequestSuggestionResponseModel> get copyWith => __$RequestSuggestionResponseModelCopyWithImpl<_RequestSuggestionResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestSuggestionResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestSuggestionResponseModel&&(identical(other.fullname, fullname) || other.fullname == fullname)&&(identical(other.recommandation, recommandation) || other.recommandation == recommandation)&&(identical(other.isDisciple, isDisciple) || other.isDisciple == isDisciple)&&(identical(other.probleme, probleme) || other.probleme == probleme));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullname,recommandation,isDisciple,probleme);

@override
String toString() {
  return 'RequestSuggestionResponseModel(fullname: $fullname, recommandation: $recommandation, isDisciple: $isDisciple, probleme: $probleme)';
}


}

/// @nodoc
abstract mixin class _$RequestSuggestionResponseModelCopyWith<$Res> implements $RequestSuggestionResponseModelCopyWith<$Res> {
  factory _$RequestSuggestionResponseModelCopyWith(_RequestSuggestionResponseModel value, $Res Function(_RequestSuggestionResponseModel) _then) = __$RequestSuggestionResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? fullname, String? recommandation, bool? isDisciple, String? probleme
});




}
/// @nodoc
class __$RequestSuggestionResponseModelCopyWithImpl<$Res>
    implements _$RequestSuggestionResponseModelCopyWith<$Res> {
  __$RequestSuggestionResponseModelCopyWithImpl(this._self, this._then);

  final _RequestSuggestionResponseModel _self;
  final $Res Function(_RequestSuggestionResponseModel) _then;

/// Create a copy of RequestSuggestionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullname = freezed,Object? recommandation = freezed,Object? isDisciple = freezed,Object? probleme = freezed,}) {
  return _then(_RequestSuggestionResponseModel(
fullname: freezed == fullname ? _self.fullname : fullname // ignore: cast_nullable_to_non_nullable
as String?,recommandation: freezed == recommandation ? _self.recommandation : recommandation // ignore: cast_nullable_to_non_nullable
as String?,isDisciple: freezed == isDisciple ? _self.isDisciple : isDisciple // ignore: cast_nullable_to_non_nullable
as bool?,probleme: freezed == probleme ? _self.probleme : probleme // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
