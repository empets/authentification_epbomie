// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:grace_church/core/push_notification/push_notification.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/entities/response/cellule_response.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/get_cellule_usercase.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/get_list_secteur.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/get_list_zone.dart'
//     show GetListZoneUsercase;
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/get_rapport_cellule_usercase.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/rapport_cellule_admine_usercase.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/rapport_cellule_stat_usercase.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/rapport_cellule_state_usercase.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/usecase/rapport_cellule_suggestion_usercase.dart';
// import 'package:grace_church/feature/home/page/bloc/app_launcher/app_launcher_bloc.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:grace_church/core/alert/app_alerte.dart';
// import 'package:grace_church/core/bloc_state/bloc_state.dart';
// import 'package:grace_church/core/custome_widget/button.dart';
// import 'package:grace_church/core/custome_widget/custome_text.dart';
// import 'package:grace_church/core/custome_widget/navigate.dart';
// import 'package:grace_church/core/extension/custome_extension.dart';
// import 'package:grace_church/core/extension/extention.dart';
// import 'package:grace_church/core/injection/injection_container.dart';
// import 'package:grace_church/feature/authen/page/form_geographie.dart';
// import 'package:grace_church/feature/home/domaine/entities/response/home_response.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/cellule_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/event/cellule_event.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/get_responsable_secteur.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/get_responsable_zone.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/event/rapport_cellule_event.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/form_activite_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/form_administraction_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/form_sassistance_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/form_suggestion_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/get_rapport_cellule_bloc.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/page/cellule_form/form_activite.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/page/cellule_form/form_assistance.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/page/cellule_form/form_ouvrier_spritual_live.dart';
// import 'package:grace_church/feature/depatement/cellule/presentation/page/cellule_form/from_administration.dart';
// import 'package:grace_church/gen/assets.gen.dart';

// class CelluleView extends StatefulWidget {
//   const CelluleView({
//     super.key,
//     required this.cellueId,
//     required this.profileState,
//   });
//   final String cellueId;
//   final ApiState<ProfileResponse> profileState;

//   @override
//   State<CelluleView> createState() => _CelluleViewState();
// }

// late bool isResponsableCellule = false;

// class _CelluleViewState extends State<CelluleView> {
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

//   /// Methode: partage la localisation de la cellule
//   /// Parameters: -long -lat
//   /// retour : void
//   /// context : elle permet de partager la localisation de la cellule
//   Future<void> shareCelluleLatLong({
//     required double lat,
//     required double long,
//   }) async {
//     await SharePlus.instance.share(
//       ShareParams(
//         text:
//             'https://www.google.com/maps/@$lat,${long}z?entry=ttu&g_ep=EgoyMDI2MDUwNi4wIKXMDSoASAFQAw%3D%3D',
//       ),
//     );
//   }

//   /// Methode: filtre sur les rapports
//   /// Parameters: -rapports -responsableId
//   /// retour : List<RapportCelluleResponse>
//   /// context: elle permet de recuperer les rapports d'une cellule par responsable
//   List<RapportCelluleResponse> filterRapportsByResponsable({
//     required List<RapportCelluleResponse> rapports,
//     required String responsableId,
//   }) {
//     return rapports
//         .where(
//           (x) => x.responsableCelluleId.trim().toLowerCase().contains(
//             responsableId.trim().toLowerCase(),
//           ),
//         )
//         .toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final contrat = context
//         .select<ConnexionImpliciteBloc, ApiState<ProfileResponse>?>(
//           (bloc) => switch (bloc.state) {
//             SuccessState<ProfileResponse>() => bloc.state,
//             _ => null,
//           },
//         );
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) =>
//               CelluleBloc(getCelluleUsercase: getIt<GetCelluleUsercase>())
//                 ..add(CelluleEvent.fetchByCriteria(celluleId: widget.cellueId)),
//         ),

//         BlocProvider(
//           create: (context) => GetRapportCelluleBloc(
//             getRapportCelluleUsercase: getIt<GetRapportCelluleUsercase>(),
//           ),
//         ),
//       ],

//       child: BlocListener<CelluleBloc, ApiState<List<CelluleResponse>>>(
//         listener: (context, state) {
//           if (state is FailedState<List<CelluleResponse>>) {
//             AppAlert.showError(
//               context,
//               state.message.getOrEmpty(),
//               showOnTop: true,
//             );
//           }
//         },
//         child: Scaffold(
//           backgroundColor: Colors.grey.shade50,
//           appBar: AppBar(
//             backgroundColor: Colors.grey.shade50,
//             leading: IconButton(
//               icon: SvgPicture.asset(assets.images.arrowBack.path),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ),
//           body: BlocBuilder<CelluleBloc, ApiState<List<CelluleResponse>>>(
//             builder: (context, state) {
//               if (state is LoadState<List<CelluleResponse>>) {
//                 return Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Center(
//                       child: CircularProgressIndicator.adaptive(
//                         valueColor: AlwaysStoppedAnimation<Color>(
//                           context.appColor.primaryBlue,
//                         ),
//                         backgroundColor: context.appColor.primaryGray500
//                             .withValues(alpha: 0.3),
//                       ),
//                     ),
//                     SizedBox(height: 19.h),
//                     Text(
//                       "Recupération des données en cours...",
//                       style: context.appTypographie.body.copyWith(
//                         fontSize: 12.sp,
//                         color: context.appColor.primaryBlue,
//                       ),
//                     ),
//                   ],
//                 );
//               }

//               if (state is SuccessState<List<CelluleResponse>>) {
//                 return SafeArea(
//                   child: Container(
//                     margin: EdgeInsets.symmetric(horizontal: 8.w),
//                     alignment: Alignment.center,
//                     child: Column(
//                       children: [
//                         /// ---------------------------
//                         /// information sur le profile
//                         /// ---------------------------
//                         Stack(
//                           children: [
//                             if (widget.profileState
//                                 is SuccessState<ProfileResponse>) ...[
//                               Align(
//                                 alignment: Alignment.center,
//                                 child: Container(
//                                   padding: EdgeInsets.all(5.r),
//                                   decoration: BoxDecoration(
//                                     border: Border.all(
//                                       color: context.appColor.primaryLightBlue,
//                                     ),
//                                     shape: BoxShape.circle,
//                                   ),
//                                   child: ClipOval(
//                                     child: Image.network(
//                                       loadingBuilder:
//                                           (context, child, loadingProgress) {
//                                             return child;
//                                           },
//                                       errorBuilder: (_, __, ___) => ClipOval(
//                                         child: Image.network(
//                                           "yAssets.icons.profileAvatarPlaceholderLarge .path",
//                                           fit: BoxFit.contain,
//                                           height: 0.08.sh,
//                                           width: 0.08.sh,
//                                         ),
//                                       ),
//                                       (widget.profileState
//                                               as SuccessState<ProfileResponse>)
//                                           .data
//                                           .profileImage,
//                                       fit: BoxFit.cover,
//                                       height: 0.1.sh,
//                                       width: 0.1.sh,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ] else ...[
//                               Align(
//                                 alignment: Alignment.center,
//                                 child: Container(
//                                   padding: EdgeInsets.all(5.r),
//                                   decoration: BoxDecoration(
//                                     border: Border.all(
//                                       color: context.appColor.primaryLightBlue,
//                                     ),
//                                     shape: BoxShape.circle,
//                                   ),
//                                   child: ClipOval(
//                                     child: Image.network(
//                                       loadingBuilder:
//                                           (context, child, loadingProgress) {
//                                             return child;
//                                           },
//                                       errorBuilder: (_, __, ___) => ClipOval(
//                                         child: Image.network(
//                                           "yAssets.icons.profileAvatarPlaceholderLarge .path",
//                                           fit: BoxFit.contain,
//                                           height: 0.08.sh,
//                                           width: 0.08.sh,
//                                         ),
//                                       ),
//                                       "https://cdn.pixabay.com/photo/2023/02/18/11/00/icon-7797704_640.png",

//                                       fit: BoxFit.cover,
//                                       height: 0.1.sh,
//                                       width: 0.1.sh,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ],
//                         ),

//                         SizedBox(height: 10.h),

//                         if (widget.profileState
//                             is SuccessState<ProfileResponse>) ...[
//                           CustomeText(
//                             text:
//                                 (widget.profileState
//                                         as SuccessState<ProfileResponse>)
//                                     .data
//                                     .name,
//                             style: context.appTypographie.button.copyWith(
//                               color: context.appColor.primaryGrayDark,
//                               fontSize: 16.sp,
//                             ),
//                           ),

//                           CustomeText(
//                             text:
//                                 (widget.profileState
//                                         as SuccessState<ProfileResponse>)
//                                     .data
//                                     .email,
//                             style: context.appTypographie.button.copyWith(
//                               color: context.appColor.primaryBlue,
//                               fontSize: 14.sp,
//                             ),
//                           ),
//                         ],

//                         //----------------------------------------------------------------------------------------------------------
//                         /// contact responsable
//                         /// context : elle permet de contacter le responsable de la cellule et de partager sa position géolocalisée
//                         //----------------------------------------------------------------------------------------------------------
//                         Container(
//                           margin: EdgeInsets.symmetric(vertical: 10.h),
//                           child: Row(
//                             children: [
//                               Flexible(
//                                 flex: 2,
//                                 child: PrimaryButton(
//                                   label: "Contactez le responsable",
//                                   fontSize: 13.sp,
//                                   iconLeading: true,
//                                   colorText: context.appColor.primaryWhite,
//                                   backgroundColor: context.appColor.primaryBlue,
//                                   onPressed: () => canCallSupport(
//                                     number: state
//                                         .data
//                                         .first
//                                         .contactResponsableCellule,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: 10.w),
//                               Flexible(
//                                 child: PrimaryButton(
//                                   label: "",
//                                   colorText: context.appColor.primaryWhite,
//                                   backgroundColor: context
//                                       .appColor
//                                       .primaryLightBlue
//                                       .withValues(alpha: 0.5),
//                                   icon: Icons.share,
//                                   iconColor: context.appColor.primaryBlue,
//                                   fontSize: 13.sp,
//                                   onPressed: () {
//                                     shareCelluleLatLong(
//                                       lat: state.data.first.latitude,
//                                       long: state.data.first.longitude,
//                                     );
//                                   },
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),

//                         ////-------------------------------------------------------------
//                         /// geolocalisation
//                         /// context : elle permet de géolocaliser la cellule sur la maps
//                         ///-------------------------------------------------------------
//                         Container(
//                           margin: EdgeInsets.symmetric(vertical: 4.h),
//                           padding: EdgeInsets.symmetric(
//                             vertical: 6.h,
//                             horizontal: 9.w,
//                           ),
//                           decoration: BoxDecoration(
//                             color: context.appColor.primaryLightBlue.withValues(
//                               alpha: 0.3,
//                             ),
//                             borderRadius: BorderRadius.circular(10.r),
//                           ),
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Icon(
//                                     Icons.location_on,
//                                     color: context.appColor.primaryBlue,
//                                   ),
//                                   CustomeText(
//                                     text: "Lieu : ${state.data.first.adresse}",
//                                     style: context.appTypographie.button
//                                         .copyWith(
//                                           color:
//                                               context.appColor.primaryGrayDark,
//                                           fontSize: 14.sp,
//                                         ),
//                                   ),
//                                 ],
//                               ),

//                               Row(
//                                 children: [
//                                   ClipRRect(
//                                     borderRadius: BorderRadius.circular(25.r),
//                                     child: Image.asset(
//                                       assets.images.image.path,
//                                       width: 100.h,
//                                       height: 100.h,
//                                     ),
//                                   ),
//                                   SizedBox(width: 15.w),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       CustomeText(
//                                         text: "Nom de la cellule",
//                                         style: context.appTypographie.button
//                                             .copyWith(
//                                               color: context
//                                                   .appColor
//                                                   .primaryGrayDark,
//                                               fontSize: 14.sp,
//                                               fontWeight: FontWeight.w800,
//                                             ),
//                                       ),
//                                       Container(
//                                         width: 0.5.sw,
//                                         child: CustomeText(
//                                           text: state.data.first.nom,
//                                           style: context.appTypographie.button
//                                               .copyWith(
//                                                 color: context
//                                                     .appColor
//                                                     .primaryGray500,
//                                                 fontSize: 14.sp,
//                                               ),
//                                         ),
//                                       ),
//                                       SizedBox(height: 5.h),
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         children: [
//                                           GestureDetector(
//                                             onTap: () {
//                                               Navigator.of(
//                                                 context,
//                                               ).push<dynamic>(
//                                                 fadeRoute(
//                                                   FormGeographie(
//                                                     lat: state
//                                                         .data
//                                                         .first
//                                                         .latitude
//                                                         .toString(),
//                                                     lng: state
//                                                         .data
//                                                         .first
//                                                         .longitude
//                                                         .toString(),
//                                                     adresse: state
//                                                         .data
//                                                         .first
//                                                         .adresse,
//                                                   ),
//                                                 ),
//                                               );
//                                             },
//                                             child: CustomeText(
//                                               text: "Voir plus",
//                                               style: context
//                                                   .appTypographie
//                                                   .button
//                                                   .copyWith(
//                                                     color: context
//                                                         .appColor
//                                                         .primaryBlue,
//                                                     fontSize: 14.sp,
//                                                   ),
//                                             ),
//                                           ),
//                                           SizedBox(width: 10.w),
//                                           Icon(
//                                             Icons
//                                                 .picture_in_picture_alt_outlined,
//                                             color: context.appColor.primaryBlue,
//                                             size: 14.sp,
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),

//                         ////---------------------------
//                         /// espace horaire de cellule
//                         ///---------------------------
//                         Container(
//                           margin: EdgeInsets.symmetric(vertical: 6.h),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               CustomeText(
//                                 text: "Prochaines réunions",
//                                 style: context.appTypographie.button.copyWith(
//                                   color: context.appColor.primaryGrayDark,
//                                   fontSize: 14.sp,
//                                   fontWeight: FontWeight.w800,
//                                 ),
//                               ),
//                               SizedBox(width: 10.w),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             vertical: 9.h,
//                             horizontal: 10.w,
//                           ),
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: context.appColor.primaryGray500.withValues(
//                                 alpha: 0.3,
//                               ),
//                             ),
//                             borderRadius: BorderRadius.circular(10.r),
//                           ),
//                           child: Row(
//                             children: [
//                               Container(
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: 7.w,
//                                   vertical: 7.h,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: context.appColor.primaryLightBlue,
//                                   borderRadius: BorderRadius.circular(5.r),
//                                 ),
//                                 child: Column(
//                                   children: [
//                                     CustomeText(
//                                       text: "JO",
//                                       style: context.appTypographie.button
//                                           .copyWith(
//                                             color: context.appColor.primaryBlue,
//                                             fontSize: 14.sp,
//                                             fontWeight: FontWeight.w800,
//                                           ),
//                                     ),
//                                     CustomeText(
//                                       text: "UR",
//                                       style: context.appTypographie.button
//                                           .copyWith(
//                                             color: context.appColor.primaryBlue,
//                                             fontSize: 14.sp,
//                                             fontWeight: FontWeight.w800,
//                                           ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(width: 10.w),
//                               GestureDetector(
//                                 onTap: () async{
//                                     await PushNotification.schedulerNotification(
//                                 id: 1,
//                                 titre: 'Rappel',
//                                 corps: 'Vous avez une cellule à ${state.data.first.heureCellule}h',
//                                 heure: 17,
//                                 minute: 37,
//                               );
//                                 },
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Row(
//                                       children: [
//                                         CustomeText(
//                                           text:
//                                               "Chaque ${state.data.first.jourCellule}",
//                                           style: context.appTypographie.button
//                                               .copyWith(
//                                                 color: context
//                                                     .appColor
//                                                     .primaryGrayDark,
//                                                 fontSize: 14.sp,
//                                                 fontWeight: FontWeight.w400,
//                                               ),
//                                         ),
//                                         SizedBox(width: 5.w),
//                                         Row(
//                                           children: [
//                                             Icon(
//                                               Icons.access_time_filled_outlined,
//                                               color:
//                                                   context.appColor.primaryGray500,
//                                               size: 16.sp,
//                                             ),
//                                             SizedBox(width: 5.w),
//                                             CustomeText(
//                                               text:
//                                                   "A partir de ${state.data.first.heureCellule}h",
//                                               style: context.appTypographie.button
//                                                   .copyWith(
//                                                     color: context
//                                                         .appColor
//                                                         .primaryGray500,
//                                                     fontSize: 12.sp,
//                                                     fontWeight: FontWeight.w600,
//                                                   ),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
                                
//                                     CustomeText(
//                                       text:
//                                           "Une Notification vous sera envoyé 15 minutes\navant le début de la cellule",
//                                       style: context.appTypographie.button
//                                           .copyWith(
//                                             color:
//                                                 context.appColor.primaryGray500,
//                                             fontSize: 11.sp,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 10.h),

//                         ////-------------------
//                         /// espace predication
//                         ///--------------------
//                         SizedBox(height: 10.h),
//                         BlocBuilder<
//                           GetRapportCelluleBloc,
//                           ApiState<List<RapportCelluleResponse>>
//                         >(
//                           builder: (context, stateRapport) {
//                             if (stateRapport
//                                 is SuccessState<List<RapportCelluleResponse>>) {
//                               stateRapport.data.sort(
//                                 (a, b) => b.dateActivitySubmited.compareTo(
//                                   a.dateActivitySubmited,
//                                 ),
//                               );

//                               /// --------------------------------------------------------------------------
//                               /// cette methode est utilise ici pour recuper la prédication la plus resente
//                               /// --------------------------------------------------------------------------
//                               final filtered = filterRapportsByResponsable(
//                                 rapports: stateRapport.data,
//                                 responsableId:
//                                     (widget.profileState
//                                             as SuccessState<ProfileResponse>)
//                                         .data
//                                         .menberId,
//                               );
//                               return Container(
//                                 height: 0.16.sh,
//                                 child: SingleChildScrollView(
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Align(
//                                         alignment: Alignment.centerLeft,
//                                         child: Text(
//                                           "Prédication de la semaine",
//                                           style: context.appTypographie.body
//                                               .copyWith(
//                                                 fontSize: 14,
//                                                 color: context
//                                                     .appColor
//                                                     .primaryGrayDark,
//                                                 fontWeight: FontWeight.w600,
//                                               ),
//                                         ),
//                                       ),
//                                       CustomeText(
//                                         text: filtered.isNotEmpty
//                                             ? filtered.first.resumerPredication
//                                             : "Aucun rapport trouvé",
//                                         style: context.appTypographie.body
//                                             .copyWith(
//                                               fontSize: 12,
//                                               color: context
//                                                   .appColor
//                                                   .primaryGray500,
//                                             ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               );
//                             }
//                             return Container();
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               }

//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 25.w),
//                     child: SvgPicture.asset(assets.images.problemeRequest.path),
//                   ),
//                   SizedBox(height: 28.h),

//                   Text(
//                     "Une erreur est survenue !",
//                     style: context.appTypographie.body.copyWith(
//                       color: context.appColor.primaryBlue,
//                     ),
//                   ),
//                   SizedBox(height: 14.h),
//                   Container(
//                     margin: EdgeInsets.symmetric(horizontal: 0.17.sw),
//                     child:
//                         BlocBuilder<
//                           CelluleBloc,
//                           ApiState<List<CelluleResponse>>
//                         >(
//                           builder: (context, state) {
//                             return PrimaryButton(
//                               label: "Réessayer",
//                               colorText: Colors.white,
//                               fontSize: 13.sp,
//                               backgroundColor: context.appColor.primaryBlue,
//                               borderRadius: 14.r,
//                               onPressed: () {
//                                 context.read<CelluleBloc>().add(
//                                   CelluleEvent.fetchByCriteria(
//                                     celluleId: widget.cellueId,
//                                   ),
//                                 );
//                               },
//                             );
//                           },
//                         ),
//                   ),
//                 ],
//               );
//             },
//           ),

//           /// -------------------------------------------------------------------------------------------------
//           /// section button action pour une cellule
//           /// context: si le button est activé alors le profile de l'utilisateur est responsable de la cellule
//           /// -------------------------------------------------------------------------------------------------
//           floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//           floatingActionButton: BlocBuilder<CelluleBloc, ApiState<List<CelluleResponse>>>(
//             builder: (context, listCelluleState) {
//               if (listCelluleState is SuccessState<List<CelluleResponse>>) {
//                 if (widget.profileState is SuccessState<ProfileResponse>) {
//                   context.read<GetRapportCelluleBloc>().add(
//                     FecthDataEvent.fetchDataById(
//                       responsableCelluleId:
//                           (widget.profileState as SuccessState<ProfileResponse>)
//                               .data
//                               .menberId,
//                     ),
//                   );
//                   isResponsableCellule = listCelluleState.data.any((element) {
//                     log(
//                       'meberId ${(widget.profileState as SuccessState<ProfileResponse>).data.menberId}.   cellule responsable Id ${element.responsableCelluleId}',
//                     );
//                     return element.responsableCelluleId
//                         .trim()
//                         .toLowerCase()
//                         .contains(
//                           (widget.profileState as SuccessState<ProfileResponse>)
//                               .data
//                               .menberId
//                               .trim()
//                               .toLowerCase(),
//                         );
//                   });

//                   log("isResponsableCellule $isResponsableCellule");

//                   return isResponsableCellule
//                       ? BlocBuilder<
//                           GetRapportCelluleBloc,
//                           ApiState<List<RapportCelluleResponse>>
//                         >(
//                           builder: (context, stateRapport) {
//                             if (stateRapport
//                                 is SuccessState<List<RapportCelluleResponse>>) {
//                               /// -------------------------------------------------------------------------------------------------
//                               /// appelle de la methode de filtre qui permet de recuperé les rapports d'une cellule bien spéficique
//                               /// -------------------------------------------------------------------------------------------------
//                               final filtered = filterRapportsByResponsable(
//                                 rapports: stateRapport.data,
//                                 responsableId:
//                                     (widget.profileState
//                                             as SuccessState<ProfileResponse>)
//                                         .data
//                                         .menberId,
//                               );

//                               if (filtered.isEmpty) {
//                                 return Container();
//                               }

//                               /// ---------------------------------
//                               /// filtre les rapports en cours
//                               /// --------------------------------
//                               final rapportsEnCours = filtered
//                                   .where((x) => x.tag == "en_cours")
//                                   .toList();

//                               return Container(
//                                 margin: EdgeInsets.only(bottom: 10.h),
//                                 child: FloatingActionButton(
//                                   backgroundColor: context.appColor.primaryBlue
//                                       .withValues(alpha: 0.5),
//                                   onPressed: () {
//                                     Navigator.of(context).push(
//                                       fadeRoute(
//                                         MultiBlocProvider(
//                                           providers: [
//                                             // --------------------------------
//                                             // EditingCelluleRaport
//                                             // --------------------------------
//                                             BlocProvider(
//                                               create: (context) =>
//                                                   RapportCelluleRequestSectionAdministrationBloc(
//                                                     sendRapportCelluleStepAdministrationUsercase:
//                                                         getIt<
//                                                           SendRapportCelluleStepAdministrationUsercase
//                                                         >(),
//                                                   ),
//                                             ),
//                                             BlocProvider(
//                                               create: (context) =>
//                                                   GetSecteurBloc(
//                                                     getListSecteurUsercase:
//                                                         getIt<
//                                                           GetListSecteurUsercase
//                                                         >(),
//                                                   )..add(CelluleEvent.fetch()),
//                                             ),
//                                             BlocProvider(
//                                               create: (context) => GetZoneBloc(
//                                                 getListZoneUsercase:
//                                                     getIt<
//                                                       GetListZoneUsercase
//                                                     >(),
//                                               )..add(CelluleEvent.fetch()),
//                                             ),

//                                             // --------------------------------
//                                             // FormStatistic
//                                             // --------------------------------
//                                             BlocProvider(
//                                               create: (context) =>
//                                                   RapportCelluleSectionAssistanceBloc(
//                                                     sendRapportCelluleStepStatUsercase:
//                                                         getIt<
//                                                           SendRapportCelluleStepStatUsercase
//                                                         >(),
//                                                   ),
//                                             ),

//                                             // --------------------------------
//                                             // FormActivite
//                                             // --------------------------------
//                                             BlocProvider(
//                                               create: (context) => FormActiviteBloc(
//                                                 sendRapportCelluleStepAssistantUsercase:
//                                                     getIt<
//                                                       SendRapportCelluleStepAssistantUsercase
//                                                     >(),
//                                               ),
//                                             ),
//                                             // --------------------------------
//                                             // FormOuvrierSpritualLive
//                                             // --------------------------------
//                                             BlocProvider(
//                                               create: (context) => FormSuggestionBloc(
//                                                 sendRapportCelluleStepSuggestionUsercase:
//                                                     getIt<
//                                                       SendRapportCelluleStepSuggestionUsercase
//                                                     >(),
//                                               ),
//                                             ),
//                                           ],
//                                           child: buildFormRapport(
//                                             state:
//                                                 (widget.profileState
//                                                         as SuccessState<
//                                                           ProfileResponse
//                                                         >)
//                                                     .data,
//                                             rapportCellule: rapportsEnCours,
//                                           ),
//                                         ),
//                                       ),
//                                     );
//                                   },
//                                   child: Badge(
//                                     child: Icon(
//                                       Icons.edit,
//                                       color: Colors.white,
//                                     ),
//                                     backgroundColor: Colors.transparent,
//                                     label: Text(
//                                       '',
//                                       style: context.appTypographie.body
//                                           .copyWith(
//                                             color: Colors.white,
//                                             fontSize: 10.sp,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             }
//                             return Container(
//                               margin: EdgeInsets.only(bottom: 10.h),
//                               child: FloatingActionButton(
//                                 backgroundColor: context.appColor.primaryBlue
//                                     .withValues(alpha: 0.5),
//                                 onPressed: () {
//                                   Navigator.of(context).push(
//                                     fadeRoute(
//                                       MultiBlocProvider(
//                                         providers: [
//                                           // --------------------------------
//                                           // EditingCelluleRaport
//                                           // --------------------------------
//                                           BlocProvider(
//                                             create: (context) =>
//                                                 RapportCelluleRequestSectionAdministrationBloc(
//                                                   sendRapportCelluleStepAdministrationUsercase:
//                                                       getIt<
//                                                         SendRapportCelluleStepAdministrationUsercase
//                                                       >(),
//                                                 ),
//                                           ),
//                                           BlocProvider(
//                                             create: (context) => GetSecteurBloc(
//                                               getListSecteurUsercase:
//                                                   getIt<
//                                                     GetListSecteurUsercase
//                                                   >(),
//                                             )..add(CelluleEvent.fetch()),
//                                           ),
//                                           BlocProvider(
//                                             create: (context) => GetZoneBloc(
//                                               getListZoneUsercase:
//                                                   getIt<GetListZoneUsercase>(),
//                                             )..add(CelluleEvent.fetch()),
//                                           ),
//                                         ],
//                                         child: EditingCelluleRaport(
//                                           profile: (contrat is ProfileResponse)
//                                               ? (contrat
//                                                         as SuccessState<
//                                                           ProfileResponse
//                                                         >)
//                                                     .data
//                                               : (widget.profileState
//                                                         as SuccessState<
//                                                           ProfileResponse
//                                                         >)
//                                                     .data,
//                                         ),
//                                       ),
//                                     ),
//                                   );
//                                 },
//                                 child: Badge(
//                                   child: Icon(Icons.edit, color: Colors.white),
//                                   backgroundColor: Colors.transparent,
//                                   label: Text(
//                                     '',
//                                     style: context.appTypographie.body.copyWith(
//                                       color: Colors.white,
//                                       fontSize: 10.sp,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         )
//                       : const SizedBox.shrink();
//                 }
//                 return SizedBox.shrink();
//               }
//               return SizedBox.shrink();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
