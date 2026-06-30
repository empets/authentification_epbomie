import '../../domain/entities/order_response.dart';

/// Model pour la réponse de création de commande
class OrderModel extends OrderResponse {
  const OrderModel({
    required super.success,
    required super.message,
    super.orderId,
  });

  /// Factory pour créer un OrderModel depuis JSON
  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      orderId: json['orderId'] as String?,
    );
  }

  /// Convertir en JSON pour la requête
  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': message,
      if (orderId != null) 'orderId': orderId,
    };
  }
}
