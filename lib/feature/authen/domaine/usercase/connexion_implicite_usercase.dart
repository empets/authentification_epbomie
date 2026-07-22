import 'package:dartz/dartz.dart';
import 'package:grace_church/core/api/failure/fail.dart';
import 'package:grace_church/core/usercase/usercase.dart';
import 'package:grace_church/feature/authen/domaine/repository/authen_repository.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetConnexionImpliciteUsercase implements UseCase<ProfileResponse, RequestImpliciteConnexion> {
  GetConnexionImpliciteUsercase(this.repository);
  final AuthenRepository repository;
  @override
  Future<Either<Failure, ProfileResponse>> call(RequestImpliciteConnexion params) {
    return repository.sendImpliciteConnexion(params);
  }
}
