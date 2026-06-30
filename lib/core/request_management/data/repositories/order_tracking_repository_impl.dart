// import 'package:dartz/dartz.dart';
// import 'package:ma_box_orange/core/error/exception.dart';
// import 'package:ma_box_orange/core/error/failure.dart';
// import 'package:ma_box_orange/features/request_management/data/datasources/order_tracking_remote_datasource.dart';
// import 'package:ma_box_orange/features/request_management/domain/entities/order_tracking_response.dart';
// import 'package:ma_box_orange/features/request_management/domain/repositories/order_tracking_repository.dart';

// class OrderTrackingRepositoryImpl implements OrderTrackingRepository {
//   OrderTrackingRepositoryImpl({required this.remoteDatasource});
//   final OrderTrackingRemoteDatasource remoteDatasource;

//   @override
//   Future<Either<Failure, OrderTrackingResponse>> getOrderTracking({
//     required String dossierId,
//   }) async {
//     try {
//       final result = await remoteDatasource.getOrderTracking(
//         dossierId: dossierId,
//       );
//       return Right(result);
//     } on ServerException catch (e) {
//       return Left(ServerFailure(message:'$e'));
//     } on NetworkException catch (e) {
//       return Left(NetworkFailure(message:e.message));
//     } on ApiException catch (e) {
//       return Left(ApiFailure(e.message));
//     } on ParsingException catch (e) {
//       return Left(ParsingFailure(message:e.message));
//     } catch (e) {
//       return Left(UnknownFailure(e.toString()));
//     }
//   }
// }
