import 'dart:developer';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart' as databaseReference;
import 'package:grace_church/core/data_process/request/request.dart';
import 'package:grace_church/core/data_process/success.dart';
import 'package:grace_church/feature/authen/data/service/impl_remote_service.dart';
import 'package:grace_church/feature/authen/domaine/entities/request/authen_request.dart';
import 'package:grace_church/feature/dashboard/data/model/home_model.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart' as shareData;
import 'package:supabase_flutter/supabase_flutter.dart';

@LazySingleton(as: AuthenRemoteService)
class ImplRemoteService implements AuthenRemoteService {
  ImplRemoteService({required this.db});
  final databaseReference.DatabaseReference db;
  final supabase = Supabase.instance.client;

/// -------------------------- Method:[createProfile] --------------------------------------------
/// Description:
/// Crée un nouveau profil utilisateur dans Firebase Realtime Database.
///
/// Cette méthode permet d'enregistrer un membre dans le nœud `menber`
/// après vérification de l'unicité du nom et de l'email.
///
/// Elle gère également :
/// • La création du profil utilisateur.
/// • La génération d'un identifiant Firebase.
/// • La mise à jour de la clé utilisateur.
/// • L’upload de l’image de profil.
/// • La mise à jour finale du profil avec l’URL de l’image.
///
/// Parameters:
/// • [params] : Données nécessaires à la création du profil.
///   - [name] : Nom de l'utilisateur.
///   - [email] : Email de l'utilisateur.
///   - [profileImage] : Image de profil (optionnelle ou à uploader).
///
/// Returns:
/// • [FirebaseResult<String?>] contenant l'identifiant du profil créé.
/// • [FirebaseError] si le nom ou l'email existe déjà ou si une erreur
///   survient lors de la création.
///
/// Throws:
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de duplication (nom ou email déjà existant).
/// • Erreurs lors de la création du nœud Firebase.
/// • Erreurs lors de l’upload de l’image de profil.
/// • Erreurs de mise à jour du profil.
/// • Exceptions inattendues durant l’exécution.
///
/// Process:
/// • Vérification de l'existence du nom dans `menber`.
/// • Vérification de l'existence de l'email dans `menber`.
/// • Si doublon → retour d'un [FirebaseError].
/// • Création d'une nouvelle entrée avec `push()`.
/// • Sauvegarde des données utilisateur.
/// • Mise à jour de la clé utilisateur.
/// • Upload de l’image de profil.
/// • Mise à jour du profil avec l’URL de l’image.
/// • Retour de l'identifiant du nouveau profil via [FirebaseSuccess].
  @override
  Future<FirebaseResult<String?>> createProfile(
    RequestAuthenProfile params,
  ) async {

    try {
      // ici on verifie si le nom ou l'email existe deja
      final nameExist = await db
          .child('menber')
          .orderByChild('name')
          .equalTo(params.name)
          .get();
          final emailExist = await db
          .child('menber')
          .orderByChild('email')
          .equalTo(params.email)
          .get();

          if(nameExist.exists || emailExist.exists){
              return FirebaseError("le nom ou l'email existe déjà");
          }
          else {
          // 1) Construire l'objet Request
          final request = Request<RequestAuthenProfile>(
            data: params.toJson(),
            user: "",
            serviceLibelle: 'serviceLibelle',
          );
          // 2) Créer une nouvelle entré ou table
          final ref = db.child('menber').push();
          // 3) Sauvegarder dans Firebase (en convertissant en Map)
          await ref.set(request.data);

          // 4) Mettre à jour la clé
          await updateProfileKey(
            RequestAuthenProfileUpdateKey(menberId: ref.key.toString()),
          );

          // 5) Télécharger l'image
          final result = await uploadprofileImage(
            params: RequestAuthenProfileUpdateImage(
              profileImage: params.profileImage,
              menberId: ref.key.toString(),
              createAt: DateTime.now().toIso8601String(),
            ),
          );

          if (result is FirebaseSuccess<String?>) {
           
            final Map<String, dynamic> updates = {
              ...params
                  .copyWith(profileImage: result.data.toString())
                  .toJson(), // nouveaux champs simples
              'serviceLibelle': '',
            };
            // 2) Créer une nouvelle entrée
            await db.child('menber/${ref.key.toString()}').update(updates);
          }

          // 4) Retourner le key généré
          return FirebaseSuccess(ref.key);
        }


          


  
    } catch (e) {

      return FirebaseError(e.toString());
    }
  }
  
/// -------------------------- Method:[updateProfile] --------------------------------------------
/// Description:
/// Met à jour le profil d’un utilisateur existant dans Firebase Realtime Database.
///
/// Cette méthode récupère d’abord l’identifiant utilisateur stocké localement
/// dans SharedPreferences (`menberkey`), puis vérifie l’existence du profil
/// correspondant dans Firebase.
///
/// Si le profil existe et que la mise à jour est autorisée, les nouvelles
/// données sont fusionnées avec les informations existantes et mises à jour
/// dans le nœud `menber/{userId}`.
///
/// Parameters:
/// • [params] : Données du profil à mettre à jour.
///   - [isUpdate] : Indique si la mise à jour est autorisée.
///   - Autres champs utilisateur à mettre à jour.
///
/// Returns:
/// • [FirebaseResult<String?>] contenant l’identifiant du profil mis à jour
///   en cas de succès.
/// • [FirebaseError] si l’utilisateur n’est pas trouvé ou si les conditions
///   de mise à jour ne sont pas respectées.
///
/// Throws:
/// • Erreurs liées à SharedPreferences (lecture de `menberkey`).
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture ou mise à jour des données.
/// • Erreurs de validation des conditions de mise à jour.
/// • Exceptions inattendues durant l’exécution.
///
/// Process:
/// • Récupération de l’identifiant utilisateur depuis SharedPreferences.
/// • Vérification de l’existence de l’utilisateur dans Firebase.
/// • Validation des conditions de mise à jour (`isUpdate`, existence ID).
/// • Construction de la payload de mise à jour.
/// • Mise à jour des données dans `menber/{userId}`.
/// • Retour de l’identifiant utilisateur via [FirebaseSuccess].
/// • Encapsulation des erreurs dans [FirebaseError].
    @override
  Future<FirebaseResult<String?>> updateProfile(
    RequestAuthenProfile params,
  ) async {
    final shared = await shareData.SharedPreferences.getInstance();
    final localUserRequestSection = shared.getString('menberkey');

    try {
      final userIdExist = await db
          .child('menber')
          .orderByChild('userId')
          .equalTo(localUserRequestSection)
          .get();
          

      if (params.isUpdate == true &&
          userIdExist.exists &&
          localUserRequestSection != null &&
          localUserRequestSection.isNotEmpty) {
      
        final Map<String, dynamic> updates = {
          ...params.toJson(), // nouveaux champs simples
          'serviceLibelle': '',
          'userId': localUserRequestSection.toString(),
        };
        // 2) Créer une nouvelle entrée
        await db.child('menber/$localUserRequestSection').update(updates);

        // 4) Retourner le key généré
        return FirebaseSuccess(localUserRequestSection);
      }
      return FirebaseError('User not found');

    } catch (e) {
      log("${FirebaseException(message: e.toString(), plugin: "authen")}");
    

      log("🔥 Firebase ERROR updateProfile → $e");
      return FirebaseError(e.toString());
    }
  }

/// -------------------------- Method:[createSocial] --------------------------------------------
/// Description:
/// Crée ou met à jour les informations sociales d’un utilisateur dans
/// Firebase Realtime Database.
///
/// Cette méthode récupère l’identifiant utilisateur stocké localement
/// dans SharedPreferences (`menberkey`) puis met à jour le profil
/// existant avec les données sociales fournies.
///
/// Si l’identifiant utilisateur existe, les données sociales sont ajoutées
/// directement au profil Firebase.
/// Si l’identifiant n’existe pas, une tentative de création/mise à jour
/// est effectuée avec les informations disponibles.
///
/// Parameters:
/// • [params] : Données sociales à enregistrer.
///   - Champs sociaux (réseaux, liens ou informations associées).
///
/// Returns:
/// • [FirebaseResult<String?>] contenant l’identifiant utilisateur
///   utilisé pour la mise à jour ou la création.
/// • [FirebaseError] si une erreur survient lors de l’opération.
///
/// Throws:
/// • Erreurs liées à SharedPreferences.
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture ou d’écriture des données.
/// • Erreurs de structure ou de sérialisation des données.
/// • Exceptions inattendues durant l’exécution.
///
/// Process:
/// • Récupération de l’identifiant utilisateur depuis SharedPreferences.
/// • Vérification de son existence.
/// • Si existant : mise à jour du profil avec les données sociales.
/// • Sinon : tentative de création/mise à jour avec les données fournies.
/// • Fusion des données sociales dans le nœud `menber/{userId}`.
/// • Retour de l’identifiant utilisateur via [FirebaseSuccess].
/// • Encapsulation des erreurs dans [FirebaseError].
  @override
  Future<FirebaseResult<String?>> createSocial(
    RequestAuthenSocial params,
  ) async {
    final shared = await shareData.SharedPreferences.getInstance();
    final localUserRequestSection = shared.getString('menberkey');

    try {
      if (localUserRequestSection != null && localUserRequestSection.isNotEmpty) {
        final Map<String, dynamic> updates = {
          ...params.toJson(), // nouveaux champs simples
          'serviceLibelle': '',
          'userId': localUserRequestSection.toString(),
        };
        // 2) Créer une nouvelle entrée
        await db.child('menber/$localUserRequestSection').update(updates);

        // 4) Retourner le key généré
        return FirebaseSuccess(localUserRequestSection);
      }

      final Map<String, dynamic> updates = {
        ...params.toJson(), // nouveaux champs simples
        'serviceLibelle': '',
        '': localUserRequestSection.toString(),
      };
      // 2) Créer une nouvelle entrée
      await db.child('menber/$localUserRequestSection').update(updates);

      // 4) Retourner le key généré
      return FirebaseSuccess(localUserRequestSection);
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

/// -------------------------- Method:[createSpiritualLife] --------------------------------------------
/// Description:
/// Crée ou met à jour les informations liées à la vie spirituelle d’un
/// utilisateur dans Firebase Realtime Database.
///
/// Cette méthode récupère l’identifiant utilisateur stocké localement
/// dans SharedPreferences (`menberkey`) puis met à jour le profil
/// utilisateur avec les données spirituelles fournies.
///
/// Si l’identifiant utilisateur existe, les informations spirituelles
/// sont directement fusionnées dans le profil existant.
/// Sinon, une tentative de création/mise à jour est effectuée avec les
/// données disponibles.
///
/// Parameters:
/// • [params] : Données liées à la vie spirituelle de l’utilisateur.
///   - Champs spirituels (engagement, pratiques, informations associées).
///
/// Returns:
/// • [FirebaseResult<String?>] contenant l’identifiant utilisateur
///   utilisé pour la mise à jour.
/// • [FirebaseError] si une erreur survient lors de l’opération.
///
/// Throws:
/// • Erreurs liées à SharedPreferences.
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture ou d’écriture des données.
/// • Erreurs de sérialisation des données.
/// • Exceptions inattendues durant l’exécution.
///
/// Process:
/// • Récupération de l’identifiant utilisateur depuis SharedPreferences.
/// • Vérification de son existence.
/// • Si existant : mise à jour du profil avec les données spirituelles.
/// • Sinon : tentative de création/mise à jour avec les données fournies.
/// • Fusion des données dans le nœud `menber/{userId}`.
/// • Retour de l’identifiant utilisateur via [FirebaseSuccess].
/// • Encapsulation des erreurs dans [FirebaseError].
  @override
  Future<FirebaseResult<String?>> createSpiritualLife(
    RequestAuthenSpiritualLife params,
  ) async {
    final shared = await shareData.SharedPreferences.getInstance();
    final localUserRequestSection = shared.getString('menberkey');

    try {
      if (localUserRequestSection != null && localUserRequestSection.isNotEmpty) {
        final Map<String, dynamic> updates = {
          ...params.toJson(), // nouveaux champs simples
          'serviceLibelle': '',
          'userId': localUserRequestSection.toString(),
        };
        // 2) Créer une nouvelle entrée
        await db.child('menber/$localUserRequestSection').update(updates);

        // 4) Retourner le key généré
        return FirebaseSuccess(localUserRequestSection);
      }

      final Map<String, dynamic> updates = {
        ...params.toJson(), // nouveaux champs simples
        'serviceLibelle': '',
        '': localUserRequestSection.toString(),
      };
      // 2) Créer une nouvelle entrée
      await db.child('menber/$localUserRequestSection').update(updates);

      // 4) Retourner le key généré
      return FirebaseSuccess(localUserRequestSection);
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

/// -------------------------- Method:[createEngagement] --------------------------------------------
/// Description:
/// Crée ou met à jour les informations d’engagement d’un utilisateur dans
/// Firebase Realtime Database.
///
/// Cette méthode récupère l’identifiant utilisateur stocké localement
/// dans SharedPreferences (`menberkey`) puis met à jour le profil
/// avec les données liées à son engagement.
///
/// Si l’identifiant utilisateur existe, les données d’engagement sont
/// fusionnées avec le profil existant.
/// Sinon, une tentative de création/mise à jour est effectuée avec les
/// informations disponibles.
///
/// Parameters:
/// • [params] : Données relatives à l’engagement de l’utilisateur.
///   - Champs d’engagement (participation, implication, statut, etc.).
///
/// Returns:
/// • [FirebaseResult<String?>] contenant l’identifiant utilisateur
///   utilisé pour la mise à jour.
/// • [FirebaseError] si une erreur survient lors de l’opération.
///
/// Throws:
/// • Erreurs liées à SharedPreferences.
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture ou d’écriture des données.
/// • Erreurs de sérialisation des données.
/// • Exceptions inattendues durant l’exécution.
///
/// Process:
/// • Récupération de l’identifiant utilisateur depuis SharedPreferences.
/// • Vérification de son existence.
/// • Si existant : mise à jour du profil avec les données d’engagement.
/// • Sinon : tentative de création/mise à jour avec les données fournies.
/// • Fusion des données dans le nœud `menber/{userId}`.
/// • Retour de l’identifiant utilisateur via [FirebaseSuccess].
/// • Encapsulation des erreurs dans [FirebaseError].
  @override
  Future<FirebaseResult<String?>> createEngagement(
    RequestAuthenEngagement params,
  ) async {
    final shared = await shareData.SharedPreferences.getInstance();
    final localUserRequestSection = shared.getString('menberkey');

    try {
      if (localUserRequestSection != null && localUserRequestSection.isNotEmpty) {
        final Map<String, dynamic> updates = {
          ...params.toJson(), // nouveaux champs simples
          'serviceLibelle': '',
          'userId': localUserRequestSection.toString(),
        };
        // 2) Créer une nouvelle entrée
        await db.child('menber/$localUserRequestSection').update(updates);

        // 4) Retourner le key généré
        return FirebaseSuccess(localUserRequestSection);
      }

      final Map<String, dynamic> updates = {
        ...params.toJson(), // nouveaux champs simples
        'serviceLibelle': '',
        '': localUserRequestSection.toString(),
      };
      // 2) Créer une nouvelle entrée
      await db.child('menber/$localUserRequestSection').update(updates);

      // 4) Retourner le key généré
      return FirebaseSuccess(localUserRequestSection);
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

/// -------------------------- Method:[updateProfileKey] --------------------------------------------
/// Description:
/// Met à jour la clé ou les informations de base d’un profil utilisateur
/// dans Firebase Realtime Database.
///
/// Cette méthode permet de mettre à jour dynamiquement les champs liés
/// à l’identification d’un utilisateur (principalement le `menberId`)
/// dans le nœud `menber/{menberId}`.
///
/// Elle est généralement utilisée après la création d’un profil afin
/// d’associer ou synchroniser la clé Firebase avec les données utilisateur.
///
/// Parameters:
/// • [params] : Données contenant l’identifiant du membre et les champs
///   à mettre à jour.
///   - [menberId] : Identifiant unique du membre dans Firebase.
///   - Autres champs liés à la mise à jour de la clé.
///
/// Returns:
/// • [FirebaseResult<String?>] contenant l’identifiant du membre mis à jour.
/// • [FirebaseError] si une erreur survient lors de l’opération.
///
/// Throws:
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de mise à jour des données.
/// • Erreurs de sérialisation des données.
/// • Exceptions inattendues durant l’exécution.
///
/// Process:
/// • Construction du payload de mise à jour.
/// • Mise à jour du nœud `menber/{menberId}`.
/// • Log de confirmation de mise à jour.
/// • Retour de l’identifiant du membre via [FirebaseSuccess].
/// • Encapsulation des erreurs dans [FirebaseError].
  Future<FirebaseResult<String?>> updateProfileKey(
    RequestAuthenProfileUpdateKey params,
  ) async {
    try {
      final Map<String, dynamic> updates = {
        ...params.toJson(), // nouveaux champs simples
      };
      // 2) Créer une nouvelle entrée
      await db.child('menber/${params.menberId}').update(updates);
      log("🔥 Firebase updateProfileKey → menberId: ${params.menberId}");

      // 4) Retourner le key généré
      return FirebaseSuccess(params.menberId);
    } catch (e) {
      log('************$e');
      return FirebaseError(e.toString());
    }
  }

/// -------------------------- Method:[uploadprofileImage] --------------------------------------------
/// Description:
/// Upload une image de profil vers Supabase Storage et retourne son URL publique.
///
/// Cette méthode permet de stocker une image locale dans le bucket
/// `menberProfile` de Supabase Storage, puis de générer une URL publique
/// permettant son accès depuis l’application ou le backend.
///
/// L’image est enregistrée dans un chemin structuré sous `upload/`
/// afin d’organiser les fichiers utilisateurs.
///
/// Parameters:
/// • [params] : Données nécessaires à l’upload de l’image.
///   - [profileImage] : Chemin local du fichier image à uploader
///     (utilisé pour créer le fichier File).
///
/// Returns:
/// • [FirebaseResult<String?>] contenant l’URL publique de l’image
///   uploadée.
/// • [FirebaseError] si une erreur survient lors de l’upload ou de
///   la génération de l’URL.
///
/// Throws:
/// • Erreurs Supabase Storage (upload, permissions, bucket inaccessible).
/// • Erreurs de lecture du fichier local.
/// • Erreurs réseau.
/// • Exceptions inattendues durant l’exécution.
///
/// Process:
/// • Construction du chemin de stockage dans le bucket Supabase.
/// • Upload du fichier image dans `menberProfile`.
/// • Génération de l’URL publique de l’image.
/// • Log de confirmation de l’URL générée.
/// • Retour de l’URL via [FirebaseSuccess].
/// • Encapsulation des erreurs dans [FirebaseError].
  Future<FirebaseResult<String?>> uploadProfileImage(
    RequestAuthenProfileUpdateImage params,
  ) async {
    try {
      final Map<String, dynamic> updates = {
        ...params
            .copyWith(profileImage: params.profileImage)
            .toJson(), // nouveaux champs simples
      };
      // 2) Créer une nouvelle entrée
      await db.child('menber/${params.menberId}').update(updates);

      // 4) Retourner le key généré
      return FirebaseSuccess(params.profileImage);
    } catch (e) {
      log('************$e');
      return FirebaseError(e.toString());
    }
  }

  Future<FirebaseResult<String?>> uploadprofileImage({
    required RequestAuthenProfileUpdateImage params,
  }) async {
    try {
      // log("--->>Image URL : $imageUrl");
      final pathInBucket = 'upload/${params.profileImage}.jpg';

      await supabase.storage
          .from('menberProfile')
          .upload(
            pathInBucket,
            File(params.profileImage), // ici File du fichier local
          );

      final imageUrl = supabase.storage
          .from('menberProfile')
          .getPublicUrl(pathInBucket);

      log("--->>Image URL : $imageUrl");

      return FirebaseSuccess(imageUrl);
    } catch (e) {
      log("0-==============Upload Error : $e");
      return FirebaseError(e.toString());
    }
  }

/// -------------------------- Method:[createSignIn] --------------------------------------------
/// Description:
/// Authentifie un utilisateur à partir de ses informations de connexion
/// enregistrées dans Firebase Realtime Database.
///
/// Cette méthode recherche d'abord un utilisateur à partir de son adresse
/// email puis vérifie la correspondance des informations d'authentification
/// fournies (email, mot de passe et contact).
///
/// Lorsque l'authentification réussit, l'identifiant du membre est stocké
/// localement dans SharedPreferences afin de maintenir la session utilisateur.
///
/// Parameters:
/// • [params] : Informations de connexion de l'utilisateur.
///   - [email] : Adresse email du membre.
///   - [password] : Mot de passe du membre.
///   - [contact] : Numéro de contact associé au compte.
///
/// Returns:
/// • [FirebaseResult<String?>] contenant l'identifiant unique du membre
///   authentifié.
/// • [FirebaseError] si aucun utilisateur correspondant n'est trouvé ou
///   si les informations de connexion sont invalides.
///
/// Throws:
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture des données utilisateur.
/// • Erreurs liées à SharedPreferences.
/// • Erreurs de validation des informations d'authentification.
/// • Structure de données invalide ou inattendue.
/// • Exceptions inattendues durant l'exécution.
///
/// Process:
/// • Recherche de l'utilisateur via son adresse email.
/// • Vérification de l'existence des données retournées.
/// • Validation de l'email, du mot de passe et du contact.
/// • Récupération de l'identifiant du membre.
/// • Enregistrement du `menberId` dans SharedPreferences (`menberkey`).
/// • Retour de l'identifiant utilisateur via [FirebaseSuccess].
/// • Encapsulation des erreurs dans [FirebaseError].
  @override
  Future<FirebaseResult<String?>> createSignIn(
    RequestAuthenSignIn params,
  ) async {
    try {
      final emailSnapshot = await db
          .child('menber')
          .orderByChild('email')
          .equalTo(params.email)
          .get();

      final data = emailSnapshot.value as Map<dynamic, dynamic>;

      if (data.isNotEmpty) {
        final user = data.values.firstWhere(
          (x) =>
              x['email'] == params.email &&
              x['password'] == params.password &&
              x['contact'] == params.contact,
        );
        if (user != null) {
          log("--->>User: ${user['menberId']}");
          final shared = await shareData.SharedPreferences.getInstance();
          await shared.setString('menberkey', user['menberId']);
          return FirebaseSuccess(user['menberId']);
        }
      }

      return FirebaseError('Aucun utilisateur trouver');
    } catch (e) {
      log('🔥Error getting profile: $e');
      return FirebaseError('${e.toString()}');
    }
  }
  
/// -------------------------- Method:[updateProfileId] --------------------------------------------
/// Description:
/// Met à jour l'identifiant utilisateur associé à un profil dans
/// Firebase Realtime Database.
///
/// Cette méthode permet de synchroniser ou d'enregistrer l'identifiant
/// du membre dans son profil Firebase en mettant à jour le nœud
/// `menber/{menberId}`.
///
/// Les données fournies sont fusionnées avec les informations déjà
/// existantes afin de garantir la cohérence du profil utilisateur.
///
/// Parameters:
/// • [params] : Informations nécessaires à la mise à jour du profil.
///   - [menberId] : Identifiant unique du membre.
///   - Autres champs éventuels à mettre à jour.
///
/// Returns:
/// • [FirebaseResult<String?>] contenant l'identifiant du membre mis à jour.
/// • [FirebaseError] si une erreur survient lors de l'opération.
///
/// Throws:
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture ou de mise à jour des données.
/// • Erreurs de sérialisation des données.
/// • Structure de données invalide ou inattendue.
/// • Exceptions inattendues durant l'exécution.
///
/// Process:
/// • Construction des données de mise à jour à partir de [params].
/// • Ajout de l'identifiant utilisateur dans le champ `userId`.
/// • Mise à jour du nœud `menber/{menberId}`.
/// • Enregistrement des modifications dans Firebase.
/// • Retour de l'identifiant utilisateur via [FirebaseSuccess].
/// • Journalisation des erreurs éventuelles.
/// • Encapsulation des erreurs dans [FirebaseError].
  @override
  Future<FirebaseResult<String?>> updateProfileId(RequestAuthenUpdateProfileKey params) async{
   
    try {
        final Map<String, dynamic> updates = {
          ...params.toJson(), // nouveaux champs simples
          'serviceLibelle': '',
          'userId': params.menberId,
        };
        // 2) Créer une nouvelle entrée
        await db.child('menber/${params.menberId}').update(updates);

        // 4) Retourner le key généré
        return FirebaseSuccess(params.menberId);
  

    } catch (e) {

      log("🔥 Firebase ERROR updateProfile → $e");
      return FirebaseError(e.toString());
    }
  }


  /// -------------------------- Method:[sendImpliciteConnexion] --------------------------------------------
/// Description:
/// Effectue une connexion implicite en recherchant un utilisateur
/// à partir de l'identifiant unique de son appareil (`deviceId`)
/// enregistré dans Firebase Realtime Database.
///
/// Cette méthode permet d'identifier automatiquement un utilisateur
/// précédemment connecté sans nécessiter une nouvelle authentification.
///
/// Lorsque le `deviceId` correspond à un utilisateur existant,
/// les informations de son profil sont récupérées et converties en
/// objet [ProfileResponseModel].
///
/// Parameters:
/// • [params] : Informations nécessaires à la connexion implicite.
///   - [deviceId] : Identifiant unique de l'appareil utilisé pour
///     retrouver le profil associé.
///
/// Returns:
/// • [FirebaseSuccess<ProfileResponseModel>] si un utilisateur
///   correspondant au `deviceId` est trouvé.
/// • [FirebaseError] si aucun utilisateur n'est associé au
///   `deviceId` fourni ou en cas d'échec de l'opération.
///
/// Throws (capturées et encapsulées):
/// • Erreurs Firebase Realtime Database.
/// • Erreurs de lecture des données.
/// • Erreurs de conversion vers [ProfileResponseModel].
/// • Erreurs liées à une structure de données invalide ou inattendue.
/// • Exceptions inattendues durant l'exécution.
///
/// Process:
/// • Recherche d'un utilisateur dans le nœud `menber`.
/// • Filtrage des données à partir du champ `deviceId`.
/// • Vérification de l'existence d'un utilisateur correspondant.
/// • Conversion des données Firebase en [ProfileResponseModel].
/// • Retour du profil utilisateur via un [FirebaseSuccess].
/// • Encapsulation des erreurs dans un [FirebaseError].
  @override
  Future<FirebaseResult<ProfileResponseModel>> sendImpliciteConnexion(
    RequestImpliciteConnexion params,
  ) async {
    try {
      final userIdExist = await db
          .child('menber')
          .orderByChild('deviceId')
          .equalTo(params.deviceId)
          .get();

      if (userIdExist.exists) {
        final data = userIdExist.value as Map<dynamic, dynamic>;
        final notifications = data.values.map((e) {
          final notificationItem = Map<String, dynamic>.from(e);
          return ProfileResponseModel.fromJson(notificationItem);
        }).toList();
        return FirebaseSuccess(notifications.first);
      }

      return FirebaseError("L'utilisateur n'existe pas");
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }


  

}

