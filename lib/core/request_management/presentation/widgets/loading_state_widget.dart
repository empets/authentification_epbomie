// import 'package:flutter/material.dart';
// import 'package:ma_box_orange/core/rechargement/constants/app_constants.dart';
// import 'package:ma_box_orange/core/rechargement/theme/app_colors.dart';
// import 'package:ma_box_orange/core/rechargement/theme/app_text_styles.dart';

// /// Widget to display loading states consistently across the app
// ///
// /// Shows a circular progress indicator with optional message.
// ///
// /// Example:
// /// ```dart
// /// if (state is LoadingState) {
// ///   return const LoadingStateWidget();
// /// }
// ///
// /// // With message
// /// if (state is LoadingState) {
// ///   return const LoadingStateWidget(
// ///     message: 'Chargement des données...',
// ///   );
// /// }
// /// ```
// class LoadingStateWidget extends StatelessWidget {
//   const LoadingStateWidget({super.key, this.message});
//   final String? message;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const CircularProgressIndicator(
//             valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryOrange),
//           ),
//           if (message != null) ...[
//             const SizedBox(height: AppConstants.spacingMedium),
//             Text(
//               message!,
//               style: AppTextStyles.bodyMedium,
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ],
//       ),
//     );
//   }
// }
