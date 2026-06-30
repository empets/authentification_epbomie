// import 'dart:io';

// import 'package:dartz/dartz.dart';
// import 'package:ma_box_orange/core/error/failure.dart';
// import 'package:ma_box_orange/features/request_management/data/datasources/order_remote_datasource.dart';
// import 'package:ma_box_orange/features/request_management/domain/entities/order_response.dart';
// import 'package:ma_box_orange/features/request_management/domain/repositories/order_repository.dart';

// /// Implémentation du repository pour la création de commandes
// class OrderRepositoryImpl implements OrderRepository {
//   OrderRepositoryImpl({required this.remoteDataSource});
//   final OrderRemoteDataSource remoteDataSource;

//   @override
//   Future<Either<Failure, OrderResponse>> createOrder({
//     required String contact,
//     required String nom,
//     required String prenom,
//     required String latitude,
//     required String longitude,
//     required String codeOffre,
//   }) async {
//     try {
//       final result = await remoteDataSource.createOrder(
//         contact: contact,
//         nom: nom,
//         prenom: prenom,
//         latitude: latitude,
//         longitude: longitude,
//         codeOffre: codeOffre,
//       );
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
