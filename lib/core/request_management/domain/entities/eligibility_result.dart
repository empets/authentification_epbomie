import 'package:equatable/equatable.dart';
import 'offer.dart';

enum EligibilityStatus {
  eligible,
  notEligible,
}

extension EligibilityStatusExtension on EligibilityStatus {
  String get label {
    switch (this) {
      case EligibilityStatus.eligible:
        return 'Éligible';
      case EligibilityStatus.notEligible:
        return 'Non éligible';
    }
  }

  String get message {
    switch (this) {
      case EligibilityStatus.eligible:
        return 'Votre zone est éligible, vous pouvez choisir une offre fibre.';
      case EligibilityStatus.notEligible:
        return 'Votre zone n\'est pas éligible';
    }
  }

  String? get subtitle {
    switch (this) {
      case EligibilityStatus.eligible:
        return null;
      case EligibilityStatus.notEligible:
        return 'Voir les offre 4G associées en dessous';
    }
  }
}

class EligibilityResult extends Equatable {
  final EligibilityStatus status;
  final String address;
  final List<Offer> availableOffers;

  const EligibilityResult({
    required this.status,
    required this.address,
    required this.availableOffers,
  });

  @override
  List<Object?> get props => [status, address, availableOffers];
}
