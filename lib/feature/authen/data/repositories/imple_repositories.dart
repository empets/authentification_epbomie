


import 'package:dartz/dartz.dart';
import 'package:grace_church/core/api/failure/fail.dart';
import 'package:grace_church/core/data_process/success.dart';
import 'package:grace_church/feature/authen/data/service/impl_remote_service.dart';
import 'package:grace_church/feature/authen/domaine/entities/request/authen_request.dart';
import 'package:grace_church/feature/authen/domaine/repository/authen_repository.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/request/home_request.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';
import 'package:grace_church/feature/dashboard/data/model/home_model.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: AuthenRepository)
class ImpleAuthenRepository implements AuthenRepository {
  ImpleAuthenRepository({required this.authenRemoteService});

  final AuthenRemoteService authenRemoteService;

  @override
  Future<Either<Failure, String?>> createProfile(
    RequestAuthenProfile request,
  ) async {
    final response = await authenRemoteService.createProfile(request);
    if (response is FirebaseSuccess<String?>) {
      final shared = await SharedPreferences.getInstance();
      await shared.setString('menberkey', response.data ?? '');
      return Right(response.data);
    } else if (response is FirebaseError<String?>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  @override
  Future<Either<Failure, String?>> updateProfile(
    RequestAuthenProfile request,
  ) async {
    final response = await authenRemoteService.updateProfile(request);
    if (response is FirebaseSuccess<String?>) {
      final shared = await SharedPreferences.getInstance();
      await shared.setString('menberkey', response.data ?? '');
      return Right(response.data);
    } else if (response is FirebaseError<String?>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  @override
  Future<Either<Failure, String?>> createSocial(
    RequestAuthenSocial params,
  ) async {
    final response = await authenRemoteService.createSocial(params);
    if (response is FirebaseSuccess<String?>) {
      final shared = await SharedPreferences.getInstance();
      await shared.setString('menberkey', response.data ?? '');
      return Right(response.data);
    } else if (response is FirebaseError<String?>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  @override
  Future<Either<Failure, String?>> createSpiritualLife(
    RequestAuthenSpiritualLife request,
  ) async {
    final response = await authenRemoteService.createSpiritualLife(request);
    if (response is FirebaseSuccess<String?>) {
      final shared = await SharedPreferences.getInstance();
      await shared.setString('menberkey', response.data ?? '');
      return Right(response.data);
    } else if (response is FirebaseError<String?>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  @override
  Future<Either<Failure, String?>> createEngagement(
    RequestAuthenEngagement request,
  ) async {
    final response = await authenRemoteService.createEngagement(request);
    if (response is FirebaseSuccess<String?>) {
      final shared = await SharedPreferences.getInstance();
      await shared.setString('menberkey', response.data ?? '');
      return Right(response.data);
    } else if (response is FirebaseError<String?>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  @override
  Future<Either<Failure,String?>> createSignIn(
    RequestAuthenSignIn request,
  ) async {
    final response = await authenRemoteService.createSignIn(request);
    if (response is FirebaseSuccess<String?>) {
      final shared = await SharedPreferences.getInstance();
      await shared.setString('menberkey', response.data ?? '');
      return Right(response.data);
    } else if (response is FirebaseError<String?>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }
  
  @override
  Future<Either<Failure, String?>> updateProfileId(RequestAuthenUpdateProfileKey params) async {
    final response = await authenRemoteService.updateProfileId(params);
    if (response is FirebaseSuccess<String?>) {
      final shared = await SharedPreferences.getInstance();
      await shared.setString('menberkey', response.data ?? '');
      return Right(response.data);
    } else if (response is FirebaseError<String?>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

   // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: sendImpliciteConnexion                                    
  // Paramètre: RequestImpliciteConnexion
  // Retour: ProfileResponse (qui contient les informations du profil de l'utilisateur)
  // Description: Cette methode permet de faire une connexion implicite lors du second lancement de l'application
  // ----------------------------------------------------------------------------------------------------------------------------
    @override
  Future<Either<Failure, ProfileResponse>> sendImpliciteConnexion(RequestImpliciteConnexion params) async {
    final response = await authenRemoteService.sendImpliciteConnexion(params);
    if (response is FirebaseSuccess<ProfileResponseModel>) {
      return Right(ProfileResponseModel.domaine(response.data));
    } else if (response is FirebaseError<ProfileResponseModel>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }
  
  @override
  Future<Either<Failure, List<ProfileResponse>>> getProfileList(RequestGetProfile notParms) {
    // TODO: implement getProfileList
    throw UnimplementedError();
  }


  
}
