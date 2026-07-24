import 'dart:developer';
import 'package:grace_church/core/data_process/success.dart';
import 'package:grace_church/feature/dashboard/data/model/home_model.dart';
import 'package:grace_church/feature/dashboard/data/service/repository_remote_service.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/request/home_request.dart'
    hide EmptyRequest;
import 'package:injectable/injectable.dart';
import 'package:firebase_database/firebase_database.dart' as databaseReference;

@LazySingleton(as: DomaineServiceRepository)
class ImpDomaineServiceRepository implements DomaineServiceRepository {
  ImpDomaineServiceRepository({required this.db});

  final databaseReference.DatabaseReference db;

  /// -------------------------- Methode:[getProfile] ---------------------------
  /// context:
  /// * Récupère le profil d'un membre à partir de son identifiant dans
  /// Firebase Realtime Database.
  /// * Cette méthode effectue une lecture sur le nœud
  /// `menber/{numberId}` afin de rechercher les informations associées
  /// au membre correspondant à l'identifiant fourni.
  ///
  /// * Lorsque les données sont trouvées, elles sont désérialisées en
  /// [ProfileResponseModel] puis retournées dans un objet
  /// [FirebaseSuccess].
  ///
  /// * Si aucun profil n'est trouvé pour l'identifiant demandé ou si une
  /// erreur survient lors de la récupération ou de la conversion des
  /// données, un objet [FirebaseError] est retourné contenant le détail
  /// de l'erreur.
  ///
  /// Paramètres :
  /// * [notParms] : Contient l'identifiant unique du membre à rechercher.
  ///
  /// Retourne :
  /// * [FirebaseSuccess<ProfileResponseModel>] lorsque le profil est
  ///   récupéré avec succès.
  /// * [FirebaseError] lorsque le profil est introuvable ou qu'une
  ///   erreur survient lors du traitement.
  ///
  /// Gestion des erreurs :
  /// * Profil inexistant dans la base de données.
  /// * Données invalides ou incompatibles avec le modèle attendu.
  /// * Erreurs de communication avec Firebase.
  /// * Toute exception levée durant l'exécution est interceptée et
  ///   encapsulée dans un [FirebaseError].
  @override
  Future<FirebaseResult<ProfileResponseModel>> getProfile(
    RequestGetProfile notParms,
  ) async {
    try {
      final response = await db.child('menber/${notParms.numberId}').get();
      final data = Map<String, dynamic>.from(response.value as Map);
      if (response.exists) {
        final firebaseResult = ProfileResponseModel.fromJson(data);
        return FirebaseSuccess(firebaseResult);
      } else {
        return FirebaseError("une erreur est survenue");
      }
    } catch (e) {
      return FirebaseError('${e.toString()}');
    }
  }

  /// -------------------------- Methode:[getProfileList] ---------------------------
  /// context:
  /// * Récupère le profil d'un membre à partir de son identifiant dans
  /// Firebase Realtime Database.
  /// * Cette méthode effectue une lecture sur le nœud
  /// `menber/{numberId}` afin de rechercher les informations associées
  /// au membre correspondant à l'identifiant fourni.
  ///
  /// * Lorsque les données sont trouvées, elles sont désérialisées en
  /// [ProfileResponseModel] puis retournées dans un objet
  /// [FirebaseSuccess].
  ///
  /// * Si aucun profil n'est trouvé pour l'identifiant demandé ou si une
  /// erreur survient lors de la récupération ou de la conversion des
  /// données, un objet [FirebaseError] est retourné contenant le détail
  /// de l'erreur.
  ///
  /// Paramètres :
  /// * [notParms] : Contient l'identifiant unique du membre à rechercher.
  ///
  /// Retourne :
  /// * [FirebaseSuccess<ProfileResponseModel>] lorsque le profil est
  ///   récupéré avec succès.
  /// * [FirebaseError] lorsque le profil est introuvable ou qu'une
  ///   erreur survient lors du traitement.
  ///
  /// Gestion des erreurs :
  /// * Profil inexistant dans la base de données.
  /// * Données invalides ou incompatibles avec le modèle attendu.
  /// * Erreurs de communication avec Firebase.
  /// * Toute exception levée durant l'exécution est interceptée et
  ///   encapsulée dans un [FirebaseError].
  @override
  Future<FirebaseResult<List<ProfileResponseModel>>> getProfileList(
    RequestGetProfile notParms,
  ) async {
    try {
      final snapshot = await db.child('menber').get();
      if (snapshot.exists) {
        final data = snapshot.value as Map<dynamic, dynamic>;
        final notifications = data.values.map((e) {
          final notificationItem = Map<String, dynamic>.from(e);
          return ProfileResponseModel.fromJson(notificationItem);
        }).toList();
        return FirebaseSuccess(
          notifications
              .map((e) => ProfileResponseModel.fromJson(e.toJson()))
              .toList(),
        );
      } else {
        return FirebaseError("une erreur est survenue");
      }
    } catch (e) {
      return FirebaseError('${e.toString()}');
    }
  }

  /// -------------------------- Methode:[getProfileList] ---------------------------
  /// context:
  /// * Récupère le profil d'un membre à partir de son identifiant dans
  /// Firebase Realtime Database.
  /// * Cette méthode effectue une lecture sur le nœud
  /// `menber/{numberId}` afin de rechercher les informations associées
  /// au membre correspondant à l'identifiant fourni.
  ///
  /// * Lorsque les données sont trouvées, elles sont désérialisées en
  /// [ProfileResponseModel] puis retournées dans un objet
  /// [FirebaseSuccess].
  ///
  /// * Si aucun profil n'est trouvé pour l'identifiant demandé ou si une
  /// erreur survient lors de la récupération ou de la conversion des
  /// données, un objet [FirebaseError] est retourné contenant le détail
  /// de l'erreur.
  ///
  /// Paramètres :
  /// * [notParms] : Contient l'identifiant unique du membre à rechercher.
  ///
  /// Retourne :
  /// * [FirebaseSuccess<ProfileResponseModel>] lorsque le profil est
  ///   récupéré avec succès.
  /// * [FirebaseError] lorsque le profil est introuvable ou qu'une
  ///   erreur survient lors du traitement.
  ///
  /// Gestion des erreurs :
  /// * Profil inexistant dans la base de données.
  /// * Données invalides ou incompatibles avec le modèle attendu.
  /// * Erreurs de communication avec Firebase.
  /// * Toute exception levée durant l'exécution est interceptée et
  ///   encapsulée dans un [FirebaseError].
  @override
  Future<FirebaseResult<List<PresenceResponseModel>>> getPresenceList(
    RequestGetProfile notParms,
  ) async {
    try {
      final snapshot = await db.child('emzone').get();
      if (snapshot.exists) {
        final raw = snapshot.value;
        final List<dynamic> items;

        if (raw is List) {
          items = raw.where((e) => e != null).toList();
        } else if (raw is Map) {
          items = raw.values.toList();
        } else {
          return FirebaseError("format de donnees inattendu");
        }

        final notifications = items
            .map(
              (e) => PresenceResponseModel.fromJson(
                Map<String, dynamic>.from(e as Map),
              ),
            )
            .toList();

        return FirebaseSuccess(notifications);
      } else {
           log('Error: ---------->> profil introuvable');
        return FirebaseError("une erreur est survenue");
      }
    } catch (e) {
      log('Error: ---------->> $e');
      return FirebaseError(e.toString());
    }
  }

  /// -------------------------- Methode:[getGuestList] ---------------------------
  /// context:
  /// * Récupère le profil d'un membre à partir de son identifiant dans
  /// Firebase Realtime Database.
  /// * Cette méthode effectue une lecture sur le nœud
  /// `menber/{numberId}` afin de rechercher les informations associées
  /// au membre correspondant à l'identifiant fourni.
  ///
  /// * Lorsque les données sont trouvées, elles sont désérialisées en
  /// [GuestResponseModel] puis retournées dans un objet
  /// [FirebaseSuccess].
  ///
  /// * Si aucun profil n'est trouvé pour l'identifiant demandé ou si une
  /// erreur survient lors de la récupération ou de la conversion des
  /// données, un objet [FirebaseError] est retourné contenant le détail
  /// de l'erreur.
  ///
  /// Paramètres :
  /// * [notParms] : Contient l'identifiant unique du membre à rechercher.
  ///
  /// Retourne :
  /// * [FirebaseSuccess<GuestResponseModel>] lorsque le profil est
  ///   récupéré avec succès.
  /// * [FirebaseError] lorsque le profil est introuvable ou qu'une
  ///   erreur survient lors du traitement.
  ///
  /// Gestion des erreurs :
  /// * Profil inexistant dans la base de données.
  /// * Données invalides ou incompatibles avec le modèle attendu.
  /// * Erreurs de communication avec Firebase.
  /// * Toute exception levée durant l'exécution est interceptée et
  ///   encapsulée dans un [FirebaseError].
  
  @override
  Future<FirebaseResult<List<GuestResponseModel>>> getGuestList(
    RequestGetProfile notParms,
  ) async {
    try {
      final snapshot = await db.child('cellule').get();
      if (snapshot.exists) {
        final raw = snapshot.value;
        final List<dynamic> items;
         log('Error------>>: 0 ${raw}');

        if (raw is List) {
          items = raw.where((e) => e != null).toList();
        } else if (raw is Map) {
          items = raw.values.toList();
        } else {
        log('Error------>>: 1');

          return FirebaseError("format de donnees inattendu");
        }

        final notifications = items
            .map(
              (e) => GuestResponseModel.fromJson(
                Map<String, dynamic>.from(e as Map),
              ),
            )
            .toList();

        return FirebaseSuccess(notifications);
      } else {
        log('Error------>>: 2');
        return FirebaseError("une erreur est survenue");
      }
    } catch (e) {
      log('Error------>>: $e');
      return FirebaseError(e.toString());
    }
  }
}
