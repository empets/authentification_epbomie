import '../../domain/entities/eligibility_response.dart';

/// Model pour la réponse de l'API de test d'éligibilité
class EligibilityModel extends EligibilityResponse {
  const EligibilityModel({
    required super.isFibre,
    super.fiberOffer,
    super.fourGOffer,
  });

  factory EligibilityModel.fromJson(Map<String, dynamic> item) {
    return EligibilityModel(
      isFibre: item['isFibre'] as bool? ?? false,
      fiberOffer: item['offre_fibre'] != null
          ? OfferRecommendationModel.fromJson(
              item['offre_fibre'] as Map<String, dynamic>,
            )
          : null,
      fourGOffer: item['offre_4g'] != null
          ? OfferRecommendationModel.fromJson(
              item['offre_4g'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'item': {
        'isFibre': isFibre,
        if (fiberOffer != null)
          'offre_fibre': (fiberOffer as OfferRecommendationModel).toJson(),
        if (fourGOffer != null)
          'offre_4g': (fourGOffer as OfferRecommendationModel).toJson(),
      },
    };
  }
}

/// Model pour une recommandation d'offre
class OfferRecommendationModel extends OfferRecommendation {
  const OfferRecommendationModel({
    required super.score,
    required super.recommendedOffer,
    required super.type,
    required super.code,
  });

  factory OfferRecommendationModel.fromJson(Map<String, dynamic> json) {
    return OfferRecommendationModel(
      score: (json['score'] as num?)?.toDouble() ?? 0.0,
      recommendedOffer: json['offre_recommande'] as String? ?? '',
      type: json['type'] as String? ?? '',
      code: json['code'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'score': score,
      'offre_recommande': recommendedOffer,
      'type': type,
      'code': code,
    };
  }
}
