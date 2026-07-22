
import 'package:dartz/dartz.dart';
import 'package:grace_church/core/request_management/domain/entities/order_tracking_response.dart';
// import 'package:ma_box_orange/core/error/failure.dart';
// import 'package:ma_box_orange/features/request_management/domain/entities/order_tracking_response.dart';

abstract class OrderTrackingRepository {
  Future<Either<Fail, OrderTrackingResponse>> getOrderTracking({
    required String dossierId,
  });
}
