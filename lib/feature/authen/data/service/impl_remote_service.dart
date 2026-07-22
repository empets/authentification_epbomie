import 'package:grace_church/core/data_process/success.dart';
import 'package:grace_church/feature/authen/domaine/entities/request/authen_request.dart';
import 'package:grace_church/feature/dashboard/data/model/home_model.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';

abstract class AuthenRemoteService {
  // ---------------------------------------------------------------------------------------------
  // cette permet de creer ou mettre a jour le profile 
  // il prend en paramètre un objet RequestAuthenProfile qui contient les parametre de la requette 
  // il retourne un objet String? qui contient l'id du profile cree ou mis a jour
  // ---------------------------------------------------------------------------------------------
  Future<FirebaseResult<String?>> createProfile(RequestAuthenProfile params);
  // ---------------------------------------------------------------------------------------------
  // Cette permet de creer ou mettre a jour les informations sociales
  // il prend en paramètre un objet RequestAuthenSocial qui contient les parametre de la requette 
  // il retourne un objet String? qui contient l'id du social cree ou mis a jour
  // ---------------------------------------------------------------------------------------------
  Future<FirebaseResult<String?>> createSocial(RequestAuthenSocial params);
    // ---------------------------------------------------------------------------------------------
  // Cette permet de creer ou mettre a jour les informations spirituelles
  // il prend en paramètre un objet RequestAuthenSpiritualLife qui contient les parametre de la requette 
  // il retourne un objet String? qui contient l'id du spiritual life cree ou mis a jour
  // ---------------------------------------------------------------------------------------------
  Future<FirebaseResult<String?>> createSpiritualLife(RequestAuthenSpiritualLife params);
  
  // ---------------------------------------------------------------------------------------------
  // Cette permet de creer ou mettre a jour les informations d'engagement
  // il prend en paramètre un objet RequestAuthenEngagement qui contient les parametre de la requette 
  // il retourne un objet String? qui contient l'id de l'engagement cree ou mis a jour
  // ---------------------------------------------------------------------------------------------
  Future<FirebaseResult<String?>> createEngagement(RequestAuthenEngagement params);
  
  // ---------------------------------------------------------------------------------------------
  // Cette permet de creer ou mettre a jour les informations de connexion
  // il prend en paramètre un objet RequestAuthenSignIn qui contient les parametre de la requette 
  // il retourne un objet String? qui contient l'id de la connexion cree ou mis a jour
  // ---------------------------------------------------------------------------------------------
  Future<FirebaseResult<String?>> createSignIn(RequestAuthenSignIn params);
  
  // ---------------------------------------------------------------------------------------------
  // Cette permet de mettre a jour le profile 
  // il prend en paramètre un objet RequestAuthenProfile qui contient les parametre de la requette 
  // il retourne un objet String? qui contient l'id du profile cree ou mis a jour
  // ---------------------------------------------------------------------------------------------
  Future<FirebaseResult<String?>> updateProfile(RequestAuthenProfile params);
    // ---------------------------------------------------------------------------------------------
  // Cette permet de mettre a jour le device id apres la sign 
  // il prend en paramètre un objet RequestAuthenUpdateProfileKey qui contient les parametre de la requette (deviceId)
  // il retourne un objet String? qui contient l'id de la connexion cree ou mis a jour
  // ---------------------------------------------------------------------------------------------
  Future<FirebaseResult<String?>> updateProfileId(RequestAuthenUpdateProfileKey params);


  /// ----------------------------------------------------------------------------------------------------------------------------
  /// Methode: sendImpliciteConnexion                                    
  /// Paramètre: RequestImpliciteConnexion
  /// Retour: ProfileResponseModel
  /// Description: Cette methode permet d'envoyer une connexion implicite
  /// ----------------------------------------------------------------------------------------------------------------------------
  Future<FirebaseResult<ProfileResponseModel>> sendImpliciteConnexion(RequestImpliciteConnexion params);




}
