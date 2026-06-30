// import 'dart:io';

// import 'package:com.example.epbomi/core/data_process/failure.dart';
// import 'package:com.example.epbomi/feature/home/presentation/page/request_management/data/datasources/offers_remote_datasource.dart';
// import 'package:com.example.epbomi/feature/home/presentation/page/request_management/domain/entities/offer.dart';
// import 'package:com.example.epbomi/feature/home/presentation/page/request_management/domain/entities/offer_entity.dart';
// import 'package:com.example.epbomi/feature/home/presentation/page/request_management/domain/repositories/offers_repository_new.dart';
// import 'package:dartz/dartz.dart';


/// Implémentation du repository pour les offres
// class OffersRepositoryImpl implements OffersRepositoryNew {
//   OffersRepositoryImpl({required this.remoteDataSource});
//   final OffersRemoteDataSource remoteDataSource;

//   @override
//   Future<Either<Failure, List<OfferEntity>>> getOffers(OfferType type) async {
//     try {
//       final result = await remoteDataSource.getOffers(type);
//       return Right(result);
//     } on SocketException {
//       return const Left(NetworkFailure(message: 'Pas de connexion internet'));
//     } on HttpException {
//       return const Left(ServerFailure(message: 'Erreur serveur'));
//     } on FormatException {
//       return const Left(
//           ParsingFailure(message: 'Erreur de format des données'));
//     } catch (e) {
//       // Gérer les exceptions spécifiques du DataSource
//       final message = e.toString().replaceFirst('Exception: ', '');
//       if (message.contains('serveur')) {
//         return Left(ServerFailure(message: message));
//       } else if (message.contains('client')) {
//         return Left(ApiFailure(message));
//       } else {
//         return Left(UnknownFailure(message));
//       }
//     }
//   }
// }
