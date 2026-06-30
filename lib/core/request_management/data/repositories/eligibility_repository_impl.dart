// import 'dart:io';

// import 'package:com.example.epbomi/core/data_process/failure.dart';
// import 'package:com.example.epbomi/core/data_process/success.dart';
// import 'package:com.example.epbomi/feature/home/presentation/page/request_management/data/datasources/eligibility_remote_datasource.dart';
// import 'package:com.example.epbomi/feature/home/presentation/page/request_management/domain/entities/eligibility_response.dart';
// import 'package:com.example.epbomi/feature/home/presentation/page/request_management/domain/repositories/eligibility_repository.dart';
// import 'package:dartz/dartz.dart';


/// Implémentation du repository pour le test d'éligibilité
// class EligibilityRepositoryImpl implements EligibilityRepository {
//   EligibilityRepositoryImpl({required this.remoteDataSource});
//   final EligibilityRemoteDataSource remoteDataSource;

//   @override
//   Future<Either<Failure, EligibilityResponse>> checkEligibility({
//     required double latitude,
//     required double longitude,
//   }) async {
//     try {
//       final result = await remoteDataSource.checkEligibility(
//         latitude: latitude,
//         longitude: longitude,
//       );
//       return Right(result);
//     }  catch (e) {

      
//     }
//   }
// }
