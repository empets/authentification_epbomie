// import 'package:flutter/material.dart';
// import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:formz/formz.dart';
// import 'package:grace_church/core/custome_widget/button.dart';
// import 'package:grace_church/core/custome_widget/custome_text.dart';
// import 'package:grace_church/core/custome_widget/form_filed.dart';
// import 'package:grace_church/core/custome_widget/navigate.dart';
// import 'package:grace_church/core/extension/custome_extension.dart';
// import 'package:grace_church/core/push_notification/push_notification.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/entities/response/cellule_response.dart';
// import 'package:grace_church/feature/home/overview.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/event/rapport_cellule_event.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/form_suggestion_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/state/rapport_cellule_state.dart';

// class FormOuvrierSpritualLive extends StatefulWidget {
//   const FormOuvrierSpritualLive({super.key, required this.id});
//   final String id;

//   @override
//   State<FormOuvrierSpritualLive> createState() =>
//       _FormOuvrierSpritualLiveDataState();
// }

// class _FormOuvrierSpritualLiveDataState extends State<FormOuvrierSpritualLive> {
//   void updateNombre(RequestSectionForm RequestSection, int value) {
//     setState(() {
//       RequestSection.nombre = value;

//       RequestSection.rows = List.generate(
//         value,
//         (index) => RequestSection.rows.length > index
//             ? RequestSection.rows[index]
//             : FormRow(),
//       );
//     });
//   }

//   void updateNombre2(RequestSectionForm RequestSection, int value) {
//     setState(() {
//       RequestSection.nombre = value;

//       RequestSection.rows = List.generate(
//         value,
//         (index) => RequestSection.rows.length > index
//             ? RequestSection.rows[index]
//             : FormRow(),
//       );
//     });
//   }

//   RequestSectionForm RequestSection = RequestSectionForm(
//     nombre: 1,
//     rows: [FormRow()],
//   );

//   RequestSectionForm RequestSection2 = RequestSectionForm(
//     nombre: 1,
//     rows: [FormRow()],
//   );

//   void _updateDisciple2({
//     required BuildContext context,
//     required int index,
//     required RapportCelluleRequestSuggestionState state,
//     String? temoignage,
//     String? probleme,
//     String? suggestions,
//   }) {
//     final bloc = context.read<FormSuggestionBloc>();
//     final list = List<RapportSuggestion>.from(state.suggestions);

//     // Étend la liste si nécessaire
//     if (list.length <= index) {
//       list.addAll(
//         List.generate(
//           index - list.length + 1,
//           (_) =>
//               RapportSuggestion(temoignage: '', suggestions: '', probleme: ''),
//         ),
//       );
//     }

//     list[index] = list[index].copyWith(
//       temoignage: temoignage ?? list[index].temoignage,
//       suggestions: suggestions ?? list[index].suggestions,
//       probleme: probleme ?? list[index].probleme,
//     );

//     bloc.add(RapportCelluleRequestSuggestionEvent.changeDisciple(list));
//   }

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<
//       FormSuggestionBloc,
//       RapportCelluleRequestSuggestionState
//     >(
//       listener: (context, state) {
//         if (state.status.isSuccess) {
//           PushNotification().showNotification(
//             id: 1,
//             title: 'Rapport Cellule',
//             body: 'Rapport Cellule envoyé avec succès',
//           );
//           Navigator.push(context, fadeRoute(const OverviewScreen()));
//         }
//       },
//       child: Scaffold(
//         backgroundColor: Colors.grey.shade50,
//         body: Container(
//           padding: EdgeInsets.all(16.w),

//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(height: 30.h),
//                 SizedBox(height: 3.h),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: Container(
//                         padding: EdgeInsets.only(
//                           right: 10.w,
//                           top: 4.h,
//                           bottom: 5.h,
//                         ),
//                         child: Icon(
//                           Icons.arrow_back,
//                           color: context.appColor.primaryGrayDark,
//                         ),
//                       ),
//                     ),
//                     CustomeText(
//                       text: 'Rapport Cellule ',
//                       style: context.appTypographie.subtitle.copyWith(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w800,
//                       ),
//                     ),
//                     SizedBox(width: 0),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: context.appColor.primaryLightBlue,
//                         borderRadius: BorderRadius.circular(50.r),
//                       ),
//                       child: IconButton(
//                         onPressed: () {
//                           Navigator.of(context).pushAndRemoveUntil(
//                             fadeRoute(OverviewScreen()),
//                             (route) => false,
//                           );
//                         },
//                         icon: Icon(Icons.home_work_rounded),
//                       ),
//                     ),
//                   ],
//                 ),

//                 Container(
//                   margin: EdgeInsets.symmetric(vertical: 5.h),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CustomeText(
//                         text: 'Etape 4 sur 4',
//                         style: context.appTypographie.small.copyWith(
//                           color: context.appColor.primaryBlue,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12.sp,
//                         ),
//                       ),

//                       CustomeText(
//                         text: '100% Complété',
//                         style: context.appTypographie.small.copyWith(
//                           color: context.appColor.primaryGray500,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12.sp,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 Container(
//                   margin: EdgeInsets.only(top: 4.h, bottom: 18.h),
//                   child: FAProgressBar(
//                     size: 6.h,
//                     currentValue: 100,
//                     displayTextStyle: context.appTypographie.small.copyWith(
//                       fontSize: 0.h,
//                     ),
//                     displayText: '%',
//                     progressColor: context.appColor.primaryBlue,
//                     backgroundColor: context.appColor.primaryLightBlue,
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(bottom: 9.h),
//                       padding: EdgeInsets.all(9.r),
//                       decoration: BoxDecoration(
//                         color: context.appColor.primaryLightBlue,
//                         borderRadius: BorderRadius.circular(8.r),
//                       ),
//                       child: Icon(
//                         Icons.lightbulb_outline,
//                         color: context.appColor.primaryBlue,
//                       ),
//                     ),
//                     SizedBox(width: 20.w),

//                     CustomeText(
//                       text: 'Suggestion',
//                       style: context.appTypographie.subtitle.copyWith(
//                         fontSize: 18.h,
//                         color: context.appColor.primaryGrayDark,
//                         fontWeight: FontWeight.w800,
//                       ),
//                     ),
//                   ],
//                 ),
//                 CustomeText(
//                   text:
//                       "Veuillez renseigner vos suggestions pour le bon deroulement de la cellule.",
//                   style: context.appTypographie.small.copyWith(
//                     fontSize: 12.sp,
//                     color: context.appColor.primaryGray500,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(height: 0.02.sh),

//                 BlocBuilder<
//                   FormSuggestionBloc,
//                   RapportCelluleRequestSuggestionState
//                 >(
//                   builder: (context, state) {
//                     return state.status.isInProgress
//                         ? Column(
//                             children: [
//                               SizedBox(height: 0.2.sh),
//                               Center(
//                                 child: CircularProgressIndicator(
//                                   backgroundColor:
//                                       context.appColor.primaryLightBlue,
//                                   valueColor: AlwaysStoppedAnimation<Color>(
//                                     context.appColor.primaryBlue,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           )
//                         : Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Icon(
//                                     Icons.person,
//                                     color: context.appColor.primaryDarkBlue,
//                                   ),
//                                   SizedBox(width: 8.w),
//                                   CustomeText(
//                                     text: "Section Ouvrier ",
//                                     style: context.appTypographie.body.copyWith(
//                                       fontSize: 13.sp,
//                                       color: context.appColor.primaryGrayDark,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                 ],
//                               ),

//                               BlocBuilder<
//                                 FormSuggestionBloc,
//                                 RapportCelluleRequestSuggestionState
//                               >(
//                                 builder: (context, state) {
//                                   return Column(
//                                     children: [
//                                       SizedBox(height: 10.h),
//                                       TextField(
//                                         keyboardType: TextInputType.number,
//                                         decoration: InputDecoration(
//                                           labelText:
//                                               "Entrer le nombre de visite faite aux membres",
//                                           labelStyle: context
//                                               .appTypographie
//                                               .body
//                                               .copyWith(
//                                                 fontSize: 12.sp,
//                                                 fontWeight: FontWeight.bold,
//                                               ),
//                                         ),
//                                         onChanged: (value) {
//                                           final number =
//                                               int.tryParse(value) ?? 1;
//                                           updateNombre2(
//                                             RequestSection2,
//                                             number,
//                                           );
//                                         },
//                                       ),
//                                       Column(
//                                         children: List.generate(
//                                           RequestSection2.rows.length,
//                                           (index) {
//                                             final row =
//                                                 RequestSection2.rows[index];
//                                             return Card(
//                                               color: Colors.white,
//                                               child: Container(
//                                                 padding: EdgeInsets.symmetric(
//                                                   horizontal: 16.w,
//                                                   vertical: 12.h,
//                                                 ),
//                                                 child: Column(
//                                                   children: [
//                                                     Text(
//                                                       "Suggestion ${index + 1}",
//                                                       style: context
//                                                           .appTypographie
//                                                           .body
//                                                           .copyWith(
//                                                             fontWeight:
//                                                                 FontWeight.bold,
//                                                           ),
//                                                     ),

//                                                     TextField(
//                                                       maxLines: 3,
//                                                       readOnly: state
//                                                           .status
//                                                           .isInProgress,
//                                                       decoration: InputDecoration(
//                                                         labelText:
//                                                             "Témoignages-Evènements-Dons-Aides",
//                                                       ),
//                                                       onChanged: (val) {
//                                                         row.nom = val;
//                                                         _updateDisciple2(
//                                                           context: context,
//                                                           index: index,
//                                                           state: state,
//                                                           temoignage: row.nom,
//                                                         );
//                                                       },
//                                                     ),

//                                                     TextField(
//                                                       maxLines: 3,
//                                                       readOnly: state
//                                                           .status
//                                                           .isInProgress,
//                                                       decoration:
//                                                           InputDecoration(
//                                                             labelText:
//                                                                 "Suggestions",
//                                                           ),
//                                                       onChanged: (val) {
//                                                         row.probleme = val;
//                                                         _updateDisciple2(
//                                                           context: context,
//                                                           index: index,
//                                                           state: state,
//                                                           probleme:
//                                                               row.probleme,
//                                                         );
//                                                       },
//                                                     ),

//                                                     TextField(
//                                                       readOnly: state
//                                                           .status
//                                                           .isInProgress,
//                                                       maxLines: 3,
//                                                       decoration: InputDecoration(
//                                                         labelText:
//                                                             "Problème personnel del’ouvrier",
//                                                       ),
//                                                       onChanged: (val) {
//                                                         row.recommandation =
//                                                             val;
//                                                         _updateDisciple2(
//                                                           context: context,
//                                                           index: index,
//                                                           state: state,
//                                                           suggestions: row
//                                                               .recommandation,
//                                                         );
//                                                       },
//                                                     ),

//                                                     SizedBox(height: 16),
//                                                   ],
//                                                 ),
//                                               ),
//                                             );
//                                           },
//                                         ),
//                                       ),
//                                     ],
//                                   );
//                                 },
//                               ),
//                               SizedBox(height: 16.h),

//                               BlocBuilder<
//                                 FormSuggestionBloc,
//                                 RapportCelluleRequestSuggestionState
//                               >(
//                                 builder: (context, state) {
//                                   return ProductionFormCustomer(
//                                     textInputType: TextInputType.text,
//                                     isColorBlue:
//                                         state.resumerPredication.isValid
//                                         ? true
//                                         : false,
//                                     readOnly: state.status.isInProgress,
//                                     inputLabel:
//                                         "Message partager lors de la cellule",
//                                     textLabel:
//                                         "Renseigner les projets et autres faits",
//                                     errorText:
//                                         state.resumerPredication.isPure ||
//                                             state.resumerPredication.isValid
//                                         ? null
//                                         : '',
//                                     msgError: 'Veuillez renseigner ce champ',
//                                     prefixIcon: Icon(
//                                       Icons.book,
//                                       color: context.appColor.primaryBlue,
//                                     ),
//                                     maxLines: 3,
//                                     minLines: 2,
//                                     onChanged: (value) {
//                                       context.read<FormSuggestionBloc>().add(
//                                         RapportCelluleRequestSuggestionEvent.changeResumerPredication(
//                                           value,
//                                         ),
//                                       );
//                                     },
//                                   );
//                                 },
//                               ),

//                               SizedBox(height: 16.h),

//                               BlocBuilder<
//                                 FormSuggestionBloc,
//                                 RapportCelluleRequestSuggestionState
//                               >(
//                                 builder: (context, state) {
//                                   return ProductionFormCustomer(
//                                     textInputType: TextInputType.text,
//                                     isColorBlue: state.faisAssignaler.isValid
//                                         ? true
//                                         : false,
//                                     readOnly: state.status.isInProgress,
//                                     inputLabel:
//                                         "Projet et Autre faits a signaler",
//                                     textLabel:
//                                         "Renseigner les projets et autres faits",
//                                     errorText:
//                                         state.faisAssignaler.isPure ||
//                                             state.faisAssignaler.isValid
//                                         ? null
//                                         : '',
//                                     msgError: 'Veuillez renseigner ce champ',
//                                     prefixIcon: Icon(
//                                       Icons.edit,
//                                       color: context.appColor.primaryBlue,
//                                     ),
//                                     maxLines: 3,
//                                     minLines: 2,
//                                     onChanged: (value) {
//                                       context.read<FormSuggestionBloc>().add(
//                                         RapportCelluleRequestSuggestionEvent.faisAssignaler(
//                                           value,
//                                         ),
//                                       );
//                                     },
//                                   );
//                                 },
//                               ),

//                               SizedBox(height: 16.h),

//                               BlocBuilder<
//                                 FormSuggestionBloc,
//                                 RapportCelluleRequestSuggestionState
//                               >(
//                                 builder: (context, state) {
//                                   return ProductionFormCustomer(
//                                     textInputType: TextInputType.text,
//                                     isColorBlue:
//                                         state.ouvrierSpritualLive.isValid
//                                         ? true
//                                         : false,
//                                     readOnly: state.status.isInProgress,
//                                     inputLabel:
//                                         "Etat spirituel de l'eglise de maison",
//                                     textLabel: "Renseigner l'état spirituel",
//                                     errorText:
//                                         state.ouvrierSpritualLive.isPure ||
//                                             state.ouvrierSpritualLive.isValid
//                                         ? null
//                                         : '',
//                                     msgError: 'Veuillez renseigner ce champ',
//                                     prefixIcon: Icon(
//                                       Icons.auto_awesome_rounded,
//                                       color: context.appColor.primaryBlue,
//                                     ),
//                                     maxLines: 3,
//                                     minLines: 2,
//                                     onChanged: (value) {
//                                       context.read<FormSuggestionBloc>().add(
//                                         RapportCelluleRequestSuggestionEvent.etatsSprituelOuvrier(
//                                           value,
//                                         ),
//                                       );
//                                     },
//                                   );
//                                 },
//                               ),

//                               BlocBuilder<
//                                 FormSuggestionBloc,
//                                 RapportCelluleRequestSuggestionState
//                               >(
//                                 builder: (context, state) {
//                                   return Container(
//                                     margin: EdgeInsets.symmetric(
//                                       vertical: 20.h,
//                                     ),
//                                     child: PrimaryButton(
//                                       label: 'Confirmer',
//                                       colorText: context.appColor.primaryWhite,
//                                       isLoading: state.status.isInProgress,
//                                       onPressed:
//                                           state.status.isInProgress ||
//                                               !state.ouvrierSpritualLive.isValid
//                                           ? null
//                                           : () {
//                                               context
//                                                   .read<FormSuggestionBloc>()
//                                                   .add(
//                                                     RapportCelluleRequestSuggestionEvent.updateSectionId(
//                                                       widget.id,
//                                                     ),
//                                                   );
//                                               context
//                                                   .read<FormSuggestionBloc>()
//                                                   .add(
//                                                     RapportCelluleRequestSuggestionEvent.submit(),
//                                                   );
//                                             },
//                                     ),
//                                   );
//                                 },
//                               ),

//                               SizedBox(height: 30.h),
//                             ],
//                           );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class FormRow {
//   String nom;
//   String probleme;
//   String recommandation;

//   FormRow({this.nom = '', this.probleme = '', this.recommandation = ''});
// }

// class RequestSectionForm {
//   int nombre;
//   List<FormRow> rows;

//   RequestSectionForm({this.nombre = 1, required this.rows});
// }
