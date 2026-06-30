import 'package:equatable/equatable.dart';
import 'offer_feature.dart';

/// Entité représentant une offre Fiber ou 4G
class OfferEntity extends Equatable {
  final int id;
  final String code;
  final String name;
  final String description;
  final double price;
  final String type;
  final String createdAt;
  final bool isDeleted;

  // Champs spécifiques aux offres Fiber
  final String? appelIllimite;
  final String? fixeMinute;
  final String? forfaitMobileMinute;
  final String? forfaitMobileInternet;

  // Champs spécifiques aux offres 4G
  final String? fraisAbonnement;

  const OfferEntity({
    required this.id,
    required this.code,
    required this.name,
    required this.description,
    required this.price,
    required this.type,
    required this.createdAt,
    required this.isDeleted,
    this.appelIllimite,
    this.fixeMinute,
    this.forfaitMobileMinute,
    this.forfaitMobileInternet,
    this.fraisAbonnement,
  });

  /// Indique si l'offre est une offre Fibre
  bool get isFiberOffer => type == 'B2C';

  /// Indique si l'offre est une offre 4G
  bool get is4GOffer => code.startsWith('4G-HOME');

  /// Prix formaté avec devise
  String get formattedPrice => '${price.toStringAsFixed(0)} FCFA';

  /// Prix formaté avec période
  String get formattedPriceWithPeriod => '${price.toStringAsFixed(0)} FCFA/mois';

  /// Extrait les features de l'offre avec leurs icônes et libellés
  List<OfferFeature> extractFeatures() {
    List<OfferFeature> features = [];

    // Features pour offres Fiber
    if (isFiberOffer) {
      if (appelIllimite != null && appelIllimite!.isNotEmpty) {
        features.add(OfferFeature(
          icon: FeatureIcon.unlimitedInternet,
          label: appelIllimite!,
        ));
      }

      if (fixeMinute != null && fixeMinute!.isNotEmpty) {
        features.add(OfferFeature(
          icon: FeatureIcon.callMinutes,
          label: fixeMinute!,
        ));
      }

      if (forfaitMobileMinute != null && forfaitMobileMinute!.isNotEmpty) {
        features.add(OfferFeature(
          icon: FeatureIcon.networkAll,
          label: forfaitMobileMinute!,
        ));
      }

      if (forfaitMobileInternet != null && forfaitMobileInternet!.isNotEmpty) {
        features.add(OfferFeature(
          icon: FeatureIcon.networkComplices,
          label: forfaitMobileInternet!,
        ));
      }
    }

    // Features pour offres 4G (extraites depuis la description)
    if (is4GOffer) {
      // Parser la description pour extraire les features
      final lines = description.split('\\n');

      for (final line in lines) {
        final trimmedLine = line.trim();
        if (trimmedLine.isEmpty) continue;

        if (trimmedLine.contains('Volume internet')) {
          features.add(OfferFeature(
            icon: FeatureIcon.unlimitedInternet,
            label: trimmedLine,
          ));
        } else if (trimmedLine.contains('ligne fixe')) {
          features.add(OfferFeature(
            icon: FeatureIcon.callMinutes,
            label: trimmedLine,
          ));
        } else if (trimmedLine.contains('box')) {
          features.add(OfferFeature(
            icon: FeatureIcon.flybox,
            label: trimmedLine,
          ));
        }
      }

      // Ajouter les frais d'abonnement si disponibles
      if (fraisAbonnement != null && fraisAbonnement!.isNotEmpty) {
        features.add(OfferFeature(
          icon: FeatureIcon.lowPrice,
          label: 'Frais d\'abonnement',
          value: fraisAbonnement,
        ));
      }
    }

    // Si aucune feature n'a été extraite, ajouter une feature par défaut
    if (features.isEmpty) {
      features.add(const OfferFeature(
        icon: FeatureIcon.unlimitedInternet,
        label: 'Internet illimité',
      ));
    }

    return features;
  }

  @override
  List<Object?> get props => [
        id,
        code,
        name,
        description,
        price,
        type,
        createdAt,
        isDeleted,
        appelIllimite,
        fixeMinute,
        forfaitMobileMinute,
        forfaitMobileInternet,
        fraisAbonnement,
      ];
}
