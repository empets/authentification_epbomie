


import 'package:grace_church/core/data_process/success.dart';
import 'package:grace_church/feature/depatement/cellule/data/model/cellule_model.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';

abstract  class CellluleRepositoriesRemoteServices {
  


  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: [getListResponsablesCellules]                                    
  // Paramètre: RequestReponsableCellule
  // Retour: List<ReponsableCelluleResponse> (qui contient les informations des cellules)
  // Description: Cette methode permet de récupérer la liste des responsables de cellules
  // ----------------------------------------------------------------------------------------------------------------------------
  Future<FirebaseResult<List<CelluleResponseModel>>> getListCellules(RequestCellule params);

  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: [getListResponsablesCellules]                                    
  // Paramètre: RequestReponsableCellule
  // Retour: List<ReponsableCelluleResponse> (qui contient les informations des cellules)
  // Description: Cette methode permet de récupérer la liste des responsables de cellules
  // ----------------------------------------------------------------------------------------------------------------------------
  Future<FirebaseResult<List<ReponsableCelluleResponseModel>>>getListResponsablesCellules(RequestReponsableCellule params);
  

 
  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: getListResponsablesSecteurs                                    
  // Paramètre: RequestSecteur
  // Retour: List<SecteurResponse> (qui contient les informations des secteurs)
  // Description: Cette methode permet de récupérer la liste des responsables de secteurs
  // ----------------------------------------------------------------------------------------------------------------------------

  Future<FirebaseResult<List<SecteurModel>>>getListResponsablesSecteurs(RequestSecteur params);
  
  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: getListResponsablesZones                                    
  // Paramètre: RequestZone
  // Retour: List<ZoneResponse> (qui contient les informations des zones)
  // Description: Cette methode permet de récupérer la liste des responsables de zones
  // ----------------------------------------------------------------------------------------------------------------------------
  Future<FirebaseResult<List<ZoneResponseModel>>>getListResponsablesZones(RequestZone params);
  
  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: sendRapportCelluleStepAdministration                                    
  // Paramètre: RequestRapportCelluleAdministration
  // Retour: String (clé du rapport de cellule)
  // Description: Cette methode permet d'envoyer une administration pour un rapport de cellule en fonction de l'id du rapport
  // ----------------------------------------------------------------------------------------------------------------------------
  Future<FirebaseResult<String>> sendRapportCelluleStepAdministration(RequestRapportCelluleAdministration params);

  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: sendRapportCelluleStepAssistance                                    
  // Paramètre: RequestRapportCelluleAssistance
  // Retour: String (clé du rapport de cellule)
  // Description: Cette methode permet d'envoyer une assistance pour un rapport de cellule en fonction de l'id du rapport
  // ----------------------------------------------------------------------------------------------------------------------------
  Future<FirebaseResult<String>> sendRapportCelluleStepAssistance(RequestRapportCelluleAssistance params);

  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: sendRapportCelluleStepActivity                                    
  // Paramètre: RequestRapportCelluleActivity
  // Retour: String (clé du rapport de cellule)
  // Description: Cette methode permet d'envoyer une activité pour un rapport de cellule en fonction de l'id du rapport
  // ----------------------------------------------------------------------------------------------------------------------------
  Future<FirebaseResult<String>> sendRapportCelluleStepActivity(RequestRapportCelluleActivity params);

  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: sendRapportCelluleStepSuggestion                                    
  // Paramètre: RequestRapportCelluleSuggestion
  // Retour: String (clé du rapport de cellule)
  // Description: Cette methode permet d'envoyer une suggestion pour un rapport de cellule en fonction de l'id du rapport
  // ----------------------------------------------------------------------------------------------------------------------------
  Future<FirebaseResult<String>> sendRapportCelluleStepSuggestion(RequestRapportCelluleSuggestion params);

  // ----------------------------------------------------------------------------------------------------------------------------
  // Methode: getRapportCellule                                    
  // Paramètre: RequestRapportCellule
  // Retour: List<RapportCelluleResponse>
  // Description: Cette methode permet de récupérer une liste de rapports de cellule en fonction de l'id du responsable de cellule
  // ----------------------------------------------------------------------------------------------------------------------------
  Future<FirebaseResult<List<RapportCelluleResponseModel>>> getRapportCellule(RequestRapportCellule params);
  


}

