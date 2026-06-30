// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ma_box_orange/core/extention.dart';
// import 'package:ma_box_orange/features/request_management/domain/repositories/order_repository.dart';
// import 'package:ma_box_orange/features/request_management/presentation/cubits/order/order_state.dart';

// /// Cubit pour gérer la création de commandes
// class OrderCubit extends Cubit<OrderState> {
//   OrderCubit({required this.orderRepository}) : super(const OrderInitial());
//   final OrderRepository orderRepository;

//   /// Créer une nouvelle commande
//   Future<void> createOrder({
//     required String contact,
//     required String nom,
//     required String prenom,
//     required String latitude,
//     required String longitude,
//     required String codeOffre,
//   }) async {
//     if (isClosed) return;

//     emit(const OrderSubmitting());

//     try {
//       final result = await orderRepository.createOrder(
//         contact: contact,
//         nom: nom,
//         prenom: prenom,
//         latitude: latitude,
//         longitude: longitude,
//         codeOffre: codeOffre,
//       );

//       if (isClosed) return;

//       result.fold(
//         (failure) {
//           if (!isClosed) {
//             emit(OrderError(failure.message.getOrEmpty()));
//           }
//         },
//         (response) {
//           if (!isClosed) {
//             emit(OrderSuccess(response));
//           }
//         },
//       );
//     } catch (e) {
//       if (!isClosed) {
//         emit(OrderError(e.toString()));
//       }
//     }
//   }

//   /// Réinitialiser l'état
//   void reset() {
//     if (isClosed) return;
//     emit(const OrderInitial());
//   }
// }
