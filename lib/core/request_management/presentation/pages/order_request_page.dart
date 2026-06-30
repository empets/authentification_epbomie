// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ma_box_orange/core/app_border_radius.dart';
// import 'package:ma_box_orange/core/map/models/map_location.dart';
// import 'package:ma_box_orange/core/rechargement/theme/app_colors.dart';
// import 'package:ma_box_orange/core/rechargement/theme/app_text_styles.dart';
// import 'package:ma_box_orange/core/rechargement/widgets/custom_app_bar.dart';
// import 'package:ma_box_orange/core/rechargement/widgets/primary_button.dart';
// import 'package:ma_box_orange/features/request_management/di/injection.dart';
// import 'package:ma_box_orange/features/request_management/domain/entities/offer.dart';
// import 'package:ma_box_orange/features/request_management/presentation/cubits/order/order_cubit.dart';
// import 'package:ma_box_orange/features/request_management/presentation/cubits/order/order_state.dart';
// import 'package:ma_box_orange/features/request_management/presentation/pages/order_confirmation_page.dart';
// import 'package:ma_box_orange/features/request_management/presentation/widgets/loading_state_widget.dart';
// import 'package:ma_box_orange/features/request_management/presentation/widgets/selected_offer_card.dart';

// class OrderRequestPage extends StatelessWidget {
//   const OrderRequestPage({
//     super.key,
//     required this.offer,
//     required this.phoneNumber,
//     required this.location,
//   });
//   final Offer offer;
//   final String phoneNumber;
//   final MapLocation location;

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => RequestManagementInjection.createOrderCubit(),
//       child: _OrderRequestContent(
//         offer: offer,
//         phoneNumber: phoneNumber,
//         location: location,
//       ),
//     );
//   }
// }

// class _OrderRequestContent extends StatefulWidget {
//   const _OrderRequestContent({
//     required this.offer,
//     required this.phoneNumber,
//     required this.location,
//   });
//   final Offer offer;
//   final String phoneNumber;
//   final MapLocation location;

//   @override
//   State<_OrderRequestContent> createState() => _OrderRequestContentState();
// }

// class _OrderRequestContentState extends State<_OrderRequestContent> {
//   final _formKey = GlobalKey<FormState>();
//   final _nameController = TextEditingController();
//   final _firstNameController = TextEditingController();

//   bool get _isFormValid =>
//       _nameController.text.trim().isNotEmpty &&
//       _firstNameController.text.trim().isNotEmpty;

//   @override
//   void initState() {
//     super.initState();
//     _nameController.addListener(() => setState(() {}));
//     _firstNameController.addListener(() => setState(() {}));
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _firstNameController.dispose();
//     super.dispose();
//   }

//   void _handleConfirm() {
//     // if (_isFormValid) {
//     final cubit = context.read<OrderCubit>();
//     cubit.createOrder(
//       contact: widget.phoneNumber,
//       nom: _nameController.text.trim(),
//       prenom: _firstNameController.text.trim(),
//       latitude: widget.location.latitude.toString(),
//       longitude: widget.location.longitude.toString(),
//       codeOffre: widget.offer.id,
//     );
//     // }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<OrderCubit, OrderState>(
//       listener: (context, state) {
//         if (state is OrderSuccess) {
//           // Navigation vers la page de confirmation
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(
//               builder: (context) => OrderConfirmationPage(
//                 success: true,
//                 firstName: _firstNameController.text.trim(),
//                 message: state.response.message,
//               ),
//             ),
//           );
//         } else if (state is OrderError) {
//           // Navigation vers la page de confirmation avec erreur
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(
//               builder: (context) => OrderConfirmationPage(
//                 success: false,
//                 firstName: _firstNameController.text.trim(),
//                 message: state.message,
//               ),
//             ),
//           );
//         }
//       },
//       child: BlocBuilder<OrderCubit, OrderState>(
//         builder: (context, state) {
//           final isSubmitting = state is OrderSubmitting;

//           return Scaffold(
//             backgroundColor: AppColors.backgroundWhite,
//             appBar: const CustomAppBar(),
//             body: Stack(
//               children: [
//                 Column(
//                   children: [
//                     Expanded(
//                       child: SingleChildScrollView(
//                         child: Padding(
//                           padding: const EdgeInsets.all(24),
//                           child: Form(
//                             key: _formKey,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               spacing: 24,
//                               children: [
//                                 // Title
//                                 Text(
//                                   'Commande',
//                                   style: AppTextStyles.heading1,
//                                 ),

//                                 // Selected offer card
//                                 SelectedOfferCard(
//                                   offer: widget.offer,
//                                   onEdit: () {
//                                     // Retour à la page précédente (OffersListPage)
//                                     Navigator.pop(context);
//                                   },
//                                 ),

//                                 // Phone RequestSection
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   spacing: 8,
//                                   children: [
//                                     Text(
//                                       'Téléphone',
//                                       style: AppTextStyles.bodySmall.copyWith(
//                                         color: AppColors.grey,
//                                       ),
//                                     ),
//                                     Text(
//                                       widget.phoneNumber,
//                                       style: AppTextStyles.bodyMedium,
//                                     ),
//                                   ],
//                                 ),

//                                 // Name field
//                                 TextFormField(
//                                   controller: _nameController,
//                                   decoration: InputDecoration(
//                                     hintText: 'Nom',
//                                     hintStyle:
//                                         AppTextStyles.bodyMedium.copyWith(
//                                       color:
//                                           AppColors.grey.withValues(alpha: 0.5),
//                                     ),
//                                     border: OutlineInputBorder(
//                                       borderRadius: AppBorderRadius.small,
//                                       borderSide: BorderSide(
//                                         color: AppColors.grey
//                                             .withValues(alpha: 0.3),
//                                       ),
//                                     ),
//                                     enabledBorder: OutlineInputBorder(
//                                       borderRadius: AppBorderRadius.small,
//                                       borderSide: BorderSide(
//                                         color: AppColors.grey
//                                             .withValues(alpha: 0.3),
//                                       ),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderRadius: AppBorderRadius.small,
//                                       borderSide: const BorderSide(
//                                         color: AppColors.primaryOrange,
//                                         width: 2,
//                                       ),
//                                     ),
//                                     contentPadding: const EdgeInsets.symmetric(
//                                       horizontal: 16,
//                                       vertical: 16,
//                                     ),
//                                   ),
//                                   style: AppTextStyles.bodyMedium,
//                                 ),

//                                 // First name field
//                                 TextFormField(
//                                   controller: _firstNameController,
//                                   decoration: InputDecoration(
//                                     hintText: 'Prénoms',
//                                     hintStyle:
//                                         AppTextStyles.bodyMedium.copyWith(
//                                       color:
//                                           AppColors.grey.withValues(alpha: 0.5),
//                                     ),
//                                     border: OutlineInputBorder(
//                                       borderRadius: AppBorderRadius.small,
//                                       borderSide: BorderSide(
//                                         color: AppColors.grey
//                                             .withValues(alpha: 0.3),
//                                       ),
//                                     ),
//                                     enabledBorder: OutlineInputBorder(
//                                       borderRadius: AppBorderRadius.small,
//                                       borderSide: BorderSide(
//                                         color: AppColors.grey
//                                             .withValues(alpha: 0.3),
//                                       ),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderRadius: AppBorderRadius.small,
//                                       borderSide: const BorderSide(
//                                         color: AppColors.primaryOrange,
//                                         width: 2,
//                                       ),
//                                     ),
//                                     contentPadding: const EdgeInsets.symmetric(
//                                       horizontal: 16,
//                                       vertical: 16,
//                                     ),
//                                   ),
//                                   style: AppTextStyles.bodyMedium,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),

//                     // Bottom RequestSection with button
//                     Container(
//                       padding: const EdgeInsets.all(24),
//                       decoration: BoxDecoration(
//                         color: AppColors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: AppColors.black.withValues(alpha: 0.05),
//                             blurRadius: 8,
//                             offset: const Offset(0, -2),
//                           ),
//                         ],
//                       ),
//                       child: Column(
//                         spacing: 16,
//                         children: [
//                           PrimaryButton(
//                             label: 'Confirmer',
//                             onPressed: _handleConfirm,
//                             // onPressed: (isSubmitting || !_isFormValid)
//                             //     ? null
//                             //     : _handleConfirm,
//                           ),
//                           // Page indicator (bottom line)
//                           Container(
//                             height: 4,
//                             width: 40,
//                             decoration: BoxDecoration(
//                               color: AppColors.black,
//                               borderRadius: AppBorderRadius.handleBar,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),

//                 // Loading overlay
//                 if (isSubmitting)
//                   ColoredBox(
//                     color: AppColors.black.withValues(alpha: 0.5),
//                     child: const Center(
//                       child: LoadingStateWidget(
//                         message: 'Création de votre commande...',
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
