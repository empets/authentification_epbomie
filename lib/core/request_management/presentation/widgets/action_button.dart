// import 'package:flutter/material.dart';
// import 'package:ma_box_orange/core/rechargement/widgets/custom_icon.dart';

// class ActionButton extends StatelessWidget {
//   const ActionButton({
//     super.key,
//     required this.iconPath,
//     required this.label,
//     this.onTap,
//   });
//   final String iconPath;
//   final String label;
//   final VoidCallback? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(8),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         spacing: 12,
//         children: [
//           Container(
//             padding: const EdgeInsets.all(12),
//             decoration: BoxDecoration(
//               color: Colors.grey.shade200,
//               shape: BoxShape.circle,
//             ),
//             child: CustomIcon(assetPath: iconPath, size: 48),
//           ),
//           Text(
//             label,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w500,
//               color: Colors.black,
//               height: 1.3,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
