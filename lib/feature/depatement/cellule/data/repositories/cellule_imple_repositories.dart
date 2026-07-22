import 'package:dartz/dartz.dart';
import 'package:grace_church/core/api/failure/fail.dart';
import 'package:grace_church/core/data_process/success.dart';
import 'package:grace_church/feature/depatement/cellule/data/model/cellule_model.dart';
import 'package:grace_church/feature/depatement/cellule/data/services/celllule_repositories_remote_services.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/response/cellule_response.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/repositories/cellule_repositories_domaine.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: CelluleRepositoriesDomaine)
class  CelluleImpleRepositories implements CelluleRepositoriesDomaine {
   CelluleImpleRepositories({required this.cellluleRepositoriesRemoteServices});
   
   final CellluleRepositoriesRemoteServices cellluleRepositoriesRemoteServices;
   
 
 


 // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: getListResponsablesCellules                                    
  // Paramètre: RequestReponsableCellule
  // Retour: List<ReponsableCelluleResponse> (qui contient les informations des cellules)
  // Description: Cette methode permet de récupérer la liste des responsables de cellules
  // ----------------------------------------------------------------------------------------------------------------------------

  @override
  Future<Either<Failure, List<CelluleResponse>>> getListCellules(
    RequestCellule params,
  ) async {
    final response = await cellluleRepositoriesRemoteServices.getListCellules(params);
    if (response is FirebaseSuccess<List<CelluleResponseModel>>) {
      return Right(response.data.map(CelluleResponseModel.domaine).toList());
    } else if (response is FirebaseError<List<CelluleResponseModel>>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }
 
  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: getListResponsablesCellules                                    
  // Paramètre: RequestReponsableCellule
  // Retour: List<ReponsableCelluleResponse> (qui contient les informations des cellules)
  // Description: Cette methode permet de récupérer la liste des responsables de cellules
  // ----------------------------------------------------------------------------------------------------------------------------
 
  @override
  Future<Either<Failure, List<ReponsableCelluleResponse>>>
  getListResponsablesCellules(RequestReponsableCellule params) async {
    final response = await cellluleRepositoriesRemoteServices.getListResponsablesCellules(
      params,
    );
    if (response is FirebaseSuccess<List<ReponsableCelluleResponseModel>>) {
      return Right(
        response.data.map(ReponsableCelluleResponseModel.domaine).toList(),
      );
    } else if (response is FirebaseError<List<ReponsableCelluleResponseModel>>) {
      
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }
 
  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: getListResponsablesSecteurs                                    
  // Paramètre: RequestSecteur
  // Retour: List<SecteurResponse> (qui contient les informations des secteurs)
  // Description: Cette methode permet de récupérer la liste des responsables de secteurs
  // ----------------------------------------------------------------------------------------------------------------------------
  @override
  Future<Either<Failure, List<SecteurResponse>>>
  getListResponsablesSecteurs(RequestSecteur params) async {
    final response = await cellluleRepositoriesRemoteServices.getListResponsablesSecteurs(
      params,
    );
    if (response is FirebaseSuccess<List<SecteurModel>>) {
      return Right(
        response.data.map(SecteurModel.toDomain).toList(),
      );
    } else if (response is FirebaseError<List<SecteurModel>>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: getListResponsablesZones                                    
  // Paramètre: RequestZone
  // Retour: List<ZoneResponse> (qui contient les informations des zones)
  // Description: Cette methode permet de récupérer la liste des responsables de zones
  // ----------------------------------------------------------------------------------------------------------------------------
  @override
  Future<Either<Failure, List<ZoneResponse>>>
  getListResponsablesZones(RequestZone params) async {
    final response = await cellluleRepositoriesRemoteServices.getListResponsablesZones(
      params,
    );
    if (response is FirebaseSuccess<List<ZoneResponseModel>>) {
      return Right(
        response.data.map(ZoneResponseModel.toDomain).toList(),
      );
    } else if (response is FirebaseError<List<ZoneResponseModel>>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: sendRapportCelluleStepAdministration                                    
  // Paramètre: RequestRapportCelluleAdministration
  // Retour: String (clé du rapport de cellule)
  // Description: Cette methode permet d'envoyer une administration pour un rapport de cellule en fonction de l'id du rapport
  // ----------------------------------------------------------------------------------------------------------------------------

  @override
  Future<Either<Failure, String>> sendRapportCelluleStepAdministration(
    RequestRapportCelluleAdministration params,
  ) async {
    final response = await cellluleRepositoriesRemoteServices
        .sendRapportCelluleStepAdministration(params);
    if (response is FirebaseSuccess<String>) {
      return Right(response.data);
    } else if (response is FirebaseError<String>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }
  
  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: sendRapportCelluleStepAssistance                                    
  // Paramètre: RequestRapportCelluleAssistance
  // Retour: String (clé du rapport de cellule)
  // Description: Cette methode permet d'envoyer une assistance pour un rapport de cellule en fonction de l'id du rapport
  // ----------------------------------------------------------------------------------------------------------------------------
  @override
  Future<Either<Failure, String>> sendRapportCelluleStepAssistance(RequestRapportCelluleAssistance params) async {
    final response = await cellluleRepositoriesRemoteServices.sendRapportCelluleStepAssistance(params);
    if (response is FirebaseSuccess<String>) {
      return Right(response.data);
    } else if (response is FirebaseError<String>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }
  
  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: sendRapportCelluleStepActivity                                    
  // Paramètre: RequestRapportCelluleActivity
  // Retour: String (clé du rapport de cellule)
  // Description: Cette methode permet d'envoyer une activité pour un rapport de cellule en fonction de l'id du rapport
  // ----------------------------------------------------------------------------------------------------------------------------
  @override
  Future<Either<Failure, String>> sendRapportCelluleStepActivity(RequestRapportCelluleActivity params) async {
    final response = await cellluleRepositoriesRemoteServices.sendRapportCelluleStepActivity(params);
    if (response is FirebaseSuccess<String>) {
      return Right(response.data);
    } else if (response is FirebaseError<String>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }
  
  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: sendRapportCelluleStepSuggestion                                    
  // Paramètre: RequestRapportCelluleSuggestion
  // Retour: String (clé du rapport de cellule)
  // Description: Cette methode permet d'envoyer une suggestion pour un rapport de cellule en fonction de l'id du rapport
  // ----------------------------------------------------------------------------------------------------------------------------

  @override
  Future<Either<Failure, String>> sendRapportCelluleStepSuggestion(RequestRapportCelluleSuggestion params)async {
    final response = await cellluleRepositoriesRemoteServices.sendRapportCelluleStepSuggestion(params);
    if (response is FirebaseSuccess<String>) {
      return Right(response.data);
    } else if (response is FirebaseError<String>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: getRapportCellule                                    
  // Paramètre: RequestRapportCellule
  // Retour: List<RapportCelluleResponse>
  // Description: Cette methode permet de récupérer une liste de rapports de cellule en fonction de l'id du responsable de cellule
  // ----------------------------------------------------------------------------------------------------------------------------
  @override
  Future<Either<Failure, List<RapportCelluleResponse>>> getRapportCellule(RequestRapportCellule params) async {
    final response = await cellluleRepositoriesRemoteServices.getRapportCellule(params);
    if (response is FirebaseSuccess<List<RapportCelluleResponseModel>>) {
      return Right(response.data.map(RapportCelluleResponseModel.toDomain).toList());
    } else if (response is FirebaseError<List<RapportCelluleResponseModel>>) {
      return Left(Failure(message: response.message));
    }
    return Left(Failure(message: "Erreur inconnue"));

    
  
}



}