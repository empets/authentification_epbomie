import '../../domain/entities/offer_entity.dart';

/// Model pour les offres (Fiber et 4G)
class OfferModel extends OfferEntity {
  const OfferModel({
    required super.id,
    required super.code,
    required super.name,
    required super.description,
    required super.price,
    required super.type,
    required super.createdAt,
    required super.isDeleted,
    super.appelIllimite,
    super.fixeMinute,
    super.forfaitMobileMinute,
    super.forfaitMobileInternet,
    super.fraisAbonnement,
  });

  /// Factory pour les offres Fiber
  factory OfferModel.fromJsonFiber(Map<String, dynamic> json) {
    return OfferModel(
      id: json['id'] as int? ?? 0,
      code: json['code'] as String? ?? '',
      name: json['nom'] as String? ?? '',
      description: json['description'] as String? ?? '',
      price: (json['tarif'] as num?)?.toDouble() ?? 0.0,
      type: json['type'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      isDeleted: json['isDeleted'] as bool? ?? false,
      appelIllimite: json['appel_illimite'] as String?,
      fixeMinute: json['fixe_minute'] as String?,
      forfaitMobileMinute: json['forfait_mobile_minute'] as String?,
      forfaitMobileInternet: json['forfait_mobile_internet'] as String?,
    );
  }

  /// Factory pour les offres 4G
  factory OfferModel.fromJson4G(Map<String, dynamic> json) {
    return OfferModel(
      id: json['id'] as int? ?? 0,
      code: json['code'] as String? ?? '',
      name: json['nom'] as String? ?? '',
      description: json['description'] as String? ?? '',
      price: (json['tarif'] as num?)?.toDouble() ?? 0.0,
      type: json['type'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      isDeleted: json['isDeleted'] as bool? ?? false,
      fraisAbonnement: json['frais_d_abonnement'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'nom': name,
      'description': description,
      'tarif': price,
      'type': type,
      'createdAt': createdAt,
      'isDeleted': isDeleted,
      if (appelIllimite != null) 'appel_illimite': appelIllimite,
      if (fixeMinute != null) 'fixe_minute': fixeMinute,
      if (forfaitMobileMinute != null) 'forfait_mobile_minute': forfaitMobileMinute,
      if (forfaitMobileInternet != null)
        'forfait_mobile_internet': forfaitMobileInternet,
      if (fraisAbonnement != null) 'frais_d_abonnement': fraisAbonnement,
    };
  }
}
