// import 'package:com.example.epbomi/feature/home/presentation/page/request_management/presentation/cubit/order_tracking_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';


// class OrderTrackingCubit extends Cubit<OrderTrackingState> {
//   OrderTrackingCubit({
//     required this.getOrderTrackingUsecase,
//   }) : super(const OrderTrackingInitial());
//   final GetOrderTrackingUsecase getOrderTrackingUsecase;

//   /// Récupère les informations de suivi de commande
//   Future<void> getOrderTracking({
//     required String dossierId,
//   }) async {
//     emit(const OrderTrackingLoading());

//     final result = await getOrderTrackingUsecase(
//       dossierId: dossierId,
//     );

//     result.fold(
//       (failure) => emit(OrderTrackingError(failure.message.getOrEmpty())),
//       (response) => emit(OrderTrackingSuccess(response)),
//     );
//   }

//   /// Réinitialise l'état
//   void reset() {
//     emit(const OrderTrackingInitial());
//   }
// }
