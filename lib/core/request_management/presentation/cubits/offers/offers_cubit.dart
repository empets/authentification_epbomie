// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ma_box_orange/core/extention.dart';
// import 'package:ma_box_orange/features/request_management/domain/entities/offer.dart';
// import 'package:ma_box_orange/features/request_management/domain/usecases/get_offers_usecase.dart';
// import 'package:ma_box_orange/features/request_management/presentation/cubits/offers/offers_state.dart';

// /// Cubit pour gérer la récupération des offres
// class OffersCubit extends Cubit<OffersState> {
//   OffersCubit({required this.getOffersUseCase}) : super(const OffersInitial());
//   final GetOffersUseCase getOffersUseCase;

//   /// Récupère la liste des offres selon le type (fiber ou 4G)
//   Future<void> getOffers(OfferType type) async {
//     if (isClosed) return;

//     emit(const OffersLoading());

//     final result = await getOffersUseCase(
//       GetOffersParams(type: type),
//     );

//     if (isClosed) return;

//     result.fold(
//       (failure) => emit(OffersError(message: failure.message.getOrEmpty())),
//       (offers) => emit(OffersSuccess(offers: offers)),
//     );
//   }

//   /// Réinitialise l'état
//   void reset() {
//     if (!isClosed) {
//       emit(const OffersInitial());
//     }
//   }
// }
