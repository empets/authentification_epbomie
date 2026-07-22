import 'package:dartz/dartz.dart';
import 'package:grace_church/core/api/failure/fail.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/response/cellule_response.dart';

abstract  class  CelluleRepositoriesDomaine {

  // -------------------------------------------------------------
  //  cette methode permet de recuperer la liste des cellules
  //  elle prend en parametre un objet RequestCellule qui contient les criteres de recherche
  //  elle retourne un objet List<CelluleResponse> qui contient la liste des cellules
  // -------------------------------------------------------------
  Future<Either<Failure, List<CelluleResponse>>> getListCellules(RequestCellule params,);
  // -------------------------------------------------------------
  //  cette methode permet de recuperer la liste des responsables de cellules
  //  elle prend en parametre un objet RequestReponsableCellule qui contient les criteres de recherche
  //  elle retourne un objet List<ReponsableCelluleResponse> qui contient la liste des responsables de cellules
  // -------------------------------------------------------------
  Future<Either<Failure, List<ReponsableCelluleResponse>>>getListResponsablesCellules(RequestReponsableCellule params);
  
  // -------------------------------------------------------------
  //  cette methode permet de recuperer la liste des responsables de secteurs
  //  elle prend en parametre un objet RequestSecteur qui contient les criteres de recherche
  //  elle retourne un objet List<SecteurResponse> qui contient la liste des responsables de secteurs
  // -------------------------------------------------------------
  Future<Either<Failure, List<SecteurResponse>>>getListResponsablesSecteurs(RequestSecteur params);


  // -------------------------------------------------------------
  //  cette methode permet de recuperer la liste des responsables de zones
  //  elle prend en parametre un objet RequestZone qui contient les criteres de recherche
  //  elle retourne un objet List<ZoneResponse> qui contient la liste des responsables de zones
  // -------------------------------------------------------------
  Future<Either<Failure, List<ZoneResponse>>>getListResponsablesZones(RequestZone params);

  // -------------------------------------------------------------
  //  cette methode permet d'envoyer le rapport de la cellule
  //  elle prend en parametre un objet RequestRapportCelluleAdministration qui contient les criteres de recherche
  //  elle retourne un objet String qui contient le message de reponse
  // -------------------------------------------------------------
  Future<Either<Failure, String>> sendRapportCelluleStepAdministration(RequestRapportCelluleAdministration params);


  // -------------------------------------------------------------
  //  cette methode permet d'envoyer le rapport de la cellule
  //  elle prend en parametre un objet RequestRapportCelluleAssistance qui contient les criteres de recherche
  //  elle retourne un objet String qui contient le message de reponse
  // -------------------------------------------------------------
  Future<Either<Failure, String>> sendRapportCelluleStepAssistance(RequestRapportCelluleAssistance params);



  // -------------------------------------------------------------
  //  cette methode permet d'envoyer le rapport de la cellule
  //  elle prend en parametre un objet RequestRapportCelluleActivity qui contient les criteres de recherche
  //  elle retourne un objet String qui contient le message de reponse
  // -------------------------------------------------------------
  Future<Either<Failure, String>> sendRapportCelluleStepActivity(RequestRapportCelluleActivity params);

   
   
  // -------------------------------------------------------------
  //  cette methode permet d'envoyer le rapport de la cellule
  //  elle prend en parametre un objet RequestRapportCelluleSuggestion qui contient les criteres de recherche
  //  elle retourne un objet String qui contient le message de reponse
  // -------------------------------------------------------------
  Future<Either<Failure, String>> sendRapportCelluleStepSuggestion(RequestRapportCelluleSuggestion params);

  

  // -------------------------------------------------------------
  //  cette methode permet de recuperer le rapport de la cellule
  //  elle prend en parametre un objet RequestRapportCellule qui contient les criteres de recherche
  //  elle retourne une liste de RapportCelluleResponse qui contient les rapport de la cellule
  // -------------------------------------------------------------
  Future<Either<Failure, List<RapportCelluleResponse>>> getRapportCellule(RequestRapportCellule params);


  
}