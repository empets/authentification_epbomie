import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:grace_church/core/api/failure/fail.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class EmptyRequest extends Equatable {
  @override
  List<Object> get props => [];
}



abstract class UseCaseStream<Type, Params> {
  Stream<Either<Failure, Type>> call(Params params);
}

