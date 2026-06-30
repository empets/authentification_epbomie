// import 'package:flutter/material.dart';
// import 'package:ma_box_orange/core/rechargement/theme/app_colors.dart';
// import 'package:ma_box_orange/core/rechargement/theme/app_text_styles.dart';
// import 'package:ma_box_orange/features/request_management/domain/entities/eligibility_result.dart';

// class EligibilityBanner extends StatelessWidget {
//   const EligibilityBanner({super.key, required this.status});
//   final EligibilityStatus status;

//   Color get _backgroundColor {
//     switch (status) {
//       case EligibilityStatus.eligible:
//         return const Color(0xFFE3F2FD); // Light blue
//       case EligibilityStatus.notEligible:
//         return const Color(0xFFFFF9E6); // Light yellow
//     }
//   }

//   Color get _iconColor {
//     switch (status) {
//       case EligibilityStatus.eligible:
//         return AppColors.info;
//       case EligibilityStatus.notEligible:
//         return const Color.fromARGB(255, 131, 26, 19);
//     }
//   }

//   IconData get _icon {
//     switch (status) {
//       case EligibilityStatus.eligible:
//         return Icons.info_outline;
//       case EligibilityStatus.notEligible:
//         return Icons.warning_rounded;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 24),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: _backgroundColor,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Icon(_icon, color: _iconColor, size: 28),
//           const SizedBox(width: 12),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               spacing: 4,
//               children: [
//                 Text(
//                   status.message,
//                   style: AppTextStyles.bodyMedium.copyWith(
//                     fontWeight: FontWeight.w600,
//                     color: AppColors.black,
//                   ),
//                 ),
//                 if (status.subtitle != null)
//                   Text(
//                     status.subtitle!,
//                     style: AppTextStyles.bodySmall.copyWith(
//                       color: AppColors.greyDark,
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
