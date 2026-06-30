// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ma_box_orange/core/map/models/map_location.dart';
// import 'package:ma_box_orange/features/request_management/domain/entities/offer.dart';
// import 'package:ma_box_orange/features/request_management/domain/repositories/offers_repository.dart';
// import 'package:ma_box_orange/features/request_management/presentation/cubits/new_request/new_request_state.dart';

// class NewRequestCubit extends Cubit<NewRequestState> {
//   NewRequestCubit({required this.repository})
//       : super(const NewRequestInitial());
//   final OffersRepository repository;

//   Future<void> checkEligibility(MapLocation location) async {
//     try {
//       emit(const NewRequestLoading());

//       final result = await repository.checkEligibility(location);
//       if (!isClosed) {
//         emit(NewRequestEligibilityChecked(result: result));
//       }
//     } catch (e) {
//       if (!isClosed) {
//         emit(NewRequestError(message: e.toString()));
//       }
//     }
//   }

//   void selectOffer(Offer offer) {
//     if (state is NewRequestEligibilityChecked) {
//       final currentState = state as NewRequestEligibilityChecked;
//       if (!isClosed) {
//         emit(currentState.copyWith(selectedOffer: offer));
//       }
//     }
//   }

//   void reset() {
//     if (!isClosed) {
//       emit(const NewRequestInitial());
//     }
//   }
// }
