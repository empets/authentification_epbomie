// import 'dart:developer';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:formz/formz.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:grace_church/core/bloc_state/bloc_state.dart';
// import 'package:grace_church/core/custome_widget/button.dart';
// import 'package:grace_church/core/custome_widget/custome_text.dart';
// import 'package:grace_church/core/custome_widget/form_filed.dart';
// import 'package:grace_church/core/custome_widget/navigate.dart';
// import 'package:grace_church/core/extension/custome_extension.dart';
// import 'package:grace_church/core/injection/injection_container.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/entities/response/cellule_response.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/rapport_cellule_stat_usercase.dart';
// import 'package:grace_church/feature/home/domaine/entities/response/home_response.dart';
// import 'package:grace_church/feature/home/overview.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/get_responsable_secteur.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/get_responsable_zone.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/event/rapport_cellule_event.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/form_administraction_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/form_sassistance_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/state/rapport_cellule_state.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/page/cellule_form/form_activite.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/page/cellule_form/form_assistance.dart';
// import 'package:grace_church/gen/assets.gen.dart';

// class EditingCelluleRaport extends StatefulWidget {
//   const EditingCelluleRaport({super.key, this.profile});
//   final ProfileResponse? profile;

//   @override
//   State<EditingCelluleRaport> createState() => _EditingCelluleRaportState();
// }

// class _EditingCelluleRaportState extends State<EditingCelluleRaport> {
//   DateTime? selectedDate;
//   final TextEditingController textEditingControllerDateNaissance =
//       TextEditingController();
//   final TextEditingController textEditingControllerNomResponsableCellule =
//       TextEditingController();

//   SecteurResponse? selectSecteur;

//   Future<void> _openCalendar() async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       //  initialDate: DateTime(2012),
//       firstDate: DateTime(1900),
//       lastDate: DateTime.now(), // pas de futur
//       selectableDayPredicate: (day) {
//         final now = DateTime.now();

//         // 🔥 âge minimum 14 ans
//         final maxDate = DateTime(now.year - 14, now.month, now.day);

//         if (day.isBefore(maxDate)) {
//           return false;
//         }

//         return true;
//       },

//       /// 🎨 Custom Theme
//       builder: (context, child) {
//         return Theme(
//           data: Theme.of(context).copyWith(
//             colorScheme: const ColorScheme.light(
//               primary: Colors.blue, // 🔵 header + selected date
//               onPrimary: Colors.white, // texte sur header
//               onSurface: Colors.black, // texte normal
//             ),
//             textButtonTheme: TextButtonThemeData(
//               style: TextButton.styleFrom(
//                 foregroundColor: Colors.blue, // boutons OK / CANCEL
//               ),
//             ),
//           ),
//           child: child!,
//         );
//       },
//     );

//     if (picked != null) {
//       setState(() {
//         selectedDate = picked;
//         textEditingControllerDateNaissance.text = selectedDate
//             .toString()
//             .substring(0, 10);
//       });
//       context.read<RapportCelluleRequestSectionAdministrationBloc>().add(
//         RapportCelluleRequestSectionAdministrationEvent.changeJourCellule(
//           selectedDate.toString().substring(0, 10),
//         ),
//       );
//     }
//   }

//   final RequestSectionEffectif = [
//     RequestSection(
//       title: "Effectif",
//       items: [
//         RequestItemRequestSection(name: "Baptisé"),
//         RequestItemRequestSection(name: "Non baptisé"),
//       ],
//     ),
//   ];

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

//   RequestSectionForm RequestSection2 = RequestSectionForm(
//     nombre: 1,
//     rows: [FormRow()],
//   );

//   late bool isChowIcon = true;

//   @override
//   void initState() {
//     super.initState();
//     textEditingControllerNomResponsableCellule.text =
//         widget.profile?.name ?? "";

//     context.read<RapportCelluleRequestSectionAdministrationBloc>().add(
//       RapportCelluleRequestSectionAdministrationEvent.changeFullNameRespoCellule(
//         widget.profile?.name ?? "",
//       ),
//     );
//     context.read<RapportCelluleRequestSectionAdministrationBloc>().add(
//       RapportCelluleRequestSectionAdministrationEvent.changeContactRespoCellule(
//         widget.profile?.contact ?? "",
//       ),
//     );
//     context.read<RapportCelluleRequestSectionAdministrationBloc>().add(
//       RapportCelluleRequestSectionAdministrationEvent.changeCodeCellule(
//         widget.profile?.celluleCode ?? "",
//       ),
//     );
//     context.read<RapportCelluleRequestSectionAdministrationBloc>().add(
//       RapportCelluleRequestSectionAdministrationEvent.changeOffrande("0"),
//     );
//     context.read<RapportCelluleRequestSectionAdministrationBloc>().add(
//       RapportCelluleRequestSectionAdministrationEvent.changeReponsableCelluleId(
//         widget.profile?.menberId ?? "",
//       ),
//     );
//       context.read<RapportCelluleRequestSectionAdministrationBloc>().add(
//       RapportCelluleRequestSectionAdministrationEvent.changeLieu(
//         widget.profile?.cellulePriere ?? "",
//       ),
//     );
  
//   }

//   void _updateDisciple({
//     required BuildContext context,
//     required int index,
//     required RapportCelluleRequestSectionAdministrationState state,
//     String? fullName,
//     String? isBaptierOrNot,
//   }) {
//     final bloc = context.read<RapportCelluleRequestSectionAdministrationBloc>();

//     final list = List<DiscipleCellule>.from(state.discipleCelluleList);

//     // Étend la liste si nécessaire
//     if (list.length <= index) {
//       list.addAll(
//         List.generate(
//           index - list.length + 1,
//           (_) => DiscipleCellule(fullName: '', isBaptierOrNot: ''),
//         ),
//       );
//     }

//     list[index] = list[index].copyWith(
//       fullName: fullName ?? list[index].fullName,
//       isBaptierOrNot: isBaptierOrNot ?? list[index].isBaptierOrNot,
//     );

//     bloc.add(
//       RapportCelluleRequestSectionAdministrationEvent.changeNombreListDicipleCellule(
//         list,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<
//       RapportCelluleRequestSectionAdministrationBloc,
//       RapportCelluleRequestSectionAdministrationState
//     >(
//       listener: (context, state) {
//         if (state.isValide && state.status.isSuccess) {
//           Navigator.push(
//             context,
//             fadeRoute(
//               BlocProvider(
//                 create: (context) => RapportCelluleSectionAssistanceBloc(
//                   sendRapportCelluleStepStatUsercase:
//                       getIt<SendRapportCelluleStepStatUsercase>(),
//                 ),
//                 child: FormStatistic(id: state.errorMessage),
//               ),
//             ),
//           );
//         }
//         if (state.status.isFailure) {}
//       },
//       child: Scaffold(
//         backgroundColor: Colors.grey.shade50,
//         body: Container(
//           margin: EdgeInsets.only(top: 28.h, bottom: 0.06.sh),
//           padding: EdgeInsets.symmetric(horizontal: 12.w),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 17.h),
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
//                         child: SvgPicture.asset(assets.images.arrowBack.path),
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
//                               isFormImpliciteConnexion: true,
//                               menberId: widget.profile?.menberId?? '',
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
//                   margin: EdgeInsets.only(top: 15.h),
//                   child: Column(
//                     children: [
//                       Stack(
//                         children: [
//                           Container(
//                             width: double.infinity,
//                             padding: EdgeInsets.symmetric(
//                               vertical: 9.h,
//                               horizontal: 16.w,
//                             ),
//                             decoration: BoxDecoration(
//                               color: context.appColor.primaryBlue,
//                               borderRadius: BorderRadius.circular(7.r),
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 CustomeText(
//                                   text: "SESSION EN COURS",
//                                   style: context.appTypographie.h2.copyWith(
//                                     fontSize: 15.sp,
//                                     color: Colors.grey.shade400,
//                                     fontWeight: FontWeight.w300,
//                                     height: 1.6.h,
//                                   ),
//                                 ),
//                                 CustomeText(
//                                   text: "Rapport Hebdomadaire Ouvrier",
//                                   style: context.appTypographie.h2.copyWith(
//                                     fontSize: 16.sp,
//                                     color: context.appColor.primaryWhite,
//                                     height: 1.2.h,
//                                   ),
//                                 ),
//                                 SizedBox(height: 5.h),
//                                 Container(
//                                   width: 0.5.sw,
//                                   margin: EdgeInsets.symmetric(vertical: 5.h),
//                                   padding: EdgeInsets.symmetric(
//                                     horizontal: 4.w,
//                                     vertical: 2.h,
//                                   ),
//                                   decoration: BoxDecoration(
//                                     color: context.appColor.primaryWhite
//                                         .withValues(alpha: 0.2),
//                                     borderRadius: BorderRadius.circular(10.r),
//                                   ),
//                                   child: Row(
//                                     children: [
//                                       Icon(
//                                         Icons.calendar_month,
//                                         color: context.appColor.primaryWhite,
//                                       ),
//                                       SizedBox(width: 8.w),
//                                       CustomeText(
//                                         text: "Semaine de cellule",
//                                         style: context.appTypographie.h2
//                                             .copyWith(
//                                               fontSize: 12.sp,
//                                               color: context
//                                                   .appColor
//                                                   .primaryWhite
//                                                   .withValues(alpha: 0.9),
//                                             ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Positioned(
//                             bottom: -19.h,
//                             right: -26.w,
//                             child: Transform.rotate(
//                               angle: 0.3,
//                               child: Icon(
//                                 Icons.assignment,
//                                 color: context.appColor.primaryWhite.withValues(
//                                   alpha: 0.2,
//                                 ),
//                                 size: 100.h,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 16.h),

//                 BlocBuilder<RapportCelluleRequestSectionAdministrationBloc, RapportCelluleRequestSectionAdministrationState>(
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
//                               Icons.account_balance,
//                               color: context.appColor.primaryDarkBlue,
//                             ),
//                             SizedBox(width: 8.w),
//                             CustomeText(
//                               text: "Administration",
//                               style: context.appTypographie.body.copyWith(
//                                 fontSize: 13.sp,
//                                 color: context.appColor.primaryGrayDark,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 16.h),

//                         // SizedBox(height: 12.h),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 Text(
//                                   "Secteur",
//                                   style: context.appTypographie.small.copyWith(
//                                     color: Colors.grey.shade700,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 SizedBox(width: 3.w),
//                               ],
//                             ),
//                             BlocBuilder<
//                               RapportCelluleRequestSectionAdministrationBloc,
//                               RapportCelluleRequestSectionAdministrationState
//                             >(
//                               builder: (context, state) {
//                                 return BlocBuilder<
//                                   GetZoneBloc,
//                                   ApiState<List<ZoneResponse>>
//                                 >(
//                                   builder: (context, zoneState) {
//                                     return BlocBuilder<
//                                       GetSecteurBloc,
//                                       ApiState<List<SecteurResponse>>
//                                     >(
//                                       builder: (context, secteurState) {
//                                         return Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Container(
//                                               margin: EdgeInsets.symmetric(
//                                                 vertical: 4.h,
//                                               ),
//                                               padding: EdgeInsets.symmetric(
//                                                 horizontal: 12,
//                                               ),
//                                               decoration: BoxDecoration(
//                                                 border: Border.all(
//                                                   color:
//                                                       state.codeSecteur.isValid
//                                                       ? context
//                                                             .appColor
//                                                             .primaryLightBlue
//                                                       : Colors.grey.withOpacity(
//                                                           .5,
//                                                         ),
//                                                 ),
//                                                 borderRadius:
//                                                     BorderRadius.circular(10),
//                                               ),
//                                               // statutMenber
//                                               child: DropdownButtonHideUnderline(
//                                                 child: DropdownButton<SecteurResponse>(
//                                                   isExpanded: true,

//                                                   dropdownColor: context
//                                                       .appColor
//                                                       .primaryWhite,
//                                                   hint: Text(
//                                                     "Selectionner une cellule",
//                                                     style: GoogleFonts.roboto(
//                                                       color: Colors.grey,
//                                                       fontSize: 14.sp,
//                                                     ),
//                                                   ),
//                                                   value: selectSecteur,
//                                                   style: GoogleFonts.roboto(
//                                                     color: Colors.black,
//                                                     fontSize: 14.sp,
//                                                   ),
//                                                   icon:
//                                                       secteurState
//                                                           is LoadState<
//                                                             List<
//                                                               SecteurResponse
//                                                             >
//                                                           >
//                                                       ? SizedBox(
//                                                           height: 20.h,
//                                                           width: 20.w,
//                                                           child: CircularProgressIndicator.adaptive(
//                                                             valueColor:
//                                                                 AlwaysStoppedAnimation<
//                                                                   Color
//                                                                 >(
//                                                                   context
//                                                                       .appColor
//                                                                       .primaryBlue,
//                                                                 ),
//                                                             backgroundColor: context
//                                                                 .appColor
//                                                                 .primaryLightBlue,
//                                                           ),
//                                                         )
//                                                       : Icon(
//                                                           Icons
//                                                               .keyboard_arrow_down,
//                                                         ),
//                                                   items:
//                                                       secteurState
//                                                           is SuccessState<
//                                                             List<
//                                                               SecteurResponse
//                                                             >
//                                                           >
//                                                       ? secteurState.data
//                                                             .map(
//                                                               (
//                                                                 item,
//                                                               ) => DropdownMenuItem<SecteurResponse>(
//                                                                 value: item,
//                                                                 child: Column(
//                                                                   crossAxisAlignment:
//                                                                       CrossAxisAlignment
//                                                                           .start,
//                                                                   children: [
//                                                                     SizedBox(
//                                                                       height:
//                                                                           9.h,
//                                                                     ),
//                                                                     Text(
//                                                                       item.secteurResponsableName,
//                                                                       style: GoogleFonts.roboto(
//                                                                         color: Colors
//                                                                             .black,
//                                                                         fontSize:
//                                                                             12.sp,
//                                                                       ),
//                                                                     ),

//                                                                     Text(
//                                                                       item.adresse,
//                                                                       style: GoogleFonts.roboto(
//                                                                         color: Colors
//                                                                             .grey,
//                                                                         fontSize:
//                                                                             0.sp,
//                                                                       ),
//                                                                     ),
//                                                                   ],
//                                                                 ),
//                                                               ),
//                                                             )
//                                                             .toList()
//                                                       : [],
//                                                   onChanged:
//                                                       state.status.isInProgress
//                                                       ? null
//                                                       : (value) {
//                                                           setState(() {
//                                                             selectSecteur =
//                                                                 value;
//                                                           });

//                                                           if (zoneState
//                                                               is SuccessState<
//                                                                 List<
//                                                                   ZoneResponse
//                                                                 >
//                                                               >) {
//                                                             // -----------------------------------------------------------------------
//                                                             //  recuper les information de la zone en fonction de la zone selectionner
//                                                             // -----------------------------------------------------------------------
//                                                             final zoneSelected = zoneState
//                                                                 .data
//                                                                 .where(
//                                                                   (element) =>
//                                                                       element
//                                                                           .zoneCode
//                                                                           ?.toLowerCase() ==
//                                                                       value
//                                                                           ?.zoneCode
//                                                                           .toLowerCase(),
//                                                                 )
//                                                                 .firstOrNull;

//                                                             context
//                                                                 .read<
//                                                                   RapportCelluleRequestSectionAdministrationBloc
//                                                                 >()
//                                                                 .add(
//                                                                   RapportCelluleRequestSectionAdministrationEvent.changeCodeZone(
//                                                                     zoneSelected
//                                                                             ?.zoneCode ??
//                                                                         "",
//                                                                   ),
//                                                                 );
//                                                             context
//                                                                 .read<
//                                                                   RapportCelluleRequestSectionAdministrationBloc
//                                                                 >()
//                                                                 .add(
//                                                                   RapportCelluleRequestSectionAdministrationEvent.changeFullNameRespoZone(
//                                                                     zoneSelected
//                                                                             ?.zoneResponsableName ??
//                                                                         '',
//                                                                   ),
//                                                                 );

//                                                             context
//                                                                 .read<
//                                                                   RapportCelluleRequestSectionAdministrationBloc
//                                                                 >()
//                                                                 .add(
//                                                                   RapportCelluleRequestSectionAdministrationEvent.changeContactRespoZone(
//                                                                     zoneSelected
//                                                                             ?.contactResponsable ??
//                                                                         '',
//                                                                   ),
//                                                                 );
//                                                           }

//                                                           context
//                                                               .read<
//                                                                 RapportCelluleRequestSectionAdministrationBloc
//                                                               >()
//                                                               .add(
//                                                                 RapportCelluleRequestSectionAdministrationEvent.changeCodeSecteur(
//                                                                   value?.secteurCode ??
//                                                                       '',
//                                                                 ),
//                                                               );

//                                                           context
//                                                               .read<
//                                                                 RapportCelluleRequestSectionAdministrationBloc
//                                                               >()
//                                                               .add(
//                                                                 RapportCelluleRequestSectionAdministrationEvent.changeFullNameRespoSecteur(
//                                                                   value?.secteurResponsableName ??
//                                                                       '',
//                                                                 ),
//                                                               );

//                                                           context
//                                                               .read<
//                                                                 RapportCelluleRequestSectionAdministrationBloc
//                                                               >()
//                                                               .add(
//                                                                 RapportCelluleRequestSectionAdministrationEvent.changeContactRespoSecteur(
//                                                                   value?.contactResponsable ??
//                                                                       '',
//                                                                 ),
//                                                               );
//                                                         },
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         );
//                                       },
//                                     );
//                                   },
//                                 );
//                               },
//                             ),
//                             SizedBox(height: 9.h),
//                           ],
//                         ),

//                         BlocBuilder<
//                           RapportCelluleRequestSectionAdministrationBloc,
//                           RapportCelluleRequestSectionAdministrationState
//                         >(
//                           builder: (context, state) {
//                             return ProductionFormCustomer(
//                               readOnly: true,
//                               isColorBlue: state.fullNameRespoCellule.isValid
//                                   ? true
//                                   : false,
//                               controller:
//                                   textEditingControllerNomResponsableCellule,
//                               // textEditingControllerDateNaissance,
//                               inputLabel: "Nom complet de l'ouvrier",
//                               textLabel:
//                                   "Renseigner le nom complet de l'ouvrier",
//                               errorText:
//                                   state.fullNameRespoCellule.isPure ||
//                                       state.fullNameRespoCellule.isValid
//                                   ? null
//                                   : '',
//                               msgError: 'Veuillez renseigner ce champ',
//                               sufixIcon: Icon(
//                                 Icons.person,
//                                 color: context.appColor.primaryBlue,
//                               ),
//                               onChanged: (value) {},
//                             );
//                           },
//                         ),
//                         SizedBox(height: 5.h),
//                         BlocBuilder<
//                           RapportCelluleRequestSectionAdministrationBloc,
//                           RapportCelluleRequestSectionAdministrationState
//                         >(
//                           builder: (context, state) {
//                             return ProductionFormCustomer(
//                               readOnly: true,
//                               isColorBlue: state.jourCellule.isValid
//                                   ? true
//                                   : false,
//                               controller: textEditingControllerDateNaissance,
//                               inputLabel: 'Selctionner une date',
//                               textLabel: "Cliquer sur l'icon juste à droite ",
//                               errorText:
//                                   state.jourCellule.isPure ||
//                                       state.jourCellule.isValid
//                                   ? null
//                                   : '',
//                               msgError: 'Veuillez renseigner ce champ',
//                               sufixIcon: Container(
//                                 margin: EdgeInsets.only(right: 3.w),
//                                 decoration: BoxDecoration(
//                                   color: context.appColor.primaryLightBlue,
//                                   borderRadius: BorderRadius.circular(8.r),
//                                 ),
//                                 child: IconButton(
//                                   onPressed: _openCalendar,
//                                   icon: Icon(
//                                     Icons.calendar_month_sharp,
//                                     color: context.appColor.primaryBlue,
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                         SizedBox(height: 5.h),

//                         BlocBuilder<
//                           RapportCelluleRequestSectionAdministrationBloc,
//                           RapportCelluleRequestSectionAdministrationState
//                         >(
//                           builder: (context, state) {
//                             return ProductionFormCustomer(
//                               readOnly: state.status.isInProgress,
//                               textInputType: TextInputType.phone,
//                               isColorBlue: state.offrande.isValid
//                                   ? true
//                                   : false,
//                               inputLabel: 'Offrande',
//                               textLabel: "Cliquer sur l'icon juste à droite ",
//                               errorText:
//                                   state.offrande.isPure ||
//                                       state.offrande.isValid
//                                   ? null
//                                   : '',
//                               msgError: 'Veuillez renseigner ce champ',
//                               sufixIcon: Icon(
//                                 Icons.monetization_on_outlined,
//                                 color: context.appColor.primaryBlue,
//                               ),
//                               onChanged: (value) {
//                                 context
//                                     .read<
//                                       RapportCelluleRequestSectionAdministrationBloc
//                                     >()
//                                     .add(
//                                       RapportCelluleRequestSectionAdministrationEvent.changeOffrande(
//                                         value,
//                                       ),
//                                     );
//                               },
//                             );
//                           },
//                         ),
//                         SizedBox(height: 16.h),

//                         Row(
//                           children: [
//                             Icon(
//                               Icons.trending_up_outlined,
//                               color: context.appColor.primaryDarkBlue,
//                             ),
//                             SizedBox(width: 8.w),
//                             CustomeText(
//                               text: "Assistance et Statistiques",
//                               style: context.appTypographie.body.copyWith(
//                                 fontSize: 13.sp,
//                                 color: context.appColor.primaryGrayDark,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 8.h),
//                         BlocBuilder<
//                           RapportCelluleRequestSectionAdministrationBloc,
//                           RapportCelluleRequestSectionAdministrationState
//                         >(
//                           builder: (context, state) {
//                             return Container(
//                               height: isChowIcon ? 0.3.sh : 0.12.sh,
//                               child: Scrollbar(
//                                 radius: Radius.circular(10.r),
//                                 child: Expanded(
//                                   child: ListView.builder(
//                                     padding: EdgeInsets.zero,
//                                     itemCount: RequestSectionEffectif.length,
//                                     itemBuilder: (context, index) {
//                                       final RequestSection =
//                                           RequestSectionEffectif[index];
//                                       return Card(
//                                         color: Colors.white,
//                                         elevation: 0.5.h,
//                                         borderOnForeground: true,
//                                         child: ExpansionTile(
//                                           // splashColor: Colors.transparent,
//                                           onExpansionChanged: (value) {
//                                             WidgetsBinding.instance
//                                                 .addPostFrameCallback((_) {
//                                                   setState(() {
//                                                     isChowIcon = !isChowIcon;
//                                                   });
//                                                 });
//                                           },
//                                           initiallyExpanded: isChowIcon,
//                                           tilePadding: EdgeInsets.symmetric(
//                                             horizontal: 16.w,
//                                             vertical: 8.h,
//                                           ),
//                                           iconColor: const Color(0xFF888888),
//                                           shape: Border.all(
//                                             color: Colors.transparent,
//                                           ),
//                                           collapsedShape: Border.all(
//                                             color: Colors.transparent,
//                                           ),
//                                           title: Text(
//                                             RequestSection.title,
//                                             style: GoogleFonts.roboto(
//                                               color: Colors.black,
//                                               fontSize: 14.sp,
//                                               fontWeight: FontWeight.w400,
//                                             ),
//                                           ),
//                                           children: RequestSection.items.map((
//                                             item,
//                                           ) {
//                                             if (item.name.contains("Baptisé")) {
//                                               log(
//                                                 'message ${item.name}${item.count}',
//                                               );
//                                               context
//                                                   .read<
//                                                     RapportCelluleRequestSectionAdministrationBloc
//                                                   >()
//                                                   .add(
//                                                     RapportCelluleRequestSectionAdministrationEvent.changeNombreBaptiser(
//                                                       item.count.toString(),
//                                                     ),
//                                                   );
//                                             } else {
//                                               context
//                                                   .read<
//                                                     RapportCelluleRequestSectionAdministrationBloc
//                                                   >()
//                                                   .add(
//                                                     RapportCelluleRequestSectionAdministrationEvent.changeNombreNonBaptiser(
//                                                       item.count.toString(),
//                                                     ),
//                                                   );
//                                             }
//                                             return Padding(
//                                               padding: EdgeInsets.symmetric(
//                                                 horizontal: 16.w,
//                                                 vertical: 8.h,
//                                               ),
//                                               child: Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 children: [
//                                                   Text(
//                                                     item.name,
//                                                     style: GoogleFonts.roboto(
//                                                       color: Color(0xFF888888),
//                                                       fontSize: 12.sp,
//                                                       fontWeight:
//                                                           FontWeight.w400,
//                                                     ),
//                                                   ),
//                                                   Row(
//                                                     children: [
//                                                       IconButton(
//                                                         icon: Icon(
//                                                           Icons.remove,
//                                                           color: Color(
//                                                             0xFF888888,
//                                                           ),
//                                                         ),
//                                                         onPressed: () {
//                                                           setState(() {
//                                                             if (item.count > 0)
//                                                               item.count--;
//                                                           });
//                                                         },
//                                                       ),

//                                                       Text(
//                                                         item.count.toString(),
//                                                       ),

//                                                       IconButton(
//                                                         icon: Icon(
//                                                           Icons.add,
//                                                           color: Color(
//                                                             0xFF888888,
//                                                           ),
//                                                         ),
//                                                         onPressed: () {
//                                                           setState(() {
//                                                             item.count++;
//                                                           });
//                                                         },
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ],
//                                               ),
//                                             );
//                                           }).toList(),
//                                         ),
//                                       );
//                                     },
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                         Column(
//                           children: [
//                             BlocBuilder<
//                               RapportCelluleRequestSectionAdministrationBloc,
//                               RapportCelluleRequestSectionAdministrationState
//                             >(
//                               builder: (context, state) {
//                                 return CustomeTextFormFieldWithoutBorder(
//                                   textInputType: TextInputType.number,
//                                   readOnly: state.status.isInProgress,
//                                   textLabel: "Le nombre maximum doit être égal à 3",
//                                   errorText: null,
//                                   msgError:
//                                       "Veuillez entrer le nombre de disciple ",
//                                   inputLabel: "Nombre de disciple",
//                                   onChanged: (value) {
//                                     // TODO: Handle the value change
//                                     final number = int.tryParse(value) ?? 1;
//                                     if(number <= 3 ){
//                                        updateNombre2(RequestSection2, number);
//                                     }
//                                   },
//                                 );
//                               },
//                             ),

//                             BlocBuilder<
//                               RapportCelluleRequestSectionAdministrationBloc,
//                               RapportCelluleRequestSectionAdministrationState
//                             >(
//                               builder: (context, state) {
//                                 return Column(
//                                   children: [
//                                     ...List<Widget>.generate(RequestSection2.rows.length, (
//                                       index,
//                                     ) {
//                                       // ─── Récupère le disciple à cet index précis ───
//                                       final currentDisciple =
//                                           state.discipleCelluleList.length >
//                                               index
//                                           ? state.discipleCelluleList[index]
//                                           : null;

//                                       // ─── Validation Nom ───
//                                       // final nomError =
//                                       //     (currentDisciple == null ||
//                                       //         currentDisciple.fullName
//                                       //             .trim()
//                                       //             .isEmpty)
//                                           // ? "Veuillez entrer le nom complet"
//                                           // : null;

//                                       // ─── Validation Baptisé (Oui/Non uniquement) ───
//                                       final baptiseError =
//                                           (currentDisciple == null ||
//                                               !RegExp(
//                                                 r'^(Oui|Non)$',
//                                                 caseSensitive: false,
//                                               ).hasMatch(
//                                                 currentDisciple.isBaptierOrNot
//                                                     .trim(),
//                                               ))
//                                           ? "Veuillez entrer Oui ou Non uniquement"
//                                           : null;

//                                       return Container(
//                                         margin: EdgeInsets.only(bottom: 16.h),
//                                         child: Card(
//                                           color: Colors.white,
//                                           child: Container(
//                                             padding: EdgeInsets.symmetric(
//                                               horizontal: 16.w,
//                                               vertical: 16.h,
//                                             ),
//                                             child: Column(
//                                               children: [
//                                                 Text(
//                                                   "Disciple ${index + 1}",
//                                                   style: context
//                                                       .appTypographie
//                                                       .body
//                                                       .copyWith(
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                       ),
//                                                 ),

//                                                 // ─── Champ Nom ───
//                                                 CustomeTextFormFieldWithoutBorder(
//                                                   readOnly: false,
//                                                   letSpace: [],
//                                                   textLabel:
//                                                       "Veuillez entrer le nom complet",
//                                                   inputLabel: "Nom",
//                                                   errorText: null,
//                                                   onChanged: (val) {
//                                                     _updateDisciple(
//                                                       context: context,
//                                                       index: index,
//                                                       state: state,
//                                                       fullName: val,
//                                                     );
//                                                   },
//                                                   msgError: '',
//                                                 ),

//                                                 SizedBox(height: 9.h),

//                                                 // ─── Champ Baptisé ───
//                                                 CustomeTextFormFieldWithoutBorder(
//                                                   readOnly: false,
//                                                   textLabel:
//                                                       "Veuillez entrer le statut",
//                                                   inputLabel:
//                                                       "Present (Oui/Non)",
//                                                   msgError: "",
//                                                   errorText: baptiseError,
//                                                   textInputType:
//                                                       TextInputType.text,
//                                                   onChanged: (val) {
//                                                     _updateDisciple(
//                                                       context: context,
//                                                       index: index,
//                                                       state: state,
//                                                       isBaptierOrNot: val,
//                                                     );
//                                                   },
//                                                 ),

//                                                 SizedBox(height: 16.h),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       );
//                                     }).toList(),
//                                   ],
//                                 );
//                               },
//                             ),
//                           ],
//                         ),

//                         SizedBox(height: 9.h),

//                         BlocBuilder<
//                           RapportCelluleRequestSectionAdministrationBloc,
//                           RapportCelluleRequestSectionAdministrationState
//                         >(
//                           builder: (context, state) {
//                             return FormNextTeps(
//                               icons: Icons.trending_up_sharp,
//                               title: 'Assistance ',
//                               description: 'Personne présente a la cellule',
//                               isNextForm: state.isValide,
//                             );
//                           },
//                         ),

//                         BlocBuilder<
//                           RapportCelluleRequestSectionAdministrationBloc,
//                           RapportCelluleRequestSectionAdministrationState
//                         >(
//                           builder: (context, state) {
//                             return Container(
//                               margin: EdgeInsets.symmetric(vertical: 20.h),
//                               child: PrimaryButton(
//                                 label: 'Suivant',
//                                 colorText: context.appColor.primaryWhite,
//                                 isLoading: state.status.isInProgress,
//                                 onPressed:
//                                     state.status.isInProgress || !state.isValide
//                                     ? null
//                                     : () {
//                                         log("---------->> Submit");
//                                         FocusScope.of(context).unfocus();
//                                         context
//                                             .read<
//                                               RapportCelluleRequestSectionAdministrationBloc
//                                             >()
//                                             .add(
//                                               RapportCelluleRequestSectionAdministrationEvent.submit(),
//                                             );
//                                       },
//                               ),
//                             );
//                           },
//                         ),
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
