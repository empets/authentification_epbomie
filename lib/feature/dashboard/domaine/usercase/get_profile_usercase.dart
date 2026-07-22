import 'package:dartz/dartz.dart';
import 'package:grace_church/core/api/failure/fail.dart';
import 'package:grace_church/core/usercase/usercase.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/request/home_request.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';
import 'package:grace_church/feature/dashboard/domaine/repository/home_domain_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetProfileUsercase implements UseCase<List<ProfileResponse>, RequestGetProfile> {
  GetProfileUsercase(this.repository);

  final HomeDomaineRepository repository;

  @override
  Future<Either<Failure, List<ProfileResponse>>> call(RequestGetProfile params) {
    return repository.getProfileAll(params);
  }
}


