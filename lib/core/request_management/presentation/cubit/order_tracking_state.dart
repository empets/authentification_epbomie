import 'package:equatable/equatable.dart';
import '../../domain/entities/order_tracking_response.dart';

/// États du cubit de suivi de commande
sealed class OrderTrackingState extends Equatable {
  const OrderTrackingState();

  @override
  List<Object?> get props => [];
}

/// État initial
class OrderTrackingInitial extends OrderTrackingState {
  const OrderTrackingInitial();
}

/// Chargement en cours
class OrderTrackingLoading extends OrderTrackingState {
  const OrderTrackingLoading();
}

/// Succès avec données
class OrderTrackingSuccess extends OrderTrackingState {
  final OrderTrackingResponse response;

  const OrderTrackingSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

/// Erreur
class OrderTrackingError extends OrderTrackingState {
  final String message;

  const OrderTrackingError(this.message);

  @override
  List<Object?> get props => [message];
}
