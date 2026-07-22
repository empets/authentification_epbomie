

import 'package:grace_church/core/data_process/request/request.dart';
import 'package:grace_church/core/data_process/success.dart';
import 'package:grace_church/core/extension/extention.dart';
import 'package:grace_church/feature/depatement/cellule/data/model/cellule_model.dart';
import 'package:grace_church/feature/depatement/cellule/data/services/celllule_repositories_remote_services.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart' as shareData;
import 'package:firebase_database/firebase_database.dart' as databaseReference;

@LazySingleton(as: CellluleRepositoriesRemoteServices)
class CelluleImpleRepositoriesRemotServices implements CellluleRepositoriesRemoteServices {
  CelluleImpleRepositoriesRemotServices({required this.db});

  final databaseReference.DatabaseReference db;
 



/// -------------------------- Method:[getListCellules] --------------------------------------------
/// Description:
/// Récupère une ou plusieurs cellules depuis Firebase Realtime Database
/// en fonction des critères de recherche fournis dans [RequestCellule].
///
/// Cette méthode permet :
/// • De récupérer une cellule spécifique à partir de son identifiant.
/// • De récupérer l'ensemble des cellules lorsqu'aucun critère n'est fourni.
///
/// Les données récupérées depuis Firebase sont converties en objets
/// [CelluleResponseModel] avant d'être retournées au consommateur.
///
/// Parameters:
/// • [params] : Critères de recherche des cellules.
///   - [celluleId] : Identifiant unique de la cellule à rechercher.
///   - [celluleCode] : Code de la cellule (non exploité actuellement).
///
/// Returns:
/// • [FirebaseSuccess<List<CelluleResponseModel>>] si la récupération
///   des cellules est effectuée avec succès.
/// • [FirebaseError] lorsqu'aucune cellule n'est trouvée ou lorsqu'une
///   erreur survient durant le traitement.
///
/// Throws (capturées et encapsulées):
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture des données.
/// • Erreurs de conversion vers [CelluleResponseModel].
/// • Erreurs liées à une structure de données invalide ou inattendue.
/// • Exceptions inattendues durant l'exécution.
///
/// Process:
/// • Analyse des critères de recherche fournis.
/// • Si un [celluleId] est renseigné :
///   - Recherche de la cellule correspondante via une requête Firebase.
/// • Sinon :
///   - Récupération de l'ensemble des cellules enregistrées.
/// • Conversion des données en objets [CelluleResponseModel].
/// • Retour des résultats via un [FirebaseSuccess].
/// • Encapsulation des erreurs dans un [FirebaseError].
  @override
  Future<FirebaseResult<List<CelluleResponseModel>>> getListCellules(
    RequestCellule params,
  ) async {
    try {
      switch (params) {
        case RequestCellule(
              celluleId: final celluleId,
              
            )
            when celluleId != null && celluleId.isNotEmpty:
          final snapshot = await db
              .child('cellule')
              .orderByChild('celluleId')
              .equalTo(params.celluleId)
              .get();
          if (snapshot.exists) {
            final data = snapshot.value as Map<dynamic, dynamic>;

            final notifications = data.values.map((e) {
              final notificationItem = Map<String, dynamic>.from(e);

              return CelluleResponseModel.fromJson(notificationItem);
            }).toList();

            return FirebaseSuccess(
              notifications
                  .map((e) => CelluleResponseModel.fromJson(e.toJson()))
                  .toList(),
            );
          }
          return FirebaseError("Aucune cellule trouvée");

        default:
          final snapshot = await db.child('cellule').get();
          if (snapshot.exists) {
            final data = snapshot.value as Map<dynamic, dynamic>;

            final notifications = data.values.map((e) {
              final notificationItem = Map<String, dynamic>.from(e);
              return CelluleResponseModel.fromJson(notificationItem);
            }).toList();
            return FirebaseSuccess(
              notifications
                  .map((e) => CelluleResponseModel.fromJson(e.toJson()))
                  .toList(),
            );
          }
          return FirebaseError("Aucune notification trouvée");
      }
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

/// -------------------------- Method:[getListResponsablesCellules] --------------------------------------------
/// Description:
/// Récupère la liste des responsables de cellules enregistrés dans
/// Firebase Realtime Database.
///
/// Cette méthode effectue une lecture du nœud `responsablesCellule`
/// afin de récupérer l'ensemble des responsables disponibles.
///
/// Les données récupérées sont converties en objets
/// [ReponsableCelluleResponseModel] avant d'être retournées au
/// consommateur.
///
/// Parameters:
/// • [params] : Paramètres de recherche des responsables de cellule.
///   (Non exploités actuellement mais conservés pour respecter le
///   contrat du repository.)
///
/// Returns:
/// • [FirebaseSuccess<List<ReponsableCelluleResponseModel>>] si la
///   récupération des responsables de cellule est effectuée avec succès.
/// • [FirebaseError] lorsqu'aucun responsable de cellule n'est trouvé
///   ou lorsqu'une erreur survient durant le traitement.
///
/// Throws (capturées et encapsulées):
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture des données.
/// • Erreurs de conversion vers [ReponsableCelluleResponseModel].
/// • Erreurs liées à une structure de données invalide ou inattendue.
/// • Exceptions inattendues durant l'exécution.
///
/// Process:
/// • Lecture du nœud `responsablesCellule`.
/// • Vérification de l'existence des données.
/// • Conversion des données Firebase en objets
///   [ReponsableCelluleResponseModel].
/// • Construction de la liste des responsables de cellule.
/// • Retour des résultats via un [FirebaseSuccess].
/// • Encapsulation des erreurs dans un [FirebaseError].
  @override
  Future<FirebaseResult<List<ReponsableCelluleResponseModel>>>getListResponsablesCellules(RequestReponsableCellule params) async {
    try {
      final snapshot = await db.child('responsablesCellule').get();
      if (snapshot.exists) {
        final data = snapshot.value as Map<dynamic, dynamic>;
        final notifications = data.values.map((e) {
          final notificationItem = Map<String, dynamic>.from(e);
          return ReponsableCelluleResponseModel.fromJson(notificationItem);
        }).toList();
        return FirebaseSuccess(
          notifications
              .map((e) => ReponsableCelluleResponseModel.fromJson(e.toJson()))
              .toList(),
        );
      }
      return FirebaseError("Aucune responsables de cellule trouvés");
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

/// -------------------------- Method:[getListResponsablesSecteurs] --------------------------------------------
/// Description:
/// Récupère la liste des responsables de secteurs enregistrés dans
/// Firebase Realtime Database.
///
/// Cette méthode effectue une lecture du nœud `emsecteur` afin de
/// récupérer l'ensemble des secteurs et de leurs responsables associés.
///
/// Les données récupérées sont converties en objets [SecteurModel]
/// avant d'être retournées au consommateur.
///
/// Parameters:
/// • [params] : Paramètres de recherche des responsables de secteur.
///   (Non exploités actuellement mais conservés pour respecter le
///   contrat du repository et permettre des évolutions futures.)
///
/// Returns:
/// • [FirebaseSuccess<List<SecteurModel>>] si la récupération des
///   responsables de secteurs est effectuée avec succès.
/// • [FirebaseError] lorsqu'aucun responsable de secteur n'est trouvé
///   ou lorsqu'une erreur survient durant le traitement.
///
/// Throws (capturées et encapsulées):
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture des données.
/// • Erreurs de conversion vers [SecteurModel].
/// • Erreurs liées à une structure de données invalide ou inattendue.
/// • Exceptions inattendues durant l'exécution.
///
/// Process:
/// • Lecture du nœud `emsecteur`.
/// • Vérification de l'existence des données.
/// • Conversion des données Firebase en objets [SecteurModel].
/// • Construction de la liste des responsables de secteurs.
/// • Retour des résultats via un [FirebaseSuccess].
/// • Encapsulation des erreurs dans un [FirebaseError].
  @override
  Future<FirebaseResult<List<SecteurModel>>> getListResponsablesSecteurs(
    RequestSecteur params,
  ) async {
    try {
      final snapshot = await db.child('emsecteur').get();
      if (snapshot.exists) {
        final data = snapshot.value as Map<dynamic, dynamic>;
        final notifications = data.values.map((e) {
          final notificationItem = Map<String, dynamic>.from(e);
          return SecteurModel.fromJson(notificationItem);
        }).toList();
        return FirebaseSuccess(
          notifications.map((e) => SecteurModel.fromJson(e.toJson())).toList(),
        );
      }
      return FirebaseError("Aucune responsables de secteur trouvés");
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

/// -------------------------- Method:[getListResponsablesZones] --------------------------------------------
/// Description:
/// Récupère la liste des responsables de zones enregistrés dans
/// Firebase Realtime Database.
///
/// Cette méthode effectue une lecture du nœud `emzone` afin de
/// récupérer l'ensemble des zones et de leurs responsables associés.
///
/// Les données récupérées sont converties en objets [ZoneResponseModel]
/// avant d'être retournées au consommateur.
///
/// Parameters:
/// • [params] : Paramètres de recherche des responsables de zone.
///   (Non exploités actuellement mais conservés pour respecter le
///   contrat du repository et permettre des évolutions futures.)
///
/// Returns:
/// • [FirebaseSuccess<List<ZoneResponseModel>>] si la récupération des
///   responsables de zones est effectuée avec succès.
/// • [FirebaseError] lorsqu'aucun responsable de zone n'est trouvé
///   ou lorsqu'une erreur survient durant le traitement.
///
/// Throws (capturées et encapsulées):
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture des données.
/// • Erreurs de conversion vers [ZoneResponseModel].
/// • Erreurs liées à une structure de données invalide ou inattendue.
/// • Exceptions inattendues durant l'exécution.
///
/// Process:
/// • Lecture du nœud `emzone`.
/// • Vérification de l'existence des données.
/// • Conversion des données Firebase en objets [ZoneResponseModel].
/// • Construction de la liste des responsables de zones.
/// • Retour des résultats via un [FirebaseSuccess].
/// • Encapsulation des erreurs dans un [FirebaseError].
  @override
  Future<FirebaseResult<List<ZoneResponseModel>>> getListResponsablesZones(
    RequestZone params,
  ) async {
    try {
      final snapshot = await db.child('emzone').get();
      if (snapshot.exists) {
        final data = snapshot.value as Map<dynamic, dynamic>;
        final notifications = data.values.map((e) {
          final notificationItem = Map<String, dynamic>.from(e);
          return ZoneResponseModel.fromJson(notificationItem);
        }).toList();
        return FirebaseSuccess(
          notifications
              .map((e) => ZoneResponseModel.fromJson(e.toJson()))
              .toList(),
        );
      }
      return FirebaseError("Aucune responsables de zone trouvés");
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }


/// -------------------------- Method:[sendRapportCelluleStepAdministration] --------------------------------------------
/// Description:
/// Enregistre ou met à jour l'étape « Administration » d'un rapport
/// de cellule dans Firebase Realtime Database.
///
/// Cette méthode vérifie d'abord l'existence d'un identifiant de rapport
/// sauvegardé localement dans SharedPreferences.
///
/// • Si un identifiant existe, les informations de l'étape Administration
///   sont mises à jour dans le rapport existant.
/// • Si aucun identifiant n'est trouvé, un nouveau rapport est créé dans
///   Firebase et un identifiant unique est généré puis associé au rapport.
///
/// Cette approche permet de construire progressivement un rapport de
/// cellule en plusieurs étapes tout en conservant une référence unique
/// durant tout le processus de saisie.
///
/// Parameters:
/// • [params] : Données de l'étape Administration du rapport de cellule
///   à enregistrer ou à mettre à jour.
///
/// Returns:
/// • [FirebaseSuccess<String>] si l'opération est effectuée avec succès.
///   La valeur retournée correspond à l'identifiant unique du rapport.
/// • [FirebaseError] si une erreur survient lors de la création ou de la
///   mise à jour du rapport.
///
/// Throws (capturées et encapsulées):
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture ou d'écriture dans SharedPreferences.
/// • Erreurs de création ou de mise à jour des données.
/// • Erreurs liées à la sérialisation des données.
/// • Exceptions inattendues durant l'exécution.
///
/// Process:
/// • Lecture de la clé locale `rapport_cellule_key`.
/// • Vérification de l'existence d'un rapport déjà créé.
/// • Si la clé existe :
///   - Mise à jour du rapport correspondant.
/// • Sinon :
///   - Création d'un nouveau rapport.
///   - Génération d'un identifiant Firebase.
///   - Enregistrement des données dans `rapport_cellule`.
///   - Mise à jour de l'identifiant dans la base.
/// • Retour de l'identifiant du rapport via un [FirebaseSuccess].
/// • Encapsulation des erreurs dans un [FirebaseError].
  @override
  Future<FirebaseResult<String>> sendRapportCelluleStepAdministration(
    RequestRapportCelluleAdministration params,
  ) async {
    final shared = await shareData.SharedPreferences.getInstance();
    final localUserRequestSection = shared.getString('rapport_cellule_key');

    try {
      //----------------------------------------------------
      // Si une clé existe déjà, mettre à jour les données
      //----------------------------------------------------
      if (localUserRequestSection != null) {
        final Map<String, dynamic> updates = {
          ...params.toJson(),
          'id': localUserRequestSection,
        };
        await db
            .child('rapport_cellule/$localUserRequestSection')
            .update(updates);
        return FirebaseSuccess(localUserRequestSection);
      } else {
        final request = Request<RequestRapportCelluleAdministration>(
          data: params.toJson(),
          user: "",
          serviceLibelle: 'rapport_cellule',
        );
        // 2) Créer une nouvelle entré ou table
        final ref = db.child('rapport_cellule').push();
        // 3) Sauvegarder dans Firebase (en convertissant en Map)
        await ref.set(request.data);

        // // 4) Mettre à jour la clé
        await updateForKey(
          db: db,
          path: 'rapport_cellule',
          id: ref.key.toString(),
        );

        // 4) Retourner le key généré
        return FirebaseSuccess(ref.key!);
      }
    } catch (e) {

      return FirebaseError(e.toString());
    }
  }

/// -------------------------- Method:[sendRapportCelluleStepAssistance] --------------------------------------------
/// Description:
/// Met à jour l'étape « Assistance » d'un rapport de cellule existant
/// dans Firebase Realtime Database.
///
/// Cette méthode vérifie l'existence d'un rapport à partir de son
/// identifiant unique avant d'effectuer la mise à jour des informations
/// relatives à l'étape Assistance.
///
/// Lorsque le rapport est trouvé, les nouvelles données sont fusionnées
/// avec les données existantes afin de préserver les informations déjà
/// enregistrées dans les étapes précédentes du processus.
///
/// Parameters:
/// • [params] : Données de l'étape Assistance à enregistrer.
///   - [id] : Identifiant unique du rapport de cellule à mettre à jour.
///
/// Returns:
/// • [FirebaseSuccess<String>] si la mise à jour est effectuée avec succès.
///   La valeur retournée correspond à l'identifiant du rapport mis à jour.
/// • [FirebaseError] si aucun rapport correspondant n'est trouvé ou
///   si une erreur survient durant l'opération.
///
/// Throws (capturées et encapsulées):
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture des données.
/// • Erreurs de mise à jour des données.
/// • Erreurs liées à la sérialisation des données.
/// • Structure de données invalide ou inattendue.
/// • Exceptions inattendues durant l'exécution.
///
/// Process:
/// • Recherche du rapport dans le nœud `rapport_cellule` à partir de son identifiant.
/// • Vérification de l'existence du rapport.
/// • Construction de la structure de mise à jour.
/// • Mise à jour des données de l'étape Assistance.
/// • Conservation de l'identifiant du rapport.
/// • Retour de l'identifiant via un [FirebaseSuccess].
/// • Encapsulation des erreurs dans un [FirebaseError].
  @override
  Future<FirebaseResult<String>> sendRapportCelluleStepAssistance(
    RequestRapportCelluleAssistance params,
  ) async {

    try {
      final userIdExist = await db
          .child('rapport_cellule')
          .orderByChild('id')
          .equalTo(params.id)
          .get();

      if (userIdExist.exists) {
        final Map<String, dynamic> updates = {
          ...params.toJson(), // nouveaux champs simples
          'id': params.id,
        };
        // 2) Créer une nouvelle entrée
        await db
            .child('rapport_cellule/${params.id}')
            .update(updates);
        // 4) Retourner le key généré
        return FirebaseSuccess(params.id);
      }
      return FirebaseError('User not found with id: ${params.id}');
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

/// -------------------------- Method:[sendRapportCelluleStepActivity] --------------------------------------------
/// Description:
/// Met à jour l'étape « Activités » d'un rapport de cellule existant
/// dans Firebase Realtime Database.
///
/// Cette méthode récupère l'identifiant du rapport de cellule stocké
/// localement dans SharedPreferences puis vérifie son existence dans
/// Firebase avant d'effectuer la mise à jour des données relatives
/// aux activités réalisées.
///
/// Les nouvelles informations sont fusionnées avec les données déjà
/// enregistrées afin de conserver l'intégralité du rapport construit
/// au fil des différentes étapes.
///
/// Parameters:
/// • [params] : Données de l'étape Activités à enregistrer dans
///   le rapport de cellule.
///
/// Returns:
/// • [FirebaseSuccess<String>] si la mise à jour est effectuée avec succès.
///   La valeur retournée correspond à l'identifiant du rapport mis à jour.
/// • [FirebaseError] si aucun rapport correspondant n'est trouvé ou
///   si une erreur survient durant le traitement.
///
/// Throws (capturées et encapsulées):
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture depuis SharedPreferences.
/// • Erreurs de lecture ou de mise à jour des données Firebase.
/// • Erreurs liées à la sérialisation des données.
/// • Structure de données invalide ou inattendue.
/// • Exceptions inattendues durant l'exécution.
///
/// Process:
/// • Récupération de l'identifiant du rapport depuis SharedPreferences.
/// • Recherche du rapport correspondant dans le nœud `rapport_cellule`.
/// • Vérification de l'existence du rapport.
/// • Construction des données de mise à jour à partir de [params].
/// • Mise à jour de l'étape Activités du rapport.
/// • Conservation des données précédemment enregistrées.
/// • Retour de l'identifiant du rapport via un [FirebaseSuccess].
/// • Encapsulation des erreurs dans un [FirebaseError].
  @override
  Future<FirebaseResult<String>> sendRapportCelluleStepActivity(
    RequestRapportCelluleActivity params,
  ) async {
    

    try {
      final userIdExist = await db
          .child('rapport_cellule')
          .orderByChild('id')
          .equalTo(params.id)
          .get();

      if (userIdExist.exists) {
        final Map<String, dynamic> updates = {
          ...params.toJson(), // nouveaux champs simples
        };
        // 2) Créer une nouvelle entrée
        await db
            .child('rapport_cellule/${params.id}')
            .update(updates);

        // 4) Retourner le key généré
        return FirebaseSuccess(params.id);
      }
      return FirebaseError('User not found');
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

/// -------------------------- Method:[sendRapportCelluleStepSuggestion] --------------------------------------------
/// Description:
/// Enregistre l'étape finale « Suggestions » d'un rapport de cellule
/// dans Firebase Realtime Database.
///
/// Cette méthode récupère l'identifiant du rapport de cellule stocké
/// localement dans SharedPreferences puis vérifie l'existence du rapport
/// correspondant dans Firebase avant d'effectuer la mise à jour des
/// données relatives aux suggestions et recommandations.
///
/// Une fois la mise à jour effectuée avec succès, la clé locale
/// `rapport_cellule_key` est supprimée afin de marquer la fin du
/// processus de création du rapport et d'éviter toute modification
/// involontaire ultérieure.
///
/// Parameters:
/// • [params] : Données de l'étape Suggestions à enregistrer dans
///   le rapport de cellule.
///
/// Returns:
/// • [FirebaseSuccess<String>] si l'enregistrement des suggestions est
///   effectué avec succès et que le rapport est finalisé.
/// • [FirebaseError] si aucun rapport correspondant n'est trouvé ou
///   si une erreur survient durant le traitement.
///
/// Throws (capturées et encapsulées):
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture ou suppression dans SharedPreferences.
/// • Erreurs de lecture ou de mise à jour des données Firebase.
/// • Erreurs liées à la sérialisation des données.
/// • Structure de données invalide ou inattendue.
/// • Exceptions inattendues durant l'exécution.
///
/// Process:
/// • Récupération de l'identifiant du rapport depuis SharedPreferences.
/// • Recherche du rapport correspondant dans le nœud `rapport_cellule`.
/// • Vérification de l'existence du rapport.
/// • Construction des données de mise à jour à partir de [params].
/// • Mise à jour de l'étape Suggestions du rapport.
/// • Finalisation du rapport de cellule.
/// • Suppression de la clé locale `rapport_cellule_key`.
/// • Retour d'un succès via [FirebaseSuccess].
/// • Encapsulation des erreurs dans un [FirebaseError].
  @override
  Future<FirebaseResult<String>> sendRapportCelluleStepSuggestion(
    RequestRapportCelluleSuggestion params,
  ) async {
     

    try {
      final userIdExist = await db
          .child('rapport_cellule')
          .orderByChild('id')
          .equalTo(params.id)
          .get();

      if (userIdExist.exists) {
        final Map<String, dynamic> updates = {...params.toJson()};
        // 2) Mettre à jour l'entrée existante
        await db
            .child('rapport_cellule/${params.id}')
            .update(updates);
        // 3) Supprimer la clé locale après envoi réussi
        return FirebaseSuccess(params.id);
      }
      return FirebaseError('User not found');
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

/// -------------------------- Method:[getRapportCellule] --------------------------------------------
/// Description:
/// Récupère un ou plusieurs rapports de cellule depuis Firebase Realtime
/// Database selon les critères de recherche spécifiés dans
/// [RequestRapportCellule].
///
/// Cette méthode prend en charge plusieurs scénarios de recherche :
/// • Recherche par tag et responsable de cellule.
/// • Recherche par date et responsable de cellule.
/// • Recherche par identifiant du responsable de cellule.
///
/// Les données récupérées sont transformées puis converties en objets
/// [RapportCelluleResponseModel] avant d'être retournées au consommateur.
///
/// Parameters:
/// • [params] : Critères de recherche des rapports de cellule.
///   - [tag] : Tag associé au rapport.
///   - [date] : Date de tenue de la cellule.
///   - [responsableCelluleId] : Identifiant du responsable de cellule.
///
/// Returns:
/// • [FirebaseSuccess<List<RapportCelluleResponseModel>>] si les rapports
///   sont récupérés avec succès.
/// • [FirebaseError] lorsqu'aucun rapport correspondant n'est trouvé.
/// • [FirebaseError] lorsqu'un type de recherche non supporté est fourni.
/// • [FirebaseError] lorsqu'une erreur survient durant le traitement.
///
/// Throws (capturées et encapsulées):
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture des données.
/// • Erreurs de conversion vers [RapportCelluleResponseModel].
/// • Erreurs liées à une structure de données invalide ou inattendue.
/// • Erreurs de mapping lors de la transformation des données.
/// • Exceptions inattendues durant l'exécution.
///
/// Process:
/// • Analyse des critères de recherche fournis dans [params].
/// • Exécution de la requête Firebase correspondant au cas identifié.
/// • Vérification de l'existence des données retournées.
/// • Transformation des données via [convertMap].
/// • Conversion des résultats en [RapportCelluleResponseModel].
/// • Construction de la liste des rapports correspondants.
/// • Retour des données via un [FirebaseSuccess].
/// • Journalisation des erreurs avec [AppLogger].
/// • Encapsulation des erreurs dans un [FirebaseError].
///
/// Cas supportés:
/// • Recherche par [tag] + [responsableCelluleId].
/// • Recherche par [date] + [responsableCelluleId].
/// • Recherche par [responsableCelluleId].
///
/// Cas non supportés:
/// • Toute combinaison de paramètres ne correspondant à aucun des
///   scénarios ci-dessus retourne une erreur explicite.
  @override
  Future<FirebaseResult<List<RapportCelluleResponseModel>>> getRapportCellule(
    RequestRapportCellule params,
  ) async {
    try {
      switch (params) {
        ///------------------------
        /// Fetch rapport by tag
        ///------------------------
        case RequestRapportCellule(
              tag: final tag,
              responsableCelluleId: final responsableCelluleId,
            )
            when tag.isNotEmpty && responsableCelluleId.isNotEmpty:
          final response = await db
              .child('rapport_cellule')
              .orderByChild('responsableCelluleId')
              .equalTo(params.responsableCelluleId)
              .get();

          final response2 = await db
              .child('rapport_cellule')
              .orderByChild('tag')
              .equalTo(params.tag)
              .get();

          if (!response2.exists && !response.exists) {
            return FirebaseError('Rapport cellule not found');
          }
          final data = response2.value as Map<dynamic, dynamic>;
          final notifications = data.values.map((e) {
            final notificationItem = convertMap(e as Map);
            return RapportCelluleResponseModel.fromJson(notificationItem);
          }).toList();
          return FirebaseSuccess(notifications);

        ///------------------------
        /// Fetch rapport by date
        ///------------------------
        case RequestRapportCellule(
              date: final date,
              responsableCelluleId: final responsableCelluleId,
            )
            when date.isNotEmpty && responsableCelluleId.isNotEmpty:
          final response = await db
              .child('rapport_cellule')
              .orderByChild('responsableCelluleId')
              .equalTo(params.responsableCelluleId)
              .get();

          final response2 = await db
              .child('rapport_cellule')
              .orderByChild('jourCellule')
              .equalTo(params.date)
              .get();

          if (!response.exists && !response2.exists) {
            return FirebaseError('Rapport cellule not found');
          }
  

          final data = response2.value as Map<dynamic, dynamic>;
          final notifications = data.values.map((e) {
            final notificationItem = convertMap(e as Map);
            return RapportCelluleResponseModel.fromJson(notificationItem);
          }).toList();
          return FirebaseSuccess(notifications);


        ///------------------------
        /// Fetch rapport by responsableCelluleId
        ///------------------------

          case RequestRapportCellule(
              responsableCelluleId: final responsableCelluleId,
            )
            when responsableCelluleId.isNotEmpty:
          final response = await db
              .child('rapport_cellule')
              .orderByChild('responsableCelluleId')
              .equalTo(params.responsableCelluleId)
              .get();


          if (!response.exists) {
            return FirebaseError('Rapport cellule not found');
          }
          final data = response.value as Map<dynamic, dynamic>;
          final notifications = data.values.map((e) {
            final notificationItem = convertMap(e as Map);
            return RapportCelluleResponseModel.fromJson(notificationItem);
          }).toList();
          return FirebaseSuccess(notifications);



        default: 
        return FirebaseError("Type de requête non supporté");
      }
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }



}

