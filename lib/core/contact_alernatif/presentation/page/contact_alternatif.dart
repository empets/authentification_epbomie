// import 'dart:developer' as developer;
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_native_contact_picker/flutter_native_contact_picker.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:ma_box_orange/core/custom_widget_shared/input_textfield/custom_textfield.dart';
// import 'package:ma_box_orange/core/extention.dart';
// import 'package:ma_box_orange/core/features/shared/contact/presentation/bloc/contact_alternatif_bloc.dart';
// import 'package:ma_box_orange/core/features/shared/contact/presentation/bloc/event/contact_alternatif_event.dart';
// import 'package:ma_box_orange/core/features/shared/contact/presentation/bloc/state/contact_alternatif_state.dart';
// import 'package:ma_box_orange/core/rechargement/widgets/primary_button.dart';
// import 'package:ma_box_orange/features/auth/presentation/bloc/app_bloc/app_bloc.dart';
// import 'package:ma_box_orange/features/auth/presentation/bloc/app_bloc/states/app_state.dart';
// import 'package:ma_box_orange/features/home/domain/entities/datascontrat.dart';
// import 'package:ma_box_orange/features/home/presentation/bloc/contract/contract_state.dart';
// import 'package:ma_box_orange/features/home/presentation/bloc/contract/contrat_bloc.dart';

// class ContactAlternatif extends StatefulWidget {
//   const ContactAlternatif(
//       {super.key, required this.isLoading, required this.label});
//   final bool isLoading;
//   final String label;

//   @override
//   State<ContactAlternatif> createState() => _ContactAlternatifState();
// }

// class _ContactAlternatifState extends State<ContactAlternatif> {
//   final FlutterNativeContactPicker _contactPicker =
//       FlutterNativeContactPicker();

//   TextEditingController alternativeContact = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final contrat = context.select<ContratBloc, DatasContrat?>(
//       (bloc) {
//         final state = bloc.state;
//         return switch (state) {
//           SelectedContratState(:final item) => item,
//           _ => null,
//         };
//       },
//     );

//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 13.h),
//       padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey.shade400.withValues(alpha: 0.7)),
//         borderRadius: BorderRadius.circular(8.r),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             widget.label,
//             style: context.styles.body.copyWith(
//               fontSize: 15.sp,
//               color: const Color(0xFF1C1B1F),
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           SizedBox(height: 5.h),
//           Text(
//             "Nos équipes vous contacteront sur le numéro lié à votre contrat. Si ce numéro n'est pas approprié, indiquez-nous un contact alternatif joignable.",
//             style: context.styles.body.copyWith(
//               fontSize: 13.sp,
//               color: const Color(0xFF6D6D6D),
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//           BlocBuilder<AppBloc, AppState>(
//             builder: (context, state) {
//               return Container(
//                 margin: EdgeInsets.symmetric(vertical: 8.h),
//                 padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                       color: Colors.grey.shade400.withValues(alpha: 0.7)),
//                   borderRadius: BorderRadius.circular(8.r),
//                 ),
//                 child: Row(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.all(5.r),
//                       decoration: const BoxDecoration(
//                         color: Color(0xFFFFE5D3),
//                         shape: BoxShape.circle,
//                       ),
//                       child:
//                           const Icon(Icons.phone_outlined, color: Colors.black),
//                     ),
//                     SizedBox(width: 10.w),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Contact enregistré au contrat',
//                           style: context.styles.body.copyWith(
//                             fontSize: 9.sp,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                         Text(
//                           contrat?.telephone ?? '',
//                           style: context.styles.body.copyWith(
//                             fontSize: 16.sp,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               );
//             },
//           ),
//           BlocBuilder<ContactAlternatifBloc, ContactAlternatifState>(
//             builder: (context, state) {
//               if (state.isSelectOtherContact) {
//                 return const SizedBox.shrink();
//               }
//               return PrimaryButton(
//                 label: 'Ajouter un contact alternatif',
//                 colorText: const Color(0xFFFF7900),
//                 icon: Icons.add,
//                 iconColor: const Color(0xFFFF7900),
//                 borderSideColor: const Color(0xFFFF7900),
//                 backgroundColor: Colors.white,
//                 onPressed: () {
//                   context
//                       .read<ContactAlternatifBloc>()
//                       .add(ContactAlternatifEvent.isSelectOtherContact(true));
//                 },
//               );
//             },
//           ),
//           BlocBuilder<ContactAlternatifBloc, ContactAlternatifState>(
//             builder: (context, state) {
//               if (!state.isSelectOtherContact) {
//                 return const SizedBox.shrink();
//               }
//               return Container(
//                   margin: EdgeInsets.symmetric(vertical: 8.h),
//                   padding:
//                       EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                         color: const Color(0xFFFF7900).withValues(alpha: 0.7)),
//                     borderRadius: BorderRadius.circular(8.r),
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             'Contact alternatif joignable',
//                             style: context.styles.body.copyWith(
//                               fontSize: 15.sp,
//                               color: const Color(0xFF1C1B1F),
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                           BlocBuilder<ContactAlternatifBloc,
//                               ContactAlternatifState>(
//                             builder: (context, state) {
//                               return IconButton(
//                                   onPressed: () {
//                                     context.read<ContactAlternatifBloc>().add(
//                                         ContactAlternatifEvent
//                                             .isSelectOtherContact(false));
//                                   },
//                                   splashColor: Colors.transparent,
//                                   icon: const Icon(Icons.close,
//                                       color: Colors.black));
//                             },
//                           )
//                         ],
//                       ),
//                       SizedBox(height: 2.h),
//                       BlocBuilder<ContactAlternatifBloc,
//                           ContactAlternatifState>(
//                         builder: (context, state) {
//                           return ProductionFormCustomer(
//                             controller: alternativeContact,
//                             readOnly: widget.isLoading,
//                             letSpace: const [],
//                             textInputType: TextInputType.number,
//                             lable: '07 XX XX XX XX',
//                             textLabel: '',
//                             inputLabel: '',
//                             msgError: '',
//                             errorText: state.contactAternatif.isPure ||
//                                     state.contactAternatif.isValid
//                                 ? null
//                                 : "Numéro invalide",
//                             onChanged: (valeur) {
//                               context.read<ContactAlternatifBloc>().add(
//                                     ContactAlternatifEvent.secondContact(
//                                       alternativeContact.text,
//                                     ),
//                                   );
//                             },
//                           );
//                         },
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(top: 4.h, bottom: 8.h),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Format : 10 chiffres commençant par 01, 05 ou 07",
//                               style: context.styles.body.copyWith(
//                                 fontSize: 10.sp,
//                                 color: const Color(0xFF6D6D6D),
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           const Expanded(
//                             child: Divider(thickness: 1, color: Colors.black),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 12.w),
//                             child: Text(
//                               "ou",
//                               style: context.styles.body.copyWith(
//                                 fontSize: 10.sp,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                           ),
//                           const Expanded(
//                             child: Divider(thickness: 1, color: Colors.black),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 5.h,
//                       ),
//                       BlocBuilder<ContactAlternatifBloc,
//                           ContactAlternatifState>(
//                         builder: (context, state) {
//                           return PrimaryButton(
//                             label: 'Choisir depuis mes contacts',
//                             colorText: const Color(0xFFFF7900),
//                             borderSideColor: const Color(0xFFFF7900),
//                             backgroundColor: Colors.white,
//                             onPressed: () async {
//                               final contact =
//                                   await _contactPicker.selectContact();

//                               if (contact == null) return;
//                               developer.log(contact.toString());
//                               alternativeContact.text = extractIvorianPhone(
//                                       context: context,
//                                       value: contact.phoneNumbers.toString())
//                                   .toString();
//                               context.read<ContactAlternatifBloc>().add(
//                                     ContactAlternatifEvent.secondContact(
//                                       extractIvorianPhone(
//                                               context: context,
//                                               value: contact.phoneNumbers
//                                                   .toString())
//                                           .toString(),
//                                     ),
//                                   );
//                             },
//                           );
//                         },
//                       ),
//                     ],
//                   ));
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
