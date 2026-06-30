import 'package:equatable/equatable.dart';
import '../../../domain/entities/order_response.dart';

/// États possibles pour la création de commande
sealed class OrderState extends Equatable {
  const OrderState();

  @override
  List<Object?> get props => [];
}

/// État initial
class OrderInitial extends OrderState {
  const OrderInitial();
}

/// Commande en cours de soumission
class OrderSubmitting extends OrderState {
  const OrderSubmitting();
}

/// Commande créée avec succès
class OrderSuccess extends OrderState {
  final OrderResponse response;

  const OrderSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

/// Erreur lors de la création de commande
class OrderError extends OrderState {
  final String message;

  const OrderError(this.message);

  @override
  List<Object?> get props => [message];
}
