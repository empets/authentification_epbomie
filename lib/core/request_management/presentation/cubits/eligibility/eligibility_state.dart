import 'package:equatable/equatable.dart';
import '../../../domain/entities/eligibility_response.dart';

/// États du EligibilityCubit
abstract class EligibilityState extends Equatable {
  const EligibilityState();

  @override
  List<Object?> get props => [];
}

/// État initial
class EligibilityInitial extends EligibilityState {
  const EligibilityInitial();
}

/// État de chargement
class EligibilityLoading extends EligibilityState {
  const EligibilityLoading();
}

/// État de succès
class EligibilitySuccess extends EligibilityState {
  final EligibilityResponse result;

  const EligibilitySuccess({required this.result});

  @override
  List<Object?> get props => [result];
}

/// État d'erreur
class EligibilityError extends EligibilityState {
  final String message;

  const EligibilityError({required this.message});

  @override
  List<Object?> get props => [message];
}
