// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';

// import 'package:grace_church/core/alert/app_alerte.dart';
// import 'package:grace_church/core/bloc_state/bloc_state.dart';
// import 'package:grace_church/core/custome_widget/button.dart';
// import 'package:grace_church/core/custome_widget/navigate.dart';
// import 'package:grace_church/core/empty_screen/empty_data_screen.dart';
// import 'package:grace_church/core/extension/custome_extension.dart';
// import 'package:grace_church/core/extension/extention.dart';
// import 'package:grace_church/core/injection/injection_container.dart';
// import 'package:grace_church/core/navigator_widget/custome_app_bar.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/entities/response/cellule_response.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/get_list_secteur.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/get_list_zone.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/get_rapport_cellule_usercase.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/rapport_cellule_admine_usercase.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/rapport_cellule_stat_usercase.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/rapport_cellule_state_usercase.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/rapport_cellule_suggestion_usercase.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/event/cellule_event.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/get_responsable_secteur.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/get_responsable_zone.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/event/rapport_cellule_event.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/form_activite_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/form_administraction_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/form_sassistance_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/form_suggestion_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/get_rapport_cellule_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/page/cellule/rapport_cellule_pdf_view.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/page/cellule_form/form_activite.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/page/cellule_form/form_assistance.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/page/cellule_form/form_ouvrier_spritual_live.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/page/cellule_form/from_administration.dart';
// import 'package:grace_church/feature/home/domaine/entities/response/home_response.dart';
// import 'package:grace_church/feature/home/page/bloc/app_launcher/app_launcher_bloc.dart';
// import 'package:grace_church/gen/assets.gen.dart';

// class HistoryRapportView extends StatefulWidget {
//   HistoryRapportView({super.key, required this.profileId});
//   final String profileId;

//   @override
//   State<HistoryRapportView> createState() => _HistoryRapportViewState();
// }

// class _HistoryRapportViewState extends State<HistoryRapportView> {
//   /// Methode : Trier les rapports par date de soumission
//   void sortRapports(List<RapportCelluleResponse> rapportList) {
//     if (rapportList.last.formAdministrationIsSubmit.toLowerCase() == 'true') {
//       return rapportList.sort(
//         (a, b) => b.formAdministrationSubmitDate.compareTo(
//           a.formAdministrationSubmitDate,
//         ),
//       );
//     } else if (rapportList.last.formAssistanceIsSubmit.toLowerCase() ==
//         'true') {
//       return rapportList.sort(
//         (a, b) =>
//             b.formAssistanceSubmitDate.compareTo(a.formAssistanceSubmitDate),
//       );
//     } else if (rapportList.last.formActivityIsSubmit.toLowerCase() == 'true') {
//       return rapportList.sort(
//         (a, b) => b.formActivitySubmitDate.compareTo(a.formActivitySubmitDate),
//       );
//     } else if (rapportList.last.formSuggestionIsSubmit.toLowerCase() ==
//         'true') {
//       return rapportList.sort(
//         (a, b) =>
//             b.formSuggestionSubmitDate.compareTo(a.formSuggestionSubmitDate),
//       );
//     }
//   }

//   DateTime? selectedDate;

//   /// ---------------------------------------------------------------------------------------------------------------------------------------------
//   /// Methode: Pile des vues du formulaire de rapport
//   /// Parameters:  - state: ProfileResponse - rapportCellule: List<RapportCelluleResponse>
//   /// retour : Widget
//   /// context : elle permet de déterminer quel formulaire de rapport afficher en fonction du tag et du statut de soumission de chaque formulaire
//   Widget buildFormRapport({
//     required ProfileResponse state,
//     required List<RapportCelluleResponse> rapportCellule,
//   }) {
//     if (rapportCellule.isEmpty ||
//         rapportCellule.first.tag.contains("terminer")) {
//       return EditingCelluleRaport(profile: state);
//     } else {
//       if (rapportCellule.first.formAdministrationIsSubmit == 'false') {
//         return EditingCelluleRaport(profile: state);
//       } else if (rapportCellule.first.formAssistanceIsSubmit == "false") {
//         return FormStatistic(id: rapportCellule.first.id);
//       } else if (rapportCellule.first.formActivityIsSubmit == 'false') {
//         return FormActivite(id: rapportCellule.first.id);
//       } else if (rapportCellule.first.formSuggestionIsSubmit == 'false') {
//         return FormOuvrierSpritualLive(id: rapportCellule.first.id);
//       } else {
//         return SizedBox();
//       }
//     }
//   }

//   /// --------------------------------------------------------------------------------
//   /// Methode: Grouper les rapports par paires depuis le plus récent
//   /// Parameters:  - items: List<RapportCelluleResponse>
//   /// retour : List<List<RapportCelluleResponse>>
//   /// context : elle permet de grouper les rapports par paires depuis le plus récent
//   List<List<RapportCelluleResponse>> groupByPairsFromMostRecent(
//     List<RapportCelluleResponse> items,
//   ) {
//     final sorted = [...items]
//       ..sort(
//         (a, b) => a.jourCellule.compareTo(b.jourCellule),
//       ); // ← a et b inversés

//     List<List<RapportCelluleResponse>> pairs = [];
//     for (int i = 0; i < sorted.length; i += 2) {
//       if (i + 1 < sorted.length) {
//         pairs.add([sorted[i], sorted[i + 1]]);
//       } else {
//         pairs.add([sorted[i]]);
//       }
//     }

//     return pairs;
//   }

//   int currentChoix = 0;

//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, dynamic>> itemStatutRapport = [
//       {
//         'tag': 'Tous',
//         'color': context.appColor.primaryBlue.withValues(alpha: 0.5),
//         'value': 'all',
//       },
//       {
//         'tag': 'Terminé',
//         'color': context.appColor.primarySuccess.withValues(alpha: 0.5),
//         'value': 'terminer',
//       },
//       {
//         'tag': 'En cours',
//         'color': context.appColor.primaryWarning.withValues(alpha: 0.3),
//         'value': 'en_cours',
//       },
//       {'tag': 'date', 'color': Colors.grey.shade300, 'value': 'date'},
//     ];

//     final contrat = context
//         .select<ConnexionImpliciteBloc, ApiState<ProfileResponse>?>(
//           (bloc) => switch (bloc.state) {
//             SuccessState<ProfileResponse>() => bloc.state,
//             _ => null,
//           },
//         );

//     return BlocProvider(
//       create: (context) =>
//           GetRapportCelluleBloc(
//             getRapportCelluleUsercase: getIt<GetRapportCelluleUsercase>(),
//           )..add(
//             FecthDataEvent.fetchDataById(
//               responsableCelluleId: widget.profileId,
//             ),
//           ),
//       child: Scaffold(
//         backgroundColor: Colors.grey.shade50,
//         appBar: AppBar(
//           backgroundColor: Colors.grey.shade50,
//           leading: IconButton(
//             icon: SvgPicture.asset(assets.images.arrowBack.path),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//           title: CustomeHeaderTitle(title: "Historique des rapports"),
//         ),
//         body: Container(
//           child: Column(
//             children: [
//               /// Filter section
//               Container(
//                 padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 16.w),
//                 child: Row(
//                   children: [
//                     // Text(
//                     //   "Filtrer",
//                     //   style: context.appTypographie.body.copyWith(
//                     //     fontSize: 12.sp,
//                     //     fontWeight: FontWeight.w900,
//                     //     color: Colors.black,
//                     //   ),
//                     // ),
//                     // SizedBox(width: 8.w),
//                     ...List.generate(itemStatutRapport.length, (index) {
//                       final item = itemStatutRapport[index];
//                       return BlocBuilder<
//                         GetRapportCelluleBloc,
//                         ApiState<List<RapportCelluleResponse>>
//                       >(
//                         builder: (context, state) {
//                           return GestureDetector(
//                             onTap: () async {
//                               setState(() {
//                                 currentChoix = index == itemStatutRapport.length
//                                     ? 0
//                                     : index;
//                               });

//                               if (index == 0) {
//                                 context.read<GetRapportCelluleBloc>().add(
//                                   FecthDataEvent.fetchDataById(
//                                     responsableCelluleId: widget.profileId,
//                                   ),
//                                 );
//                               }
//                               if (index == 1 || index == 2) {
//                                 context.read<GetRapportCelluleBloc>().add(
//                                   FecthDataEvent.fetchRapportByTag(
//                                     tag: item['value'],
//                                     responsableCelluleId: widget.profileId,
//                                   ),
//                                 );
//                               }

//                               if (index == 3) {
//                                 final DateTime? picked = await showDatePicker(
//                                   context: context,
//                                   //  initialDate: DateTime(2012),
//                                   firstDate: DateTime(1900),
//                                   lastDate: DateTime.now(), // pas de futur
//                                   selectableDayPredicate: (day) {
//                                     final now = DateTime.now();

//                                     // 🔥 âge minimum 14 ans
//                                     final maxDate = DateTime(
//                                       now.year - 14,
//                                       now.month,
//                                       now.day,
//                                     );

//                                     if (day.isBefore(maxDate)) {
//                                       return false;
//                                     }

//                                     return true;
//                                   },

//                                   /// 🎨 Custom Theme
//                                   builder: (context, child) {
//                                     return Theme(
//                                       data: Theme.of(context).copyWith(
//                                         colorScheme: const ColorScheme.light(
//                                           primary: Colors
//                                               .blue, // 🔵 header + selected date
//                                           onPrimary:
//                                               Colors.white, // texte sur header
//                                           onSurface:
//                                               Colors.black, // texte normal
//                                         ),
//                                         textButtonTheme: TextButtonThemeData(
//                                           style: TextButton.styleFrom(
//                                             foregroundColor: Colors
//                                                 .blue, // boutons OK / CANCEL
//                                           ),
//                                         ),
//                                       ),
//                                       child: child!,
//                                     );
//                                   },
//                                 );

//                                 if (picked != null) {
//                                   setState(() {
//                                     selectedDate = picked;
//                                   });
//                                   context.read<GetRapportCelluleBloc>().add(
//                                     FecthDataEvent.fetchRapportByDate(
//                                       date:
//                                           '${selectedDate?.toString().substring(0, 10)}',
//                                       responsableCelluleId: widget.profileId,
//                                     ),
//                                   );
//                                 }
//                               }
//                             },
//                             child: Container(
//                               margin: EdgeInsets.only(right: 8.w),
//                               padding: EdgeInsets.symmetric(
//                                 horizontal: 16.w,
//                                 vertical: 5.h,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: index != currentChoix
//                                     ? Colors.transparent
//                                     : item['color'] as Color,

//                                 border: Border.all(
//                                   color: item['color'] as Color,
//                                 ),
//                                 borderRadius: BorderRadius.circular(7.r),
//                               ),
//                               child: Text(
//                                 item['tag'],
//                                 style: context.appTypographie.body.copyWith(
//                                   fontSize: 12.sp,
//                                   fontWeight: FontWeight.w900,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                       );
//                     }),
//                   ],
//                 ),
//               ),

//               BlocBuilder<
//                 GetRapportCelluleBloc,
//                 ApiState<List<RapportCelluleResponse>>
//               >(
//                 builder: (context, rapportListState) {
//                   if (rapportListState
//                       is LoadState<List<RapportCelluleResponse>>) {
//                     return Container(
//                       padding: EdgeInsets.symmetric(horizontal: 16.w),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SizedBox(height: 0.36.sh),
//                           Center(
//                             child: CircularProgressIndicator.adaptive(
//                               valueColor: AlwaysStoppedAnimation<Color>(
//                                 context.appColor.primaryBlue,
//                               ),
//                               backgroundColor: context.appColor.primaryGray500
//                                   .withValues(alpha: 0.3),
//                             ),
//                           ),
//                           SizedBox(height: 19.h),
//                           Text(
//                             "Recupération des données en cours...",
//                             style: context.appTypographie.body.copyWith(
//                               fontSize: 12.sp,
//                               color: context.appColor.primaryBlue,
//                               // color: Colors.grey.shade200
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   } else if (rapportListState
//                       is SuccessState<List<RapportCelluleResponse>>) {
//                     if (rapportListState.data.isEmpty) {
//                       return Container(
//                         padding: EdgeInsets.symmetric(horizontal: 16.w),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             SizedBox(height: 0.16.sh),
//                             SvgPicture.asset(
//                               assets.images.rapportEmpty.path,
//                               height: 0.2.sh,
//                             ),
//                             SizedBox(height: 16.h),
//                             Center(
//                               child: Text(
//                                 "Vous n'avez aucun rapport ",
//                                 style: context.appTypographie.body.copyWith(
//                                   fontSize: 12.sp,
//                                   color: context.appColor.primaryBlue,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     }

//                     final pairs = groupByPairsFromMostRecent(
//                       rapportListState.data,
//                     );

//                     return Container(
//                       padding: EdgeInsets.symmetric(horizontal: 16.w),
//                       child: SingleChildScrollView(
//                         child: Column(
//                           children: [
//                             SizedBox(height: 16.h),

//                             ...List.generate(pairs.length, (index) {
//                               final pair =
//                                   pairs[index]; // pair = [rapport1, rapport2?]

//                               return GestureDetector(
//                                 onTap: () {
//                                   if (pair.isEmpty) return;

//                                   if (pair.length == 2) {
//                                     if (pair.every(
//                                       (rapport) =>
//                                           rapport.tag.contains("terminer"),
//                                     )) {
//                                       Navigator.push(
//                                         context,
//                                         fadeRoute(
//                                           RapportCellulePDFView(
//                                             rapportCellule: pair,
//                                           ),
//                                         ),
//                                       );
//                                     }

//                                     if (!pair.every(
//                                       (rapport) =>
//                                           rapport.tag.contains("terminer"),
//                                     )) {
//                                       AppAlert.showError(
//                                         context,
//                                         "Impossible de voir le détail du rapport veuillez le finaliser",
//                                         showOnTop: true,
//                                         editButtonIcon: Icons.edit,
//                                         showEditButton: true,
//                                         onTap: () {
//                                           Navigator.of(context).push(
//                                             fadeRoute(
//                                               MultiBlocProvider(
//                                                 providers: [
//                                                   // --------------------------------
//                                                   // EditingCelluleRaport
//                                                   // --------------------------------
//                                                   BlocProvider(
//                                                     create: (context) =>
//                                                         RapportCelluleRequestSectionAdministrationBloc(
//                                                           sendRapportCelluleStepAdministrationUsercase:
//                                                               getIt<
//                                                                 SendRapportCelluleStepAdministrationUsercase
//                                                               >(),
//                                                         ),
//                                                   ),
//                                                   BlocProvider(
//                                                     create: (context) =>
//                                                         GetSecteurBloc(
//                                                           getListSecteurUsercase:
//                                                               getIt<
//                                                                 GetListSecteurUsercase
//                                                               >(),
//                                                         )..add(
//                                                           CelluleEvent.fetch(),
//                                                         ),
//                                                   ),
//                                                   BlocProvider(
//                                                     create: (context) =>
//                                                         GetZoneBloc(
//                                                           getListZoneUsercase:
//                                                               getIt<
//                                                                 GetListZoneUsercase
//                                                               >(),
//                                                         )..add(
//                                                           CelluleEvent.fetch(),
//                                                         ),
//                                                   ),

//                                                   // --------------------------------
//                                                   // FormStatistic
//                                                   // --------------------------------
//                                                   BlocProvider(
//                                                     create: (context) =>
//                                                         RapportCelluleSectionAssistanceBloc(
//                                                           sendRapportCelluleStepStatUsercase:
//                                                               getIt<
//                                                                 SendRapportCelluleStepStatUsercase
//                                                               >(),
//                                                         ),
//                                                   ),

//                                                   // --------------------------------
//                                                   // FormActivite
//                                                   // --------------------------------
//                                                   BlocProvider(
//                                                     create: (context) =>
//                                                         FormActiviteBloc(
//                                                           sendRapportCelluleStepAssistantUsercase:
//                                                               getIt<
//                                                                 SendRapportCelluleStepAssistantUsercase
//                                                               >(),
//                                                         ),
//                                                   ),
//                                                   // --------------------------------
//                                                   // FormOuvrierSpritualLive
//                                                   // --------------------------------
//                                                   BlocProvider(
//                                                     create: (context) =>
//                                                         FormSuggestionBloc(
//                                                           sendRapportCelluleStepSuggestionUsercase:
//                                                               getIt<
//                                                                 SendRapportCelluleStepSuggestionUsercase
//                                                               >(),
//                                                         ),
//                                                   ),
//                                                 ],
//                                                 child: buildFormRapport(
//                                                   state:
//                                                       (contrat
//                                                               as SuccessState<
//                                                                 ProfileResponse
//                                                               >)
//                                                           .data,
//                                                   rapportCellule: pair,
//                                                 ),
//                                               ),
//                                             ),
//                                           );
//                                         },
//                                       );
//                                     }
//                                   } else {
//                                     return AppAlert.showError(
//                                       context,
//                                       "Vous serez en mesure de voir le détail du rapport une fois celui-ci une fois que vous aurez fini de remplir celui de cette semaine!",
//                                       showOnTop: true,
//                                     );
//                                   }
//                                 },
//                                 child: Stack(
//                                   children: [
//                                     Container(
//                                       margin: EdgeInsets.only(bottom: 8.h),
//                                       padding: EdgeInsets.symmetric(
//                                         vertical: 12.h,
//                                         horizontal: 5.w,
//                                       ),
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(
//                                           8.r,
//                                         ),
//                                         border: Border.all(
//                                           color: Colors.grey.shade200,
//                                         ),
//                                       ),
//                                       child: Column(
//                                         children: [
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Text(
//                                                 "Synthèse de rapport ${pair.every((rapport) => rapport.tag.contains("terminer")) ? "terminer" : "en cours"}",
//                                                 style: context
//                                                     .appTypographie
//                                                     .body
//                                                     .copyWith(
//                                                       fontSize: 13.sp,
//                                                       fontWeight:
//                                                           FontWeight.w600,
//                                                     ),
//                                               ),
//                                               Row(
//                                                 children: [
//                                                   Container(
//                                                     padding: EdgeInsets.all(
//                                                       8.w,
//                                                     ),
//                                                     decoration: BoxDecoration(
//                                                       color:
//                                                           isTagTextColor(
//                                                             context: context,
//                                                             tag:
//                                                                 pair.every(
//                                                                   (
//                                                                     rapport,
//                                                                   ) => rapport
//                                                                       .tag
//                                                                       .contains(
//                                                                         "terminer",
//                                                                       ),
//                                                                 )
//                                                                 ? "terminer"
//                                                                 : "en_cours",
//                                                           )
//                                                           ? context
//                                                                 .appColor
//                                                                 .primarySuccess
//                                                                 .withValues(
//                                                                   alpha: 0.5,
//                                                                 )
//                                                           : context
//                                                                 .appColor
//                                                                 .primaryWarning
//                                                                 .withValues(
//                                                                   alpha: 0.5,
//                                                                 ),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                             8.r,
//                                                           ),
//                                                     ),
//                                                     child:
//                                                         pair.every(
//                                                           (rapport) => rapport
//                                                               .tag
//                                                               .contains(
//                                                                 "terminer",
//                                                               ),
//                                                         )
//                                                         ? Icon(
//                                                             Icons
//                                                                 .arrow_forward_ios_rounded,
//                                                             size: 12,
//                                                             color: Colors.white,
//                                                           )
//                                                         : Icon(
//                                                             Icons.lock,
//                                                             size: 12,
//                                                             color: Colors.white,
//                                                           ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                           SizedBox(height: 5.h),
//                                           Stack(
//                                             children: [
//                                               Row(
//                                                 children: List.generate(2, (i) {
//                                                   final rapport =
//                                                       i < pair.length
//                                                       ? pair[i]
//                                                       : null;

//                                                   // Case vide si pas de 2ème élément
//                                                   if (rapport == null) {
//                                                     return Container(
//                                                       margin: EdgeInsets.only(
//                                                         left: 3.w,
//                                                       ),
//                                                       padding:
//                                                           EdgeInsets.symmetric(
//                                                             vertical: 17.h,
//                                                             horizontal: 9.w,
//                                                           ),
//                                                       decoration: BoxDecoration(
//                                                         color: Colors
//                                                             .grey
//                                                             .shade100,
//                                                         borderRadius:
//                                                             BorderRadius.circular(
//                                                               8.r,
//                                                             ),
//                                                       ),
//                                                       child: Column(
//                                                         crossAxisAlignment:
//                                                             CrossAxisAlignment
//                                                                 .start,
//                                                         children: [
//                                                           Text(
//                                                             "Aucun rapport",
//                                                             style:
//                                                                 GoogleFonts.roboto(
//                                                                   fontSize:
//                                                                       11.sp,
//                                                                   color: Colors
//                                                                       .grey
//                                                                       .shade600,
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .w700,
//                                                                 ),
//                                                           ),
//                                                           Text(
//                                                             "Le rapport à venir se trouvera ici",
//                                                             style:
//                                                                 GoogleFonts.roboto(
//                                                                   fontSize:
//                                                                       10.sp,
//                                                                   color: Colors
//                                                                       .grey
//                                                                       .shade600,
//                                                                 ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     );
//                                                   }

//                                                   return Expanded(
//                                                     child: Stack(
//                                                       children: [
//                                                         Container(
//                                                           padding:
//                                                               EdgeInsets.symmetric(
//                                                                 vertical: 12.h,
//                                                                 horizontal:
//                                                                     16.w,
//                                                               ),
//                                                           margin:
//                                                               EdgeInsets.only(),
//                                                           decoration: BoxDecoration(
//                                                             color: Colors.white,
//                                                             borderRadius:
//                                                                 BorderRadius.circular(
//                                                                   8.r,
//                                                                 ),
//                                                             border: Border.all(
//                                                               color: Colors
//                                                                   .grey
//                                                                   .shade200,
//                                                             ),
//                                                           ),
//                                                           child: Column(
//                                                             crossAxisAlignment:
//                                                                 CrossAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Text(
//                                                                 rapport.tag.contains(
//                                                                       "terminer",
//                                                                     )
//                                                                     ? "Fiche du ${formatDateOnly(rapport.jourCellule)}"
//                                                                     : "Fiche ",
//                                                                 style: context
//                                                                     .appTypographie
//                                                                     .body
//                                                                     .copyWith(
//                                                                       fontSize:
//                                                                           12.sp,
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .w900,
//                                                                       color: context
//                                                                           .appColor
//                                                                           .primaryGray700,
//                                                                     ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 4.h,
//                                                               ),

//                                                               if (rapport.tag
//                                                                   .contains(
//                                                                     "terminer",
//                                                                   )) ...[
//                                                                 Text(
//                                                                   "Statut: terminé",
//                                                                   style: context
//                                                                       .appTypographie
//                                                                       .body
//                                                                       .copyWith(
//                                                                         fontSize:
//                                                                             12.sp,
//                                                                         color: context
//                                                                             .appColor
//                                                                             .primaryGray700,
//                                                                       ),
//                                                                 ),
//                                                               ] else ...[
//                                                                 Text(
//                                                                   "Statut: en cours",
//                                                                   style: context
//                                                                       .appTypographie
//                                                                       .body
//                                                                       .copyWith(
//                                                                         fontSize:
//                                                                             12.sp,
//                                                                         color: context
//                                                                             .appColor
//                                                                             .primaryGray700,
//                                                                       ),
//                                                                 ),
//                                                               ],
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   );
//                                                 }),
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ),

//                                     if (pair.length != 2 &&
//                                         pair.every(
//                                           (rapport) =>
//                                               rapport.tag.contains("terminer"),
//                                         )) ...[
//                                       Positioned(
//                                         bottom: 0,
//                                         top: 0,
//                                         right: 0,
//                                         left: 0,
//                                         child: Container(
//                                           margin: EdgeInsets.symmetric(
//                                             vertical: 7.h,
//                                           ),
//                                           decoration: BoxDecoration(
//                                             color: context.appColor.primaryWhite
//                                                 .withValues(alpha: 0.4),
//                                             borderRadius: BorderRadius.circular(
//                                               8.r,
//                                             ),
//                                           ),
//                                           padding: EdgeInsets.all(8.w),
//                                           child: Icon(
//                                             Icons.lock,
//                                             color: Colors.grey[600],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ],
//                                 ),
//                               );
//                             }).toList(),
//                           ],
//                         ),
//                       ),
//                     );
//                   }

//                   return EmptyDataScreen(
//                     title: 'Aucun rapport trouvé se filtre',
//                     widget:
//                         BlocBuilder<
//                           GetRapportCelluleBloc,
//                           ApiState<List<RapportCelluleResponse>>
//                         >(
//                           builder: (context, state) {
//                             return Container(
//                               margin: EdgeInsets.symmetric(horizontal: 0.17.sw),
//                               child: PrimaryButton(
//                                 label: "Réessayer",
//                                 colorText: Colors.white,
//                                 fontSize: 13.sp,
//                                 backgroundColor: context.appColor.primaryBlue,
//                                 borderRadius: 14.r,
//                                 onPressed: () {
//                                   context.read<GetRapportCelluleBloc>().add(
//                                     FecthDataEvent.fetchDataById(
//                                       responsableCelluleId: widget.profileId,
//                                     ),
//                                   );
//                                 },
//                               ),
//                             );
//                           },
//                         ),
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
