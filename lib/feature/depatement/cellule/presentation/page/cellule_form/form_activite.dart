// import 'dart:developer';

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
// import 'package:grace_church/core/extension/extention.dart';
// import 'package:grace_church/core/injection/injection_container.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/entities/response/cellule_response.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/rapport_cellule_suggestion_usercase.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/event/rapport_cellule_event.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/form_activite_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/form_suggestion_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/state/rapport_cellule_state.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/page/cellule_form/form_ouvrier_spritual_live.dart';

// class FormActivite extends StatefulWidget {
//   FormActivite({super.key, required this.id});
//   final String id;
//   @override
//   State<FormActivite> createState() => _FormActiviteState();
// }

// class _FormActiviteState extends State<FormActivite> {

//   TextEditingController textEditingController = TextEditingController();
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

//     void updateNombre3(RequestSectionForm RequestSection, int value) {
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

//    RequestSectionForm RequestSection3 = RequestSectionForm(
//     nombre: 1,
//     rows: [FormRow()],
//   );


//   void _updateDisciple({
//     required BuildContext context,
//     required int index,
//     required RapportCelluleRequestActivityState state,
//     String? fullName,
//     String? probleme,
//     String? recommandation,
//     required bool isBaptierOrNot,
//   }) {
//     final bloc = context.read<FormActiviteBloc>();

//     final list = List<VisiteDisciple>.from(state.discipleVisiteList);

//     // Étend la liste si nécessaire
//     if (list.length <= index) {
//       list.addAll(
//         List.generate(
//           index - list.length + 1,
//           (_) => VisiteDisciple(
//             fullname: '',
//             isDisciple: false,
//             probleme: '',
//             recommandation: '',
//           ),
//         ),
//       );
//     }

//     list[index] = list[index].copyWith(
//       fullname: fullName ?? list[index].fullname,
//       isDisciple: true,
//       probleme: probleme ?? list[index].probleme,
//       recommandation: recommandation ?? list[index].recommandation,
//     );

//     bloc.add(RapportCelluleRequestActivityEvent.changeDisciple(list));
//   }

//   void _updateDisciple2({
//     required BuildContext context,
//     required int index,
//     required RapportCelluleRequestActivityState state,
//     String? fullName,
//     String? probleme,
//     String? recommandation,
//     required bool isBaptierOrNot,
//   }) {
//     final bloc = context.read<FormActiviteBloc>();

//     final list = List<VisiteDisciple>.from(state.discipleMenbreList);

//     // Étend la liste si nécessaire
//     if (list.length <= index) {
//       list.addAll(
//         List.generate(
//           index - list.length + 1,
//           (_) => VisiteDisciple(
//             fullname: '',
//             isDisciple: false,
//             probleme: '',
//             recommandation: '',
//           ),
//         ),
//       );
//     }

//     list[index] = list[index].copyWith(
//       fullname: fullName ?? list[index].fullname,
//       isDisciple: false,
//       probleme: probleme ?? list[index].probleme,
//       recommandation: recommandation ?? list[index].recommandation,
//     );

//     bloc.add(RapportCelluleRequestActivityEvent.changeMenbre(list));
//   }
  
 
//   void _updateDisciple3({
//     required BuildContext context,
//     required int index,
//     required RapportCelluleRequestActivityState state,
//     String? theme,
//     String? orateur,
//     String? lieu,
//     String? date,
//     String? programmeNature,
//   }) {
//     final bloc = context.read<FormActiviteBloc>();

//     final List<WeekActivity> list = List<WeekActivity>.from(state.activity);

//     // Étend la liste si nécessaire
//     if (list.length <= index) {
//       list.addAll(
//         List.generate(
//           index - list.length + 1,
//           (_) => WeekActivity(
//             theme: '',
//             orateur: '',
//             lieu: '', 
//             date: '', 
//             programmeNature: ''
     
//           ),
//         ),
//       );
//     }

//     list[index] = list[index].copyWith(
//       theme: theme ?? list[index].theme,
//       orateur: orateur??list[index].orateur,
//       lieu: lieu ?? list[index].lieu,
//       date: date ?? list[index].date,
//       programmeNature: programmeNature ?? list[index].programmeNature,
//     );
//     // bloc.add(RapportCelluleRequestActivityEvent.changeAtivity(list));
//     bloc.add(RapportCelluleRequestActivityEvent.changeAtivity(list));
//   }

//   late String myDate = '';




//   @override
//   void initState() {
//    context.read<FormActiviteBloc>().add(RapportCelluleRequestActivityEvent.updateSectionId(widget.id));
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<FormActiviteBloc, RapportCelluleRequestActivityState>(
//       listener: (context, state) {
//         if (state.status.isSuccess) {
//           log("------>${widget.id} ${state.errorMessage}");
//           Navigator.push(
//             context,
//             fadeRoute(
//               BlocProvider(
//                 create: (context) => FormSuggestionBloc(
//                   sendRapportCelluleStepSuggestionUsercase:
//                       getIt<SendRapportCelluleStepSuggestionUsercase>(),
//                 ),
//                 child:  FormOuvrierSpritualLive(
//                   id: widget.id.isNotEmpty ? widget.id : state.errorMessage,
//                 ),
//               ),
//             ),
//           );
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
//                             fadeRoute(OverviewScreen(
//                             )),
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
//                         text: 'Etape 3 sur 4',
//                         style: context.appTypographie.small.copyWith(
//                           color: context.appColor.primaryBlue,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12.sp,
//                         ),
//                       ),

//                       CustomeText(
//                         text: '60% Complété',
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
//                     currentValue: 70,
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
//                         Icons.work_outline,
//                         color: context.appColor.primaryBlue,
//                       ),
//                     ),
//                     SizedBox(width: 20.w),

//                     CustomeText(
//                       text: 'Activité',
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
//                       "Veuillez renseigner les visite faite au membre ainsi qu'aux disciple",
//                   style: context.appTypographie.small.copyWith(
//                     fontSize: 12.sp,
//                     color: context.appColor.primaryGray500,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(height: 0.02.sh),

//                 BlocBuilder<FormActiviteBloc, RapportCelluleRequestActivityState>(
//                   builder: (context, state) {
//                     return state.status.isInProgress ?  Column(
//                       children: [
//                         SizedBox(
//                           height: 0.2.sh,
//                         ),
//                         Center(child: CircularProgressIndicator(
//                           backgroundColor: context.appColor.primaryLightBlue,
//                           valueColor: AlwaysStoppedAnimation<Color>(context.appColor.primaryBlue),
//                         )),
//                       ],
//                     ) : Column(
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.search,
//                               color: context.appColor.primaryDarkBlue,
//                             ),
//                             SizedBox(width: 8.w),
//                             CustomeText(
//                               text: "RequestSection visite",
//                               style: context.appTypographie.body.copyWith(
//                                 fontSize: 13.sp,
//                                 color: context.appColor.primaryGrayDark,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             SizedBox(height: 16.h),

//                             TextField(
//                               keyboardType: TextInputType.number,
//                               decoration: InputDecoration(
//                                 labelText:
//                                     "Nombre de visite faite aux disciples",
//                                 labelStyle: context.appTypographie.body
//                                     .copyWith(
//                                       fontSize: 12.sp,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                               ),
//                               onChanged: (value) {
//                                 final number = int.tryParse(value) ?? 1;
//                                 updateNombre(RequestSection, number);
//                               },
//                             ),
//                             BlocBuilder<
//                               FormActiviteBloc,
//                               RapportCelluleRequestActivityState
//                             >(
//                               builder: (context, state) {
//                                 return Column(
//                                   children: List.generate(
//                                     RequestSection.rows.length,
//                                     (index) {
//                                       final row = RequestSection.rows[index];

//                                       return Card(
//                                         color: Colors.white,
//                                         child: Container(
//                                           padding: EdgeInsets.symmetric(
//                                             horizontal: 16.w,
//                                             vertical: 12.h,
//                                           ),
//                                           child: Column(
//                                             children: [
//                                               Text(
//                                                 "Disciple visité ${index + 1}",
//                                                 style: context
//                                                     .appTypographie
//                                                     .body
//                                                     .copyWith(
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                     ),
//                                               ),

//                                               TextField(
//                                                 readOnly:
//                                                     state.status.isInProgress,
//                                                 decoration: InputDecoration(
//                                                   labelText: "Nom",
//                                                 ),
//                                                 onChanged: (val) {
//                                                   row.nom = val;
//                                                   _updateDisciple(
//                                                     context: context,
//                                                     index: index,
//                                                     state: state,
//                                                     fullName: row.nom,
//                                                     isBaptierOrNot: true,
//                                                   );
//                                                 },
//                                               ),

//                                               TextField(
//                                                    minLines: 2,
//                                                 maxLines: 4,
//                                                 readOnly:
//                                                     state.status.isInProgress,
//                                                 decoration: InputDecoration(
//                                                   labelText: "Problème",
//                                                 ),
//                                                 onChanged: (val) {
//                                                   row.probleme = val;
//                                                   _updateDisciple(
//                                                     context: context,
//                                                     index: index,
//                                                     state: state,
//                                                     probleme: row.probleme,
//                                                     isBaptierOrNot: true,
//                                                   );
//                                                 },
//                                               ),

//                                               TextField(
//                                                 minLines: 2,
//                                                 maxLines: 4,
//                                                 readOnly:
//                                                     state.status.isInProgress,
//                                                 decoration: InputDecoration(
//                                                   labelText: "Recommandation",
//                                                 ),
//                                                 onChanged: (val) {
//                                                   row.recommandation = val;
//                                                   _updateDisciple(
//                                                     context: context,
//                                                     index: index,
//                                                     state: state,
//                                                     recommandation:
//                                                         row.recommandation,
//                                                     isBaptierOrNot: true,
//                                                   );
//                                                 },
//                                               ),

//                                               SizedBox(height: 16),
//                                             ],
//                                           ),
//                                         ),
//                                       );
//                                     },
//                                   ),
//                                 );
//                               },
//                             ),
//                           ],
//                         ),

//                         BlocBuilder<
//                           FormActiviteBloc,
//                           RapportCelluleRequestActivityState
//                         >(
//                           builder: (context, state) {
//                             return Column(
//                               children: [
//                                 SizedBox(height: 16.h),
//                                 TextField(
//                                   readOnly: state.status.isInProgress,
//                                   keyboardType: TextInputType.number,
//                                   decoration: InputDecoration(
//                                     labelText:
//                                         "Nombre de visite faite aux membres",
//                                     labelStyle: context.appTypographie.body
//                                         .copyWith(
//                                           fontSize: 12.sp,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                   ),
//                                   onChanged: (value) {
//                                     final number = int.tryParse(value) ?? 1;
//                                     updateNombre2(RequestSection2, number);
//                                   },
//                                 ),
//                                 Column(
//                                   children: List.generate(
//                                     RequestSection2.rows.length,
//                                     (index) {

//                                       return Card(
//                                         color: Colors.white,
//                                         child: Container(
//                                           padding: EdgeInsets.symmetric(
//                                             horizontal: 16.w,
//                                             vertical: 12.h,
//                                           ),
//                                           child: Column(
//                                             children: [
//                                               //  Icon(Icons.file_open_rounded),:
//                                               Text(
//                                                 " Membre visité ${index + 1}",
//                                                 style: context
//                                                     .appTypographie
//                                                     .body
//                                                     .copyWith(
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                     ),
//                                               ),

//                                               TextField(
//                                                 readOnly:
//                                                     state.status.isInProgress,
//                                                 decoration: InputDecoration(
//                                                   labelText: "Nom",
//                                                 ),
//                                                 onChanged: (val) {
//                                                   // row.nom = val;
//                                                   _updateDisciple2(
//                                                     context: context,
//                                                     index: index,
//                                                     state: state,
//                                                     fullName: val,
//                                                     isBaptierOrNot: false,
//                                                   );
//                                                 },
//                                               ),

//                                               TextField(
//                                                  minLines: 2,
//                                                 maxLines: 4,
//                                                 readOnly:
//                                                     state.status.isInProgress,
//                                                 decoration: InputDecoration(
//                                                   labelText: "Problème",
//                                                 ),
//                                                 onChanged: (val) {
//                                                   // row.probleme = val;
//                                                   _updateDisciple2(
//                                                     context: context,
//                                                     index: index,
//                                                     state: state,
//                                                     probleme: val,
//                                                     isBaptierOrNot: false,
//                                                   );
//                                                 },
//                                               ),

//                                               TextField(
//                                                 minLines: 2,
//                                                 maxLines: 4,
//                                                 readOnly:
//                                                     state.status.isInProgress,
//                                                 decoration: InputDecoration(
//                                                   labelText: "Recommandation",
//                                                 ),
//                                                 onChanged: (val) {
//                                                   // row.recommandation = val;
//                                                   _updateDisciple2(
//                                                     context: context,
//                                                     index: index,
//                                                     state: state,
//                                                     recommandation: val,
//                                                     isBaptierOrNot: false,
//                                                   );
//                                                 },
//                                               ),

//                                               SizedBox(height: 16),
//                                             ],
//                                           ),
//                                         ),
//                                       );
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             );
//                           },
//                         ),
                       
//                        //---------------/ Activity
//                         BlocBuilder<
//                           FormActiviteBloc,
//                           RapportCelluleRequestActivityState
//                         >(
//                           builder: (context, state) {
//                             return Column(
//                               children: [
//                                 SizedBox(height: 16.h),
//                                 TextField(
//                                   readOnly: state.status.isInProgress,
//                                   keyboardType: TextInputType.number,
//                                   decoration: InputDecoration(
//                                     labelText:
//                                         "Nombre d'activity au cours de la semaine",
//                                     labelStyle: context.appTypographie.body
//                                         .copyWith(
//                                           fontSize: 12.sp,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                   ),
//                                   onChanged: (value) {
//                                     final number = int.tryParse(value) ?? 1;
//                                     updateNombre3(RequestSection3, number);
//                                   },
//                                 ),
//                                 Column(
//                                   children: List.generate(
//                                     RequestSection3.rows.length,
//                                     (index) {

//                                       return Card(
//                                         color: Colors.white,
//                                         child: Container(
//                                           padding: EdgeInsets.symmetric(
//                                             horizontal: 16.w,
//                                             vertical: 12.h,
//                                           ),
//                                           child: Column(
//                                             children: [
//                                               //  Icon(Icons.file_open_rounded),:
//                                               Text(
//                                                 " Monbre activé ${index + 1}",
//                                                 style: context
//                                                     .appTypographie
//                                                     .body
//                                                     .copyWith(
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                     ),
//                                               ),

//                                               TextField(
//                                                  minLines: 2,
//                                                 maxLines: 4,
//                                                 readOnly:
//                                                     state.status.isInProgress,
//                                                 decoration: InputDecoration(
//                                                   labelText: "Nature du programme",
//                                                 ),
//                                                 onChanged: (value) {
//                                                   // row.nom = val;
//                                                   _updateDisciple3(
//                                                     context: context,
//                                                     index: index,
//                                                     state: state,
//                                                     programmeNature: value,
//                                                   );
//                                                 },
//                                               ),

//                                               TextField(
//                                                  minLines: 2,
//                                                 maxLines: 4,
//                                                 readOnly:
//                                                     state.status.isInProgress,
//                                                 decoration: InputDecoration(
//                                                   labelText: "Thème",
//                                                 ),
//                                                 onChanged: (value) {
//                                                   // row.probleme = val;
//                                                   _updateDisciple3(
//                                                     context: context,
//                                                     index: index,
//                                                     state: state,
//                                                     theme: value,
//                                                   );
//                                                 },
//                                               ),

//                                               TextField(
//                                                 minLines: 2,
//                                                 maxLines: 4,
//                                                 readOnly:
//                                                     state.status.isInProgress,
//                                                 decoration: InputDecoration(
//                                                   labelText: "Orateur",
//                                                 ),
//                                                 onChanged: (value) {
//                                                   // row.recommandation = val;
//                                                   _updateDisciple3(
//                                                     context: context,
//                                                     index: index,
//                                                     state: state,
//                                                     orateur: value,
//                                                   );
//                                                 },
//                                               ),

                                              
//                                               TextField(
//                                                 minLines: 2,
//                                                 maxLines: 4,
//                                                 readOnly:
//                                                     state.status.isInProgress,
//                                                 decoration: InputDecoration(
//                                                   labelText: "Lieu",
//                                                 ),
//                                                 onChanged: (value) {
//                                                   // row.recommandation = val;
//                                                   _updateDisciple3(
//                                                     context: context,
//                                                     index: index,
//                                                     state: state,
//                                                     lieu: value,
//                                                   );
//                                                 },
//                                               ),

//                                              TextField(                                                minLines: 1,
//                                                 maxLines: 1,
//                                                 readOnly: state.status.isInProgress,
//                                                 decoration: InputDecoration(
//                                                   labelText: "Date (YYYY-MM)",
//                                                   errorText:  "La date doit être au format 2026-05-07",
//                                                 ),
//                                                 onChanged: (value) {
//                                                   if (isValidYearMonth(value)) {
//                                                     _updateDisciple3(
//                                                       context: context,
//                                                       index: index,
//                                                       state: state,
//                                                       date: value,
//                                                     );
//                                                   }
//                                                 },
//                                               ),

//                                               SizedBox(height: 16),
//                                             ],
//                                           ),
//                                         ),
//                                       );
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             );
//                           },
//                         ),



//                         BlocBuilder<
//                           FormActiviteBloc,
//                           RapportCelluleRequestActivityState
//                         >(
//                           builder: (context, state) {
//                             return Container(
//                               margin: EdgeInsets.only(top: 20.h, bottom: 17.h),
//                               child: FormNextTeps(
//                                 icons: Icons.lightbulb_outline,
//                                 title: 'Suggestion ',
//                                 description: 'vos suggestions pour la cellule',
//                                 isNextForm: state.isValide,
//                               ),
//                             );
//                           },
//                         ),

//                         BlocBuilder<
//                           FormActiviteBloc,
//                           RapportCelluleRequestActivityState
//                         >(
//                           builder: (context, state) {
//                             return Container(
//                               margin: EdgeInsets.only(top: 20.h, bottom: 30.h),
//                               child: PrimaryButton(
//                                 label: 'Suivant',
//                                 colorText: context.appColor.primaryWhite,
//                                 isLoading: state.status.isInProgress,
//                                 onPressed: () {
//                                   context.read<FormActiviteBloc>().add(
//                                     RapportCelluleRequestActivityEvent.updateSectionId(
//                                     widget.id,
//                                     ),
//                                   );

//                                   context.read<FormActiviteBloc>().add(
//                                     RapportCelluleRequestActivityEvent.submit(),
//                                   );
//                                 },
//                               ),
//                             );
//                           },
//                         ),
//                         SizedBox(height: 20.h),
//                       ],
//                     );
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
