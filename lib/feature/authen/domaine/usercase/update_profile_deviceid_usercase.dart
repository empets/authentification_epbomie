
import 'package:dartz/dartz.dart';
import 'package:grace_church/core/api/failure/fail.dart';
import 'package:grace_church/core/usercase/usercase.dart';
import 'package:grace_church/feature/authen/domaine/entities/request/authen_request.dart';
import 'package:grace_church/feature/authen/domaine/repository/authen_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UpdateProfileDeviceIdUsercase implements UseCase<String?, RequestAuthenUpdateProfileKey> {
  UpdateProfileDeviceIdUsercase(this.repository);

  final AuthenRepository repository;

  @override
  Future<Either<Failure, String?>> call(RequestAuthenUpdateProfileKey params) {
    return repository.updateProfileId(params);
  }
}