import 'package:equatable/equatable.dart';
import '../../../domain/entities/eligibility_result.dart';
import '../../../domain/entities/offer.dart';

abstract class NewRequestState extends Equatable {
  const NewRequestState();

  @override
  List<Object?> get props => [];
}

class NewRequestInitial extends NewRequestState {
  const NewRequestInitial();
}

class NewRequestLoading extends NewRequestState {
  const NewRequestLoading();
}

class NewRequestEligibilityChecked extends NewRequestState {
  final EligibilityResult result;
  final Offer? selectedOffer;

  const NewRequestEligibilityChecked({
    required this.result,
    this.selectedOffer,
  });

  NewRequestEligibilityChecked copyWith({
    EligibilityResult? result,
    Offer? selectedOffer,
  }) {
    return NewRequestEligibilityChecked(
      result: result ?? this.result,
      selectedOffer: selectedOffer ?? this.selectedOffer,
    );
  }

  @override
  List<Object?> get props => [result, selectedOffer];
}

class NewRequestError extends NewRequestState {
  final String message;

  const NewRequestError({required this.message});

  @override
  List<Object?> get props => [message];
}
