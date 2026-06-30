// import 'package:flutter/material.dart';
// import 'package:ma_box_orange/core/rechargement/theme/app_colors.dart';
// import 'package:ma_box_orange/core/rechargement/theme/app_text_styles.dart';
// import 'package:ma_box_orange/core/rechargement/widgets/custom_app_bar.dart';
// import 'package:ma_box_orange/features/request_management/domain/entities/order_tracking_response.dart';
// import 'package:ma_box_orange/features/request_management/presentation/widgets/order_step_card.dart';

// class OrderTrackingDetailsPage extends StatelessWidget {
//   const OrderTrackingDetailsPage({
//     super.key,
//     required this.response,
//   });
//   final OrderTrackingResponse response;

//   @override
//   Widget build(BuildContext context) {
//     // Prendre le premier item (car l'API peut retourner plusieurs commandes)
//     final orderItem =
//         response.itemsSav.isNotEmpty ? response.itemsSav.first : null;

//     if (orderItem == null) {
//       return Scaffold(
//         appBar: const CustomAppBar(),
//         body: Center(
//           child: Text(
//             'Aucune information de commande trouvée',
//             style: AppTextStyles.bodyMedium,
//           ),
//         ),
//       );
//     }

//     return Scaffold(
//       backgroundColor: AppColors.white,
//       appBar: const CustomAppBar(),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(24),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Title
//               Text(
//                 'Commande',
//                 style: AppTextStyles.heading2,
//               ),

//               const SizedBox(height: 24),

//               // RequestSection: Détails de l'intervention
//               Text(
//                 "Détails de l'intervention",
//                 style: AppTextStyles.heading4,
//               ),

//               const SizedBox(height: 16),

//               // Order info card
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: AppColors.white,
//                   borderRadius: BorderRadius.circular(8),
//                   border: Border.all(color: AppColors.greyLight),
//                 ),
//                 child: Row(
//                   children: [
//                     Container(
//                       width: 48,
//                       height: 48,
//                       decoration: BoxDecoration(
//                         color: AppColors.backgroundGrey,
//                         borderRadius: BorderRadius.circular(24),
//                       ),
//                       child: const Icon(
//                         Icons.language,
//                         color: AppColors.greyDark,
//                       ),
//                     ),
//                     const SizedBox(width: 16),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         spacing: 4,
//                         children: [
//                           Text(
//                             'N° de commande ${orderItem.id}',
//                             style: AppTextStyles.bodyMedium.copyWith(
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           Text(
//                             orderItem.dateCreation,
//                             style: AppTextStyles.bodySmall.copyWith(
//                               color: AppColors.greyDark,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 32),

//               // Steps
//               ListView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: orderItem.steps.length,
//                 itemBuilder: (context, index) {
//                   final step = orderItem.steps[index];
//                   return OrderStepCard(
//                     step: step,
//                     stepNumber: index + 1,
//                     isLastStep: index == orderItem.steps.length - 1,
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
