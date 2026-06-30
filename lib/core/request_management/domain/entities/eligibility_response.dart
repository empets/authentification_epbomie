import 'package:equatable/equatable.dart';

/// Entité représentant le résultat du test d'éligibilité
class EligibilityResponse extends Equatable {
  final bool isFibre;
  final OfferRecommendation? fiberOffer;
  final OfferRecommendation? fourGOffer;

  const EligibilityResponse({
    required this.isFibre,
    this.fiberOffer,
    this.fourGOffer,
  });

  @override
  List<Object?> get props => [isFibre, fiberOffer, fourGOffer];
}

/// Entité représentant une recommandation d'offre
class OfferRecommendation extends Equatable {
  final double score;
  final String recommendedOffer;
  final String type;
  final String code;

  const OfferRecommendation({
    required this.score,
    required this.recommendedOffer,
    required this.type,
    required this.code,
  });

  @override
  List<Object?> get props => [score, recommendedOffer, type, code];
}
