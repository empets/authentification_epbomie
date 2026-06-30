// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

// import 'package:ma_box_orange/features/request_management/domain/entities/offer_feature.dart';

enum OfferType { fiber, fourG }

extension OfferTypeExtension on OfferType {
  String get label {
    switch (this) {
      case OfferType.fiber:
        return 'Fibre';
      case OfferType.fourG:
        return '4G';
    }
  }
}

class Offer extends Equatable {
  final String id;
  final String name;
  final String description;
  final OfferType type;
  final String imagePath;
  final String logoPath;
  final int pricePerMonth;
  // final List<OfferFeature> features;
  final String? additionalInfo;
  final bool isStartingPrice;

  const Offer({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.imagePath,
    required this.logoPath,
    required this.pricePerMonth,
    // required this.features,
    this.additionalInfo,
    this.isStartingPrice = false,
  });

  String get formattedPrice {
    final prefix = isStartingPrice ? 'À partir de ' : '';
    return '$prefix$pricePerMonth FCFA';
  }

  String get formattedPriceWithPeriod {
    final prefix = isStartingPrice ? 'À partir de ' : '';
    return '$prefix$pricePerMonth FCFA /mois';
  }

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        type,
        imagePath,
        logoPath,
        pricePerMonth,
        // features,
        additionalInfo,
        isStartingPrice,
      ];
}
