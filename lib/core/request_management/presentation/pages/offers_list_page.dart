// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ma_box_orange/core/map/models/map_location.dart';
// import 'package:ma_box_orange/core/rechargement/theme/app_colors.dart';
// import 'package:ma_box_orange/core/rechargement/theme/app_text_styles.dart';
// import 'package:ma_box_orange/core/rechargement/widgets/custom_app_bar.dart';
// import 'package:ma_box_orange/core/rechargement/widgets/error_state_widget.dart';
// import 'package:ma_box_orange/core/rechargement/widgets/primary_button.dart';
// import 'package:ma_box_orange/core/services/app_notifications.dart';
// import 'package:ma_box_orange/features/request_management/data/datasources/offers_remote_datasource.dart'
//     as datasource;
// import 'package:ma_box_orange/features/request_management/di/injection.dart';
// import 'package:ma_box_orange/features/request_management/domain/entities/eligibility_response.dart';
// import 'package:ma_box_orange/features/request_management/domain/entities/eligibility_result.dart';
// import 'package:ma_box_orange/features/request_management/domain/entities/offer.dart';
// import 'package:ma_box_orange/features/request_management/presentation/cubits/offers/offers_cubit.dart';
// import 'package:ma_box_orange/features/request_management/presentation/cubits/offers/offers_state.dart';
// import 'package:ma_box_orange/features/request_management/presentation/pages/order_request_page.dart';
// import 'package:ma_box_orange/features/request_management/presentation/widgets/eligibility_banner.dart';
// import 'package:ma_box_orange/features/request_management/presentation/widgets/loading_state_widget.dart';
// import 'package:ma_box_orange/features/request_management/presentation/widgets/offers_carousel.dart';
// import 'package:ma_box_orange/gen/assets.gen.dart';

// class OffersListPage extends StatelessWidget {
//   const OffersListPage({
//     super.key,
//     required this.location,
//     required this.eligibilityResult,
//     required this.phoneNumber,
//     required this.address,
//   });
//   final MapLocation location;
//   final EligibilityResponse eligibilityResult;
//   final String phoneNumber;
//   final String address;

//   @override
//   Widget build(BuildContext context) {
//     // Déterminer le type d'offre à charger selon l'éligibilité
//     final offerType =
//         eligibilityResult.isFibre ? OfferType.fiber : OfferType.fourG;

//     return BlocProvider(
//       create: (context) =>
//           RequestManagementInjection.createOffersCubit()..getOffers(offerType),
//       child: _OffersListView(
//         location: location,
//         eligibilityResult: eligibilityResult,
//         phoneNumber: phoneNumber,
//         address: address,
//       ),
//     );
//   }
// }

// class _OffersListView extends StatefulWidget {
//   const _OffersListView({
//     required this.location,
//     required this.eligibilityResult,
//     required this.phoneNumber,
//     required this.address,
//   });
//   final MapLocation location;
//   final EligibilityResponse eligibilityResult;
//   final String phoneNumber;
//   final String address;

//   @override
//   State<_OffersListView> createState() => _OffersListViewState();
// }

// class _OffersListViewState extends State<_OffersListView> {
//   Offer? _selectedOffer;
//   bool _hasAutoSelected = false;

//   /// Obtenir le code de l'offre recommandée depuis l'éligibilité
//   String? _getRecommendedOfferCode() {
//     final eligibility = widget.eligibilityResult;

//     // Si éligible Fibre, retourner le code de l'offre Fibre recommandée
//     if (eligibility.isFibre && eligibility.fiberOffer != null) {
//       return eligibility.fiberOffer!.code;
//     }

//     // Sinon, retourner le code de l'offre 4G recommandée
//     if (eligibility.fourGOffer != null) {
//       return eligibility.fourGOffer!.code;
//     }

//     return null;
//   }

//   /// Sélectionner automatiquement l'offre recommandée
//   void _autoSelectRecommendedOffer(List<Offer> offers) {
//     if (_hasAutoSelected || offers.isEmpty) return;

//     final recommendedCode = _getRecommendedOfferCode();
//     if (recommendedCode == null) return;

//     // Trouver l'offre avec le code recommandé
//     final recommendedOffer = offers.firstWhere(
//       (offer) => offer.id == recommendedCode,
//       orElse: () => offers.first, // Sélectionner la première offre par défaut
//     );

//     setState(() {
//       _selectedOffer = recommendedOffer;
//       _hasAutoSelected = true;
//     });
//   }

//   /// Obtenir l'index de l'offre recommandée dans la liste
//   int _getRecommendedOfferIndex(List<Offer> offers) {
//     final recommendedCode = _getRecommendedOfferCode();
//     if (recommendedCode == null) return 0;

//     final index = offers.indexWhere((offer) => offer.id == recommendedCode);
//     return index != -1 ? index : 0;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.backgroundWhite,
//       appBar: const CustomAppBar(),
//       body: BlocListener<OffersCubit, OffersState>(
//         listenWhen: (previous, current) {
//           // Ne pas écouter les changements pendant le premier build
//           return previous is! OffersInitial;
//         },
//         listener: (context, state) {
//           if (state is OffersError) {
//             WidgetsBinding.instance.addPostFrameCallback((_) {
//               if (context.mounted) {
//                 AppNotifications.showError(context, state.message);
//               }
//             });
//           }
//         },
//         child: BlocBuilder<OffersCubit, OffersState>(
//           builder: (context, state) {
//             if (state is OffersLoading) {
//               return const LoadingStateWidget();
//             }

//             if (state is OffersError) {
//               return ErrorStateWidget(
//                 message: state.message,
//                 onRetry: () => Navigator.pop(context),
//               );
//             }

//             if (state is OffersSuccess) {
//               final offers = state.offers.asMap().entries.map(
//                 (entry) {
//                   final index = entry.key + 1; // Commence à 1
//                   final entity = entry.value;

//                   return Offer(
//                     id: entity.code,
//                     name: entity.name,
//                     description: entity.description,
//                     type:
//                         entity.isFiberOffer ? OfferType.fiber : OfferType.fourG,
//                     imagePath:
//                         MyAssets.v4Img.requestManagement.offerBackground.path,
//                     logoPath:
//                         'assets/v4-img/request_management/icons/$index.svg',
//                     pricePerMonth: entity.price.toInt(),
//                     features: entity.extractFeatures(),
//                     additionalInfo: entity.appelIllimite,
//                   );
//                 },
//               ).toList();

//               // Sélectionner automatiquement l'offre recommandée
//               WidgetsBinding.instance.addPostFrameCallback((_) {
//                 _autoSelectRecommendedOffer(offers);
//               });

//               return _buildContent(context, offers);
//             }

//             return const SizedBox.shrink();
//           },
//         ),
//       ),
//     );
//   }

//   Widget _buildContent(BuildContext context, List<Offer> offers) {
//     final RequestSectionTitle = widget.eligibilityResult.isFibre
//         ? 'Offres Fibre disponibles'
//         : 'Offres 4G disponibles';

//     return Column(
//       children: [
//         Expanded(
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               spacing: 24,
//               children: [
//                 // Title
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
//                   child: Text(
//                     'Nouvelle demande',
//                     style: AppTextStyles.heading1,
//                   ),
//                 ),

//                 // Eligibility banner
//                 EligibilityBanner(
//                   status: widget.eligibilityResult.isFibre
//                       ? EligibilityStatus.eligible
//                       : EligibilityStatus.notEligible,
//                 ),

//                 // Offers RequestSection
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   spacing: 8,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 24),
//                       child: Text(RequestSectionTitle, style: AppTextStyles.heading3),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 24),
//                       child: Text(
//                         'Liste des offres auxquelles vous êtes éligible',
//                         style: AppTextStyles.bodyMedium.copyWith(
//                           color: AppColors.grey,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     OffersCarousel(
//                       offers: offers,
//                       selectedOffer: _selectedOffer,
//                       initialPage: _getRecommendedOfferIndex(offers),
//                       onOfferSelected: (offer) {
//                         setState(() {
//                           _selectedOffer = offer;
//                         });
//                       },
//                     ),
//                   ],
//                 ),

//                 const SizedBox(height: 24),
//               ],
//             ),
//           ),
//         ),

//         // Continue button
//         Container(
//           padding: const EdgeInsets.all(24),
//           decoration: BoxDecoration(
//             color: AppColors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withValues(alpha: 0.05),
//                 blurRadius: 8,
//                 offset: const Offset(0, -2),
//               ),
//             ],
//           ),
//           child: PrimaryButton(
//             label: 'Continuer',
//             onPressed: _selectedOffer != null
//                 ? () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => OrderRequestPage(
//                           offer: _selectedOffer!,
//                           phoneNumber: widget.phoneNumber,
//                           location: widget.location,
//                         ),
//                       ),
//                     );
//                   }
//                 : null,
//           ),
//         ),
//       ],
//     );
//   }
// }
