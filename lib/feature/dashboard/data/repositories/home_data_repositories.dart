import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:grace_church/core/api/failure/fail.dart';
import 'package:grace_church/core/data_process/success.dart';
import 'package:grace_church/feature/dashboard/data/model/home_model.dart';
import 'package:grace_church/feature/dashboard/data/service/repository_remote_service.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/request/home_request.dart'
    hide EmptyRequest;
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';
import 'package:grace_church/feature/dashboard/domaine/repository/home_domain_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: HomeDomaineRepository)
class ImpleHomeDataRepositories implements HomeDomaineRepository {
  ImpleHomeDataRepositories({required this.domaineServiceRepository});

  final DomaineServiceRepository domaineServiceRepository;
  static const _cacheKey = 'profile_cache';
 static const _cacheDuration = Duration(microseconds: 1);


  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: getProfile                                    
  // Paramètre: RequestGetProfile
  // Retour: ProfileResponse
  // Description: Cette methode permet de récupérer le profil de l'utilisateur
  // ----------------------------------------------------------------------------------------------------------------------------
@override
Future<Either<Failure, ProfileResponse>> getProfile(
  RequestGetProfile notParms,
) async {
  // 1. Vérifier le cache
  final cached = await _getCachedProfile();
  if (cached != null) return Right(cached);

  // 2. Appel réseau si cache absent ou expiré
  final response = await domaineServiceRepository.getProfile(notParms);
  if (response is FirebaseSuccess<ProfileResponseModel>) {
    final shared = await SharedPreferences.getInstance();
    await shared.setString('menberkey', response.data.menberId ?? "");

    // 3. Sauvegarder en cache
    await _saveProfileCache(response.data);

    return Right(ProfileResponseModel.domaine(response.data));
  } else if (response is FirebaseError<ProfileResponseModel>) {
    return Left(Failure(message: response.message));
  }
  return Left(Failure(message: "Erreur inconnue"));
}



  Future<ProfileResponse?> _getCachedProfile() async {
  final shared = await SharedPreferences.getInstance();
  final json = shared.getString(_cacheKey);
  final timestamp = shared.getInt('${_cacheKey}_timestamp');

  if (json == null || timestamp == null) return null;

  final age = DateTime.now().millisecondsSinceEpoch - timestamp;
  if (age > _cacheDuration.inMilliseconds) return null;

  return ProfileResponseModel.domaine(
    ProfileResponseModel.fromJson(jsonDecode(json)),
  );
}

Future<void> _saveProfileCache(ProfileResponseModel data) async {
  final shared = await SharedPreferences.getInstance();
  await shared.setString(_cacheKey, jsonEncode(data.toJson()));
  await shared.setInt(
    '${_cacheKey}_timestamp',
    DateTime.now().millisecondsSinceEpoch,
  );
}

/// À appeler lors du logout ou d'un refresh forcé
Future<void> clearProfileCache() async {
  final shared = await SharedPreferences.getInstance();
  await shared.remove(_cacheKey);
  await shared.remove('${_cacheKey}_timestamp');
}



  
  @override
  Future<Either<Failure, List<ProfileResponse>>> getProfileAll(RequestGetProfile notParms) async {
        final response = await domaineServiceRepository.getProfileList(notParms);
    if (response is FirebaseSuccess<List<ProfileResponseModel>>) {
      return Right(response.data.map(ProfileResponseModel.domaine).toList());
    } else if (response is FirebaseError<List<ProfileResponseModel>>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }
  
  @override
  Future<Either<Failure, List<PresenceResponse>>> getPresenceList(RequestGetProfile notParms) async {
        final response = await domaineServiceRepository.getPresenceList(notParms);
    if (response is FirebaseSuccess<List<PresenceResponseModel>>) {
      return Right(response.data.map(PresenceResponseModel.toDomain).toList());
    } else if (response is FirebaseError<List<PresenceResponseModel>>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }





}
