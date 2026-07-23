

import 'package:dartz/dartz.dart';
import 'package:grace_church/core/api/failure/fail.dart';
import 'package:grace_church/core/usercase/usercase.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/request/home_request.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';
import 'package:grace_church/feature/dashboard/domaine/repository/home_domain_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetPresenceListUsercase implements UseCase<List<PresenceResponse>, RequestGetProfile> {
  GetPresenceListUsercase(this.repository);

  final HomeDomaineRepository repository;

  @override
  Future<Either<Failure, List<PresenceResponse>>> call(RequestGetProfile params) {
    return repository.getPresenceList(params);
  }
}
