import 'package:grace_church/core/data_process/success.dart';
import 'package:grace_church/feature/dashboard/data/model/home_model.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/request/home_request.dart'
    hide EmptyRequest;

abstract class DomaineServiceRepository {
  

  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: getProfile                                    
  // Paramètre: RequestGetProfile
  // Retour: ProfileResponse
  // Description: Cette methode permet de récupérer le profil de l'utilisateur
  // ----------------------------------------------------------------------------------------------------------------------------
  Future<FirebaseResult<ProfileResponseModel>> getProfile(
    RequestGetProfile notParms,
  );


    /// ----------------------------------------------------------------------------------------------------------------------------
  /// Methode: getProfileList                                    
  /// Paramètre: RequestGetProfile
  /// Retour: List<ProfileResponseModel>
  /// Description: Cette methode permet de récupérer la liste des profils
  /// ----------------------------------------------------------------------------------------------------------------------------
  Future<FirebaseResult<List<ProfileResponseModel>>> getProfileList(
    RequestGetProfile notParms,
  );

     /// ----------------------------------------------------------------------------------------------------------------------------
  /// Methode: getPresenceList                                    
  /// Paramètre: RequestGetProfile
  /// Retour: List<PresenceResponseModel>
  /// Description: Cette methode permet de récupérer la liste des présences
  /// ----------------------------------------------------------------------------------------------------------------------------
  Future<FirebaseResult<List<PresenceResponseModel>>> getPresenceList(
    RequestGetProfile notParms,
  );

   

}

