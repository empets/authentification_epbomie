// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ma_box_orange/core/extention.dart';
// import 'package:ma_box_orange/features/request_management/domain/usecases/check_eligibility_usecase.dart';
// import 'package:ma_box_orange/features/request_management/presentation/cubits/eligibility/eligibility_state.dart';

// /// Cubit global pour gérer l'éligibilité du client
// class EligibilityCubit extends Cubit<EligibilityState> {
//   EligibilityCubit({required this.checkEligibilityUseCase})
//       : super(const EligibilityInitial());
//   final CheckEligibilityUseCase checkEligibilityUseCase;

//   /// Vérifie l'éligibilité d'une adresse
//   Future<void> checkEligibility({
//     required double latitude,
//     required double longitude,
//   }) async {
//     if (isClosed) return;

//     emit(const EligibilityLoading());

//     final result = await checkEligibilityUseCase(
//       CheckEligibilityParams(
//         latitude: latitude,
//         longitude: longitude,
//       ),
//     );

//     if (isClosed) return;

//     result.fold(
//       (failure) =>
//           emit(EligibilityError(message: failure.message.getOrEmpty())),
//       (eligibilityResponse) => emit(
//         EligibilitySuccess(result: eligibilityResponse),
//       ),
//     );
//   }

//   /// Réinitialise l'état
//   void reset() {
//     if (!isClosed) {
//       emit(const EligibilityInitial());
//     }
//   }
// }
