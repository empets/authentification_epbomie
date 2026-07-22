// import 'dart:developer';
// import 'package:flutter/material.dart';
// import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:formz/formz.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:grace_church/core/alert/app_alerte.dart';
// import 'package:grace_church/core/custome_widget/button.dart';
// import 'package:grace_church/core/custome_widget/custome_text.dart';
// import 'package:grace_church/core/custome_widget/form_filed.dart';
// import 'package:grace_church/core/custome_widget/navigate.dart';
// import 'package:grace_church/core/extension/custome_extension.dart';
// import 'package:grace_church/core/injection/injection_container.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/rapport_cellule_state_usercase.dart';
// import 'package:grace_church/feature/home/overview.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/event/rapport_cellule_event.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/form_activite_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/form_sassistance_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/state/rapport_cellule_state.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/page/cellule_form/form_activite.dart';

// class FormStatistic extends StatefulWidget {
//   final String id;
//   const FormStatistic({super.key, required this.id});

//   @override
//   State<FormStatistic> createState() => _FormStatisticState();
// }

// class _FormStatisticState extends State<FormStatistic> {
//   void _updateBloc({
//     required RequestItemRequestSection item,
//     required RapportCelluleRequestSectionAssistanceState state,
//     required RequestSection section,
//   }) {
//     if (section.title == "Non baptisé") {
//       if (item.name.contains("Tout-petits")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.changeNomBaptiserStatic(
//             state.nonBaptiserStatic.copyWith(toutPetit: item.count.toString()),
//           ),
//         );
//       }
//       if (item.name.contains("Juniors")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.changeNomBaptiserStatic(
//             state.nonBaptiserStatic.copyWith(juniors: item.count.toString()),
//           ),
//         );
//       }
//       if (item.name.contains("Cadets")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.changeNomBaptiserStatic(
//             state.nonBaptiserStatic.copyWith(cadets: item.count.toString()),
//           ),
//         );
//       }
//     }

//     if (section.title == "Nouveaux") {
//       if (item.name.contains("Tout-petits")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.changeNoveauBaptiser(
//             state.nouveauBaptiser.copyWith(toutPetit: item.count.toString()),
//           ),
//         );
//       }
//       if (item.name.contains("Juniors")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.changeNoveauBaptiser(
//             state.nouveauBaptiser.copyWith(juniors: item.count.toString()),
//           ),
//         );
//       }
//       if (item.name.contains("Cadets")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.changeNoveauBaptiser(
//             state.nouveauBaptiser.copyWith(cadets: item.count.toString()),
//           ),
//         );
//       }
//     }
//     if (section.title == "Invités") {
//       if (item.name.contains("Tout-petits")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.changeInviter(
//             state.inviter.copyWith(toutPetit: item.count.toString()),
//           ),
//         );
//       }
//       if (item.name.contains("Juniors")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.changeInviter(
//             state.inviter.copyWith(juniors: item.count.toString()),
//           ),
//         );
//       }
//       if (item.name.contains("Cadets")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.changeInviter(
//             state.inviter.copyWith(cadets: item.count.toString()),
//           ),
//         );
//       }
//     }
//   }

//   void _updateDetailBloc({
//     required RequestItemRequestSection item,
//     required RapportCelluleRequestSectionAssistanceState state,
//     required RequestSection section,
//   }) {
//     if (section.title == "Formation") {
//       if (item.name.contains("Nouv. En Formation DFNC")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.formationNewDFB(
//             item.count.toString(),
//           ),
//         );
//       }
//       if (item.name.contains("Nouv. Bapt. En Formation DFD")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.formationNewBaptDFD(
//             item.count.toString(),
//           ),
//         );
//       }
//       if (item.name.contains("En formation niveau 2")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.nbFormationNiveau2(
//             item.count.toString(),
//           ),
//         );
//       }
//     }

//     if (section.title == "Section visite") {
//       if (item.name.contains("Visites faites aux membres")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.visiteMenbre(
//             item.count.toString(),
//           ),
//         );
//       }
//       if (item.name.contains("Visites faites aux disciple")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.visiteDisciple(
//             item.count.toString(),
//           ),
//         );
//       }
//     }

//     if (section.title == "Section Activités") {
//       if (item.name.contains("Nbre de travailleurs")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.nbTravailleurs(
//             item.count.toString(),
//           ),
//         );
//       }
//       if (item.name.contains("Nbre d’élèves et étudiants")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.nbEleveAndEtudiants(
//             item.count.toString(),
//           ),
//         );
//       }
//     }

//     if (section.title == "Section Ouvriers") {
//       if (item.name.contains("Nbre d’ouvrier E.M")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.nbOuvrierEM(
//             item.count.toString(),
//           ),
//         );
//       }
//       if (item.name.contains("Ouv. Autre dépt dirigeant E.M")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.nbOuvrierAutreDepatementDirigeantEM(
//             item.count.toString(),
//           ),
//         );
//       }
//     }

//     if (section.title == "Autres") {
//       if (item.name.contains("Agenda de l’EM (Oui ou Non)")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.ngAgendaEM(
//             item.count.toString(),
//           ),
//         );
//       }
//       if (item.name.contains("Décisionnaires")) {
//         context.read<RapportCelluleSectionAssistanceBloc>().add(
//           RapportCelluleRequestSectionAssistanceEvent.nbDecisionnaires(
//             item.count.toString(),
//           ),
//         );
//       }
//     }
//   }

//   bool isHowDetail = false;


  
//   @override
//   void initState() {
//      context.read<RapportCelluleSectionAssistanceBloc>().add(
//       RapportCelluleRequestSectionAssistanceEvent.updateSectionId(
//         widget.id,
//       ),
//     );
//     super.initState();
//   }
  
//     @override
//   void dispose() {
  
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<
//       RapportCelluleSectionAssistanceBloc,
//       RapportCelluleRequestSectionAssistanceState
//     >(
//       listener: (context, state) {
//         if (state.status.isSuccess) {
//           log("------>${widget.id} ${state.errorMessage}");
//           Navigator.push(
//             context,
//             fadeRoute(
//               BlocProvider(
//                 create: (context) => FormActiviteBloc(
//                   sendRapportCelluleStepAssistantUsercase:
//                       getIt<SendRapportCelluleStepAssistantUsercase>(),
//                 ),
//                 child: FormActivite(
//                   id: widget.id.isNotEmpty ? widget.id : state.errorMessage,
//                 ),
//               ),
//             ),
//           );
//         }
//         if (state.status.isFailure) {
//         return  AppAlert.showError(
//             context,
//             state.errorMessage ,
//           );
//         }
//       },
//       child: Scaffold(
//         backgroundColor: Colors.grey.shade50,
//         body: Container(
//           margin: EdgeInsets.only(left: 16.w, right: 16.w, top: 50.h),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
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
//                             fadeRoute(
//                               OverviewScreen(
//                                 isFormImpliciteConnexion: true,
//                                 menberId: widget.id,
//                               ),
//                             ),
//                             (route) => false,
//                           );
//                         },
//                         icon: Icon(Icons.home_work_rounded),
//                       ),
//                     ),
//                   ],
//                 ),

//                 Container(
//                   margin: EdgeInsets.symmetric(vertical: 10.h),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CustomeText(
//                         text: 'Etape 2 sur 4',
//                         style: context.appTypographie.small.copyWith(
//                           color: context.appColor.primaryBlue,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12.sp,
//                         ),
//                       ),

//                       CustomeText(
//                         text: '45% Complété',
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
//                     currentValue: 40,
//                     displayTextStyle: context.appTypographie.small.copyWith(
//                       fontSize: 0.h,
//                     ),
//                     displayText: '%',
//                     progressColor: context.appColor.primaryBlue,
//                     backgroundColor: context.appColor.primaryLightBlue,
//                   ),
//                 ),

//                 Container(
//                   margin: EdgeInsets.only(bottom: 19.h),
//                   child: Divider(
//                     height: 2.h,
//                     color: context.appColor.primaryLightBlue,
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
//                         Icons.trending_up,
//                         color: context.appColor.primaryBlue,
//                       ),
//                     ),
//                     SizedBox(width: 20.w),

//                     CustomeText(
//                       text: 'Assistance',
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
//                       'Veuillez renseigner vos informations concernant les données d\'assistance de votre cellule.',
//                   style: context.appTypographie.small.copyWith(
//                     fontSize: 12.sp,
//                     color: context.appColor.primaryGray500,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(height: 0.02.sh),

//                 BlocBuilder<
//                   RapportCelluleSectionAssistanceBloc,
//                   RapportCelluleRequestSectionAssistanceState
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
//                                     Icons.groups,
//                                     color: context.appColor.primaryDarkBlue,
//                                   ),
//                                   SizedBox(width: 8.w),
//                                   CustomeText(
//                                     text: "Nombre de baptisé",
//                                     style: context.appTypographie.body.copyWith(
//                                       fontSize: 13.sp,
//                                       color: context.appColor.primaryGrayDark,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                 ],
//                               ),

//                               if (isHowDetail == false) ...[
//                                 BlocBuilder<
//                                   RapportCelluleSectionAssistanceBloc,
//                                   RapportCelluleRequestSectionAssistanceState
//                                 >(
//                                   builder: (context, state) {
//                                     return ProductionFormCustomer(
//                                       textInputType: TextInputType.phone,
//                                       isColorBlue: state.nombreBaptiser.isValid
//                                           ? true
//                                           : false,
//                                       readOnly: state.status.isInProgress,
//                                       inputLabel: '',
//                                       textLabel: "Chrétiens baptisés",
//                                       errorText:
//                                           state.nombreBaptiser.isPure ||
//                                               state.nombreBaptiser.isValid
//                                           ? null
//                                           : '',
//                                       msgError: 'Veuillez renseigner ce champ',
//                                       sufixIcon: Icon(
//                                         Icons.water_drop_outlined,
//                                         color: context.appColor.primaryBlue,
//                                       ),
//                                       onChanged: (value) {
//                                         context
//                                             .read<
//                                               RapportCelluleSectionAssistanceBloc
//                                             >()
//                                             .add(
//                                               RapportCelluleRequestSectionAssistanceEvent.changeNombreBaptiser(
//                                                 value,
//                                               ),
//                                             );
//                                       },
//                                     );
//                                   },
//                                 ),

//                                 SizedBox(height: 7.h),

//                                 BlocBuilder<
//                                   RapportCelluleSectionAssistanceBloc,
//                                   RapportCelluleRequestSectionAssistanceState
//                                 >(
//                                   builder: (context, state) {
//                                     return Container(
//                                       height: 0.4.sh,
//                                       child: Scrollbar(
//                                         radius: Radius.circular(10.r),
//                                         child: ListView.builder(
//                                           itemCount:
//                                               requestSectionNonBaptiser.length,
//                                           itemBuilder: (context, index) {
//                                             final section =
//                                                 requestSectionNonBaptiser[index];
//                                             return Card(
//                                               color: Colors.white,
//                                               elevation: 0.5.h,
//                                               borderOnForeground: true,
//                                               child: ExpansionTile(
//                                                 tilePadding:
//                                                     EdgeInsets.symmetric(
//                                                       horizontal: 9.w,
//                                                       vertical: 8.h,
//                                                     ),
//                                                 iconColor: const Color(
//                                                   0xFF888888,
//                                                 ),
//                                                 shape: Border.all(
//                                                   color: Colors.transparent,
//                                                 ),
//                                                 collapsedShape: Border.all(
//                                                   color: Colors.transparent,
//                                                 ),
//                                                 title: Text(
//                                                   section.title,
//                                                   style: GoogleFonts.roboto(
//                                                     color: Colors.black,
//                                                     fontSize: 14.sp,
//                                                     fontWeight: FontWeight.w400,
//                                                   ),
//                                                 ),
//                                                 children: section.items.map((
//                                                   item,
//                                                 ) {
//                                                   return Padding(
//                                                     padding:
//                                                         EdgeInsets.symmetric(
//                                                           horizontal: 9.w,
//                                                           vertical: 3.h,
//                                                         ),
//                                                     child: Row(
//                                                       mainAxisAlignment:
//                                                           MainAxisAlignment
//                                                               .spaceBetween,
//                                                       children: [
//                                                         Text(item.name),
//                                                         Row(
//                                                           children: [
//                                                             IconButton(
//                                                               icon: Icon(
//                                                                 Icons.remove,
//                                                               ),
//                                                               onPressed: () {
//                                                                 setState(() {
//                                                                   if (item.count >
//                                                                       0)
//                                                                     item.count--;
//                                                                 });
//                                                                 _updateBloc(
//                                                                   item: item,
//                                                                   state: state,
//                                                                   section:
//                                                                       section,
//                                                                 );
//                                                               },
//                                                             ),
//                                                             Text(
//                                                               item.count
//                                                                   .toString(),
//                                                             ),
//                                                             IconButton(
//                                                               icon: Icon(
//                                                                 Icons.add,
//                                                               ),
//                                                               onPressed: () {
//                                                                 setState(() {
//                                                                   item.count++;
//                                                                 });
//                                                                 _updateBloc(
//                                                                   item: item,
//                                                                   state: state,
//                                                                   section:
//                                                                       section,
//                                                                 );
//                                                               },
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   );
//                                                 }).toList(),
//                                               ),
//                                             );
//                                           },
//                                         ),
//                                       ),
//                                     );
//                                   },
//                                 ),
//                               ],

//                               SizedBox(height: 8.h),

//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     isHowDetail = !isHowDetail;
//                                   });
//                                 },
//                                 child: Container(
//                                   padding: EdgeInsets.symmetric(
//                                     vertical: 12.h,
//                                     horizontal: 16.w,
//                                   ),
//                                   decoration: BoxDecoration(
//                                     border: Border.all(color: Colors.black12),
//                                     borderRadius: BorderRadius.circular(7.r),
//                                   ),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Icon(
//                                         Icons.description_outlined,
//                                         color: context.appColor.primaryDarkBlue,
//                                       ),
//                                       SizedBox(width: 8.w),
//                                       CustomeText(
//                                         text: "Vois plus de détail ",
//                                         style: context.appTypographie.body
//                                             .copyWith(
//                                               fontSize: 13.sp,
//                                               color: context
//                                                   .appColor
//                                                   .primaryGrayDark,
//                                               fontWeight: FontWeight.w600,
//                                             ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               if (!isHowDetail) ...[SizedBox(height: 0.04.sh)],
//                               if (isHowDetail) ...[SizedBox(height: 10.h)],

//                               if (isHowDetail) ...[
//                                 BlocBuilder<
//                                   RapportCelluleSectionAssistanceBloc,
//                                   RapportCelluleRequestSectionAssistanceState
//                                 >(
//                                   builder: (context, state) {
//                                     return Container(
//                                       height: 0.4.sh,
//                                       child: Scrollbar(
//                                         radius: Radius.circular(10.r),
//                                         child: ListView.builder(
//                                           itemCount:
//                                               requestSectionDetail.length,
//                                           itemBuilder: (context, index) {
//                                             final section =
//                                                 requestSectionDetail[index];
//                                             return Card(
//                                               color: Colors.white,
//                                               elevation: 0.5.h,
//                                               borderOnForeground: true,
//                                               child: ExpansionTile(
//                                                 tilePadding:
//                                                     EdgeInsets.symmetric(
//                                                       horizontal: 9.w,
//                                                       vertical: 8.h,
//                                                     ),
//                                                 iconColor: const Color(
//                                                   0xFF888888,
//                                                 ),
//                                                 shape: Border.all(
//                                                   color: Colors.transparent,
//                                                 ),
//                                                 collapsedShape: Border.all(
//                                                   color: Colors.transparent,
//                                                 ),
//                                                 title: Text(
//                                                   section.title,
//                                                   style: GoogleFonts.roboto(
//                                                     color: Colors.black,
//                                                     fontSize: 14.sp,
//                                                     fontWeight: FontWeight.w400,
//                                                   ),
//                                                 ),
//                                                 children: section.items.map((
//                                                   item,
//                                                 ) {
//                                                   return Padding(
//                                                     padding:
//                                                         EdgeInsets.symmetric(
//                                                           horizontal: 9.w,
//                                                           vertical: 8.h,
//                                                         ),
//                                                     child: Row(
//                                                       mainAxisAlignment:
//                                                           MainAxisAlignment
//                                                               .spaceBetween,
//                                                       children: [
//                                                         Text(item.name),
//                                                         Row(
//                                                           children: [
//                                                             IconButton(
//                                                               icon: Icon(
//                                                                 Icons.remove,
//                                                               ),
//                                                               onPressed: () {
//                                                                 setState(() {
//                                                                   if (item.count >
//                                                                       0)
//                                                                     item.count--;
//                                                                 });
//                                                                 _updateDetailBloc(
//                                                                   item: item,
//                                                                   state: state,
//                                                                   section:
//                                                                       section,
//                                                                 );
//                                                               },
//                                                             ),
//                                                             Text(
//                                                               item.count
//                                                                   .toString(),
//                                                             ),
//                                                             IconButton(
//                                                               icon: Icon(
//                                                                 Icons.add,
//                                                               ),
//                                                               onPressed: () {
//                                                                 setState(() {
//                                                                   item.count++;
//                                                                 });
//                                                                 _updateDetailBloc(
//                                                                   item: item,
//                                                                   state: state,
//                                                                   section:
//                                                                       section,
//                                                                 );
//                                                               },
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   );
//                                                 }).toList(),
//                                               ),
//                                             );
//                                           },
//                                         ),
//                                       ),
//                                     );
//                                   },
//                                 ),

//                                 SizedBox(height: 9.h),
//                                 BlocBuilder<
//                                   RapportCelluleSectionAssistanceBloc,
//                                   RapportCelluleRequestSectionAssistanceState
//                                 >(
//                                   builder: (context, state) {
//                                     return FormNextTeps(
//                                       icons: Icons.work_outline,
//                                       title: 'Activité ',
//                                       description: 'Activité de la cellule ',
//                                       isNextForm: state.nombreBaptiser.isValid,
//                                     );
//                                   },
//                                 ),

//                                 BlocBuilder<
//                                   RapportCelluleSectionAssistanceBloc,
//                                   RapportCelluleRequestSectionAssistanceState
//                                 >(
//                                   builder: (context, state) {
//                                     return Container(
//                                       margin: EdgeInsets.only(
//                                         top: 20.h,
//                                         bottom: 30.h,
//                                       ),
//                                       child: PrimaryButton(
//                                         label: 'Suivant',
//                                         colorText:
//                                             context.appColor.primaryWhite,
//                                         isLoading: state.status.isInProgress,
//                                         onPressed: state.status.isInProgress
//                                             ? null
//                                             : () {
//                                                 FocusScope.of(
//                                                   context,
//                                                 ).unfocus();

//                                                 context
//                                                     .read<
//                                                       RapportCelluleSectionAssistanceBloc
//                                                     >()
//                                                     .add(
//                                                       RapportCelluleRequestSectionAssistanceEvent.updateSectionId(
//                                                         widget.id,
//                                                       ),
//                                                     );

//                                                 context
//                                                     .read<
//                                                       RapportCelluleSectionAssistanceBloc
//                                                     >()
//                                                     .add(
//                                                       RapportCelluleRequestSectionAssistanceEvent.submit(),
//                                                     );
//                                               },
//                                       ),
//                                     );
//                                   },
//                                 ),
//                                 SizedBox(height: 20.h),
//                               ],
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

// class RequestItemRequestSection {
//   final String name;
//   int count;
//   RequestItemRequestSection({required this.name, this.count = 0});
// }

// class RequestSection {
//   String title;
//   final List<RequestItemRequestSection> items;

//   RequestSection({required this.title, required this.items});
// }

// final requestSectionDetail = [
//   RequestSection(
//     title: "Formation",
//     items: [
//       // RequestItemRequestSection(name: "Décisionnaires"),
//       RequestItemRequestSection(name: "Nouv. En Formation DFNC"),
//       RequestItemRequestSection(name: "Nouv. Bapt. En Formation DFD"),
//       RequestItemRequestSection(name: "En formation niveau 2"),
//     ],
//   ),

//   RequestSection(
//     title: "Section visite",
//     items: [
//       RequestItemRequestSection(name: "Visites faites aux membres"),
//       RequestItemRequestSection(name: "Visites faites aux disciples"),
//     ],
//   ),

//   RequestSection(
//     title: "Section Activités",
//     items: [
//       RequestItemRequestSection(name: "Nbre de travailleurs"),
//       RequestItemRequestSection(name: "Nbre d’élèves et étudiants"),
//     ],
//   ),

//   RequestSection(
//     title: "Section Ouvriers",
//     items: [
//       RequestItemRequestSection(name: "Nbre d’ouvrier E.M"),
//       RequestItemRequestSection(name: "Ouv. Autre dépt dirigeant E.M"),
//     ],
//   ),
//   RequestSection(
//     title: "Autres",
//     items: [
//       RequestItemRequestSection(name: "Agenda de l’EM (Oui ou Non)"),
//       RequestItemRequestSection(name: "Décisionnaires"),
//     ],
//   ),
// ];

// final requestSectionNonBaptiser = [
//   RequestSection(
//     title: "Non baptisé",
//     items: [
//       RequestItemRequestSection(name: "Tout-petits"),
//       RequestItemRequestSection(name: "Juniors"),
//       RequestItemRequestSection(name: "Cadets"),
//     ],
//   ),
//   RequestSection(
//     title: "Nouveaux",
//     items: [
//       RequestItemRequestSection(name: "Tout-petits"),
//       RequestItemRequestSection(name: "Juniors"),
//       RequestItemRequestSection(name: "Cadets"),
//     ],
//   ),
//   RequestSection(
//     title: "Invités",
//     items: [
//       RequestItemRequestSection(name: "Tout-petits"),
//       RequestItemRequestSection(name: "Juniors"),
//       RequestItemRequestSection(name: "Cadets"),
//     ],
//   ),
// ];
