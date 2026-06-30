import 'package:equatable/equatable.dart';

/// Entity représentant la réponse d'une création de commande
class OrderResponse extends Equatable {
  const OrderResponse({
    required this.success,
    required this.message,
    this.orderId,
  });
  final bool success;
  final String message;
  final String? orderId;

  @override
  List<Object?> get props => [success, message, orderId];
}
