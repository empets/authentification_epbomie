import 'package:equatable/equatable.dart';

enum FeatureIcon {
  flybox,
  highSpeed,
  lowPrice,
  unlimitedInternet,
  callMinutes,
  networkAll,
  networkComplices,
}

class OfferFeature extends Equatable {
  final FeatureIcon icon;
  final String label;
  final String? value;

  const OfferFeature({
    required this.icon,
    required this.label,
    this.value,
  });

  String get displayText {
    if (value != null) {
      return '$label: $value';
    }
    return label;
  }

  @override
  List<Object?> get props => [icon, label, value];
}
