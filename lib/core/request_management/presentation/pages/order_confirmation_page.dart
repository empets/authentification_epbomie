// import 'package:flutter/material.dart';
// import 'package:ma_box_orange/core/rechargement/theme/app_colors.dart';
// import 'package:ma_box_orange/core/rechargement/theme/app_text_styles.dart';
// import 'package:ma_box_orange/core/rechargement/widgets/custom_app_bar.dart';
// import 'package:ma_box_orange/core/rechargement/widgets/primary_button.dart';


// /// Page de confirmation après création de commande (succès ou échec)
// class OrderConfirmationPage extends StatelessWidget {

//   const OrderConfirmationPage({
//     super.key,
//     required this.success,
//     required this.firstName,
//     required this.message,
//   });
//   final bool success;
//   final String firstName;
//   final String message;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.backgroundWhite,
//       appBar: const CustomAppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(24),
//         child: Column(
//           children: [
//             // Title
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 'Confirmation',
//                 style: AppTextStyles.heading1,
//               ),
//             ),
//             const SizedBox(height: 40),

//             // Content
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Illustration
//                   _buildIllustration(),
//                   const SizedBox(height: 40),

//                   // Status
//                   Text(
//                     success ? 'Succès' : 'Échec',
//                     style: AppTextStyles.heading2.copyWith(
//                       color: success ? AppColors.success : AppColors.error,
//                     ),
//                   ),
//                   const SizedBox(height: 16),

//                   // Main message
//                   if (success) ...[
//                      Text(
//                       'Prise de commande fibre',
//                       style: AppTextStyles.heading3,
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       'Bravo $firstName 🎉',
//                       style: AppTextStyles.heading3,
//                       textAlign: TextAlign.center,
//                     ),
//                   ] else ...[
//                     Text(
//                       'Échec de la commande',
//                       style: AppTextStyles.heading3.copyWith(
//                         color: AppColors.error,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                   const SizedBox(height: 24),

//                   // Detailed message
//                   Text(
//                     success
//                         ? 'La Fibre Orange arrive bientôt chez vous ! Un conseiller vous contactera pour confirmer votre installation.'
//                         : message,
//                     style: AppTextStyles.bodyMedium.copyWith(
//                       color: AppColors.grey700,
//                       height: 1.5,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),

//             // Bottom button
//             PrimaryButton(
//               label: 'Retour à Ma Box',
//               onPressed: () {
//                 // Retour à l'écran d'accueil
//                 Navigator.of(context).popUntil((route) => route.isFirst);
//               },
//             ),
//             const SizedBox(height: 16),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildIllustration() {
//     return Container(
//       width: 200,
//       height: 200,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: AppColors.grey.withValues(alpha: 0.1),
//       ),
//       child: Center(
//         child: Icon(
//           success ? Icons.check_circle : Icons.error,
//           size: 100,
//           color: success ? AppColors.success : AppColors.error,
//         ),
//       ),
//     );
//   }
// }
