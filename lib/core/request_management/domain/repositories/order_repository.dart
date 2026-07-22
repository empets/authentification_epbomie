import 'package:dartz/dartz.dart';
import 'package:grace_church/core/api/failure/fail.dart';
import 'package:grace_church/core/request_management/domain/entities/order_response.dart';
// import 'package:ma_box_orange/core/error/failure.dart';
// import 'package:ma_box_orange/features/request_management/domain/entities/order_response.dart';

/// Repository interface pour la création de commandes
abstract class OrderRepository {
  /// Crée une nouvelle commande
  /// Retourne Either<Failure, OrderResponse>
  Future<Either<Failure, OrderResponse>> createOrder({
    required String contact,
    required String nom,  
    required String prenom,
    required String latitude,
    required String longitude,
    required String codeOffre,
  });
}
