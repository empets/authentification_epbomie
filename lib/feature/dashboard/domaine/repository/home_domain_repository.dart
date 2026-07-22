import 'package:dartz/dartz.dart';
import 'package:grace_church/core/api/failure/fail.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/request/home_request.dart' hide EmptyRequest;
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';


abstract class HomeDomaineRepository {
  // -------------------------------------------------------------
  //  cette methode permet de recuperer le profile d'un utilisateur
  //  elle prend en parametre un objet EmptyRequest qui ne contient rien
  //  elle retourne un objet ProfileResponse qui contient le profile de l'utilisateur
  // -------------------------------------------------------------
  Future<Either<Failure, List<ProfileResponse>>> getProfileAll(RequestGetProfile notParms);
  Future<Either<Failure, ProfileResponse>> getProfile(RequestGetProfile notParms);

 





}
