import 'package:dartz/dartz.dart';
import 'package:grace_church/core/api/failure/fail.dart';
import 'package:grace_church/feature/authen/domaine/entities/request/authen_request.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/request/home_request.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';

abstract class AuthenRepository {
  // ---------------------------------------------------------------------------------------------
  // cette permet de creer le profile 
  // il prend en paramètre un objet RequestAuthenProfile qui contient les parametre de la requette 
  // il retourne un objet String? qui contient l'id du profile cree
  // ---------------------------------------------------------------------------------------------
  Future<Either<Failure, String?>> createProfile(RequestAuthenProfile request);

  // ---------------------------------------------------------------------------------------------
  // cette permet de mettre a jour le profile 
  // il prend en paramètre un objet RequestAuthenProfile qui contient les parametre de la requette 
  // il retourne un objet String? qui contient l'id du profile mis a jour
  // ---------------------------------------------------------------------------------------------
  Future<Either<Failure, String?>> updateProfile(RequestAuthenProfile request);
  
  // ---------------------------------------------------------------------------------------------
  // Cette permet de creer ou mettre a jour les informations sociales
  // il prend en paramètre un objet RequestAuthenSocial qui contient les parametre de la requette 
  // il retourne un objet String? qui contient l'id du social cree ou mis a jour
  // ---------------------------------------------------------------------------------------------
  Future<Either<Failure, String?>> createSocial(RequestAuthenSocial request);
  
  // ---------------------------------------------------------------------------------------------
  // Cette permet de creer ou mettre a jour les informations spirituelles
  // il prend en paramètre un objet RequestAuthenSpiritualLife qui contient les parametre de la requette 
  // il retourne un objet String? qui contient l'id du spiritual life cree ou mis a jour
  // ---------------------------------------------------------------------------------------------
  Future<Either<Failure, String?>> createSpiritualLife(RequestAuthenSpiritualLife request);
  
  // ---------------------------------------------------------------------------------------------
  // Cette permet de creer ou mettre a jour les informations d'engagement
  // il prend en paramètre un objet RequestAuthenEngagement qui contient les parametre de la requette 
  // il retourne un objet String? qui contient l'id de l'engagement cree ou mis a jour
  // ---------------------------------------------------------------------------------------------
  Future<Either<Failure, String?>> createEngagement(RequestAuthenEngagement request);

  // ---------------------------------------------------------------------------------------------
  // Cette permet de creer ou mettre a jour les informations de connexion
  // il prend en paramètre un objet RequestAuthenSignIn qui contient les parametre de la requette 
  // il retourne un objet String? qui contient l'id de la connexion cree ou mis a jour
  // ---------------------------------------------------------------------------------------------
  Future<Either<Failure, String?>> createSignIn(RequestAuthenSignIn request);
  
  // ---------------------------------------------------------------------------------------------
  // Cette permet de mettre a jour le device id apres la sign 
  // il prend en paramètre un objet RequestAuthenUpdateProfileKey qui contient les parametre de la requette (deviceId)
  // il retourne un objet String? qui contient l'id de la connexion cree ou mis a jour
  // ---------------------------------------------------------------------------------------------
  Future<Either<Failure, String?>> updateProfileId(RequestAuthenUpdateProfileKey params);

   
  // -------------------------------------------------------------
  //  cette methode permet d'envoyer l'implicite connexion
  //  elle prend en parametre un objet RequestImpliciteConnexion qui contient les criteres de recherche
  //  elle retourne un objet ProfileResponse qui contient le profil de l'utilisateur
  // -------------------------------------------------------------
  Future<Either<Failure, ProfileResponse>> sendImpliciteConnexion(RequestImpliciteConnexion params);

  // -------------------------------------------------------------
  //  cette methode permet de recuperer le profile d'un utilisateur
  //  elle prend en parametre un objet RequestGetProfile qui contient les criteres de recherche
  //  elle retourne un objet ProfileResponse qui contient le profile de l'utilisateur
  // -------------------------------------------------------------
  Future<Either<Failure, List<ProfileResponse>>> getProfileList(RequestGetProfile notParms);
 
}


