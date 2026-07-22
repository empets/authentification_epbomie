// import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:grace_church/feature/depatement/cellule/domaine/entities/response/cellule_response.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';

// import 'package:grace_church/core/extension/custome_extension.dart';
// import 'package:grace_church/core/extension/extention.dart';
// import 'package:grace_church/core/navigator_widget/custome_app_bar.dart';
// import 'package:grace_church/gen/assets.gen.dart';

// class RapportCellulePDFView extends StatelessWidget {
//   RapportCellulePDFView({super.key, required this.rapportCellule});

//   final List<RapportCelluleResponse> rapportCellule;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade50,
//       appBar: AppBar(
//         backgroundColor: Colors.grey.shade50,
//         leading: IconButton(
//           icon: SvgPicture.asset(assets.images.arrowBack.path),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         title: CustomeHeaderTitle(title: 'Rapport de cellule'),
//       ),
//       body: PdfPreview(
//         build: (format) => generatePdf(),
//         loadingWidget: Center(
//           child: CircularProgressIndicator.adaptive(
//             strokeWidth: 2,
//             valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
//             backgroundColor: context.appColor.primaryLightBlue,
//           ),
//         ),
//         useActions: true,
//       ),
//     );
//   }

//   Future<Uint8List> generatePdf() async {
//     final pdf = pw.Document();

//     final listVisiteOuvrier =
//         rapportCellule.first.visiteOuvrier + rapportCellule.last.visiteOuvrier;
//     final listVisiteMembre =
//         rapportCellule.first.visiteMenbre + rapportCellule.last.visiteMenbre;
//     final listSugestion =
//         rapportCellule.first.suggestions + rapportCellule.last.suggestions;

//     final List<Map<String, dynamic>> assistanceItem = [
//       {
//         'label': 'Chrétiens\nNon\nbaptisés',
//         'valueToutPetit': isAllDigits(
//           rapportCellule.first.assistanceNonBaptiser.toutPetit,
//         ),
//         'valueCadets': isAllDigits(
//           rapportCellule.first.assistanceNonBaptiser.cadets,
//         ),
//         'valueJuniors': isAllDigits(
//           rapportCellule.first.assistanceNonBaptiser.juniors,
//         ),
//         'totalSemaine':
//             '${isSumme(
//               numbreOne: rapportCellule.first.assistanceNonBaptiser.toutPetit,
//               numbreThwo: isSumme(numbreOne: rapportCellule.first.assistanceNonBaptiser.juniors, numbreThwo: rapportCellule.first.assistanceNonBaptiser.cadets),
//             )}',

//         'valueToutPetitLast': isAllDigits(
//           rapportCellule.last.assistanceNonBaptiser.toutPetit,
//         ),
//         'valueCadetsLast': isAllDigits(
//           rapportCellule.last.assistanceNonBaptiser.cadets,
//         ),
//         'valueJuniorsLast': isAllDigits(
//           rapportCellule.last.assistanceNonBaptiser.juniors,
//         ),
//         'totalSemaineLast':
//             '${isSumme(
//               numbreOne: rapportCellule.last.assistanceNonBaptiser.toutPetit,
//               numbreThwo: isSumme(numbreOne: rapportCellule.last.assistanceNonBaptiser.juniors, numbreThwo: rapportCellule.last.assistanceNonBaptiser.cadets),
//             )}',

//         'ecart':
//             '${isSoustration(
//               numbreOne: isSumme(numbreOne: rapportCellule.first.assistanceNonBaptiser.juniors, numbreThwo: rapportCellule.first.assistanceNonBaptiser.cadets),
//               numbreThwo: isSumme(
//                 numbreOne: rapportCellule.last.assistanceNonBaptiser.toutPetit,
//                 numbreThwo: isSumme(numbreOne: rapportCellule.last.assistanceNonBaptiser.juniors, numbreThwo: rapportCellule.last.assistanceNonBaptiser.cadets),
//               ),
//             )}',
//       },

//       {
//         'label': 'Nouveaux\n  \n        ',
//         'valueToutPetit': isAllDigits(
//           rapportCellule.first.assistanceNouveau.toutPetit,
//         ),
//         'valueCadets': isAllDigits(
//           rapportCellule.first.assistanceNouveau.cadets,
//         ),
//         'valueJuniors': isAllDigits(
//           rapportCellule.first.assistanceNouveau.juniors,
//         ),
//         'totalSemaine':
//             '${isSumme(
//               numbreOne: rapportCellule.first.assistanceNouveau.toutPetit,
//               numbreThwo: isSumme(numbreOne: rapportCellule.first.assistanceNouveau.juniors, numbreThwo: rapportCellule.first.assistanceNouveau.cadets),
//             )}',
//         'valueToutPetitLast': isAllDigits(
//           rapportCellule.last.assistanceNouveau.toutPetit,
//         ),
//         'valueCadetsLast': isAllDigits(
//           rapportCellule.last.assistanceNouveau.cadets,
//         ),
//         'valueJuniorsLast': isAllDigits(
//           rapportCellule.last.assistanceNouveau.juniors,
//         ),
//         'totalSemaineLast':
//             '${isSumme(
//               numbreOne: rapportCellule.last.assistanceNouveau.toutPetit,
//               numbreThwo: isSumme(numbreOne: rapportCellule.last.assistanceNouveau.juniors, numbreThwo: rapportCellule.last.assistanceNouveau.cadets),
//             )}',
//         'ecart':
//             '${isSoustration(
//               numbreOne: isSumme(numbreOne: rapportCellule.first.assistanceNouveau.juniors, numbreThwo: rapportCellule.first.assistanceNouveau.cadets),
//               numbreThwo: isSumme(
//                 numbreOne: rapportCellule.last.assistanceNouveau.toutPetit,
//                 numbreThwo: isSumme(numbreOne: rapportCellule.last.assistanceNouveau.juniors, numbreThwo: rapportCellule.last.assistanceNouveau.cadets),
//               ),
//             )}',
//       },
//       {
//         'label': 'Invité\n   \n        ',
//         'valueToutPetit': isAllDigits(
//           rapportCellule.first.assistanceInviter.toutPetit,
//         ),
//         'valueCadets': isAllDigits(
//           rapportCellule.first.assistanceInviter.cadets,
//         ),
//         'valueJuniors': isAllDigits(
//           rapportCellule.first.assistanceInviter.juniors,
//         ),
//         'totalSemaine':
//             '${isSumme(
//               numbreOne: rapportCellule.first.assistanceInviter.toutPetit,
//               numbreThwo: isSumme(numbreOne: rapportCellule.first.assistanceInviter.juniors, numbreThwo: rapportCellule.first.assistanceInviter.cadets),
//             )}',
//         'valueToutPetitLast': isAllDigits(
//           rapportCellule.last.assistanceNonBaptiser.toutPetit,
//         ),
//         'valueCadetsLast': isAllDigits(
//           rapportCellule.last.assistanceNonBaptiser.cadets,
//         ),
//         'valueJuniorsLast': isAllDigits(
//           rapportCellule.last.assistanceNonBaptiser.juniors,
//         ),
//         'totalSemaineLast':
//             '${isSumme(
//               numbreOne: rapportCellule.last.assistanceNonBaptiser.toutPetit,
//               numbreThwo: isSumme(numbreOne: rapportCellule.last.assistanceNonBaptiser.juniors, numbreThwo: rapportCellule.last.assistanceNonBaptiser.cadets),
//             )}',
//         'ecart':
//             '${isSoustration(
//               numbreOne: isSumme(numbreOne: rapportCellule.first.assistanceNonBaptiser.juniors, numbreThwo: rapportCellule.first.assistanceNonBaptiser.cadets),
//               numbreThwo: isSumme(
//                 numbreOne: rapportCellule.last.assistanceNonBaptiser.toutPetit,
//                 numbreThwo: isSumme(numbreOne: rapportCellule.last.assistanceNonBaptiser.juniors, numbreThwo: rapportCellule.last.assistanceNonBaptiser.cadets),
//               ),
//             )}',
//       },
//     ];

//     List<Map<String, dynamic>> rapportpdfItem = [
//       {
//         "title": "Totaux",
//         "semaineEncour": '00',
//         "semainePasser": '00',
//         'totalSemainePasser': '00',
//         "totalEcart": '00',
//       },

//       {
//         "title": "Décisionnaires",
//         "semaineEncour": isAllDigits(
//           rapportCellule.first.assistanceCellule.nbDecisionnaires,
//         ),
//         "semainePasser": isAllDigits(
//           rapportCellule.last.assistanceCellule.nbDecisionnaires,
//         ),
//         'totalSemainePasser':
//             '${int.parse(isSumme(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.nbDecisionnaires), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.nbDecisionnaires))).abs()}',
//         "totalEcart":
//             '${isSoustration(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.nbDecisionnaires), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.nbDecisionnaires))}',
//       },
//       {
//         "title": "Nouv. En Formation DFNC",
//         "semaineEncour": isAllDigits(
//           rapportCellule.first.assistanceCellule.formationNewBaptDFD,
//         ),
//         "semainePasser": isAllDigits(
//           rapportCellule.last.assistanceCellule.formationNewBaptDFD,
//         ),
//         'totalSemainePasser':
//             '${int.parse(isSumme(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.formationNewBaptDFD), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.formationNewBaptDFD))).abs()}',
//         "totalEcart":
//             '${isSoustration(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.formationNewBaptDFD), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.formationNewBaptDFD))}',
//       },

//       {
//         "title": "Nouv. Bapt. En Formation DFD",
//         "semaineEncour": isAllDigits(
//           rapportCellule.first.assistanceCellule.formationNewDFB,
//         ),
//         "semainePasser": isAllDigits(
//           rapportCellule.last.assistanceCellule.formationNewDFB,
//         ),
//         'totalSemainePasser':
//             '${int.parse(isSumme(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.formationNewDFB), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.formationNewDFB))).abs()}',
//         "totalEcart":
//             '${isSoustration(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.formationNewDFB), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.formationNewDFB))}',
//       },

//       {
//         "title": "Visites faites aux membres",
//         "semaineEncour": isAllDigits(
//           rapportCellule.first.assistanceCellule.visiteMenbre,
//         ),
//         "semainePasser": isAllDigits(
//           rapportCellule.last.assistanceCellule.visiteMenbre,
//         ),
//         'totalSemainePasser':
//             '${int.parse(isSumme(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.visiteMenbre), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.visiteMenbre))).abs()}',
//         "totalEcart":
//             '${isSoustration(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.visiteMenbre), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.visiteMenbre))}',
//       },
//       {
//         "title": "Visites faites aux disciples",
//         "semaineEncour": isAllDigits(
//           rapportCellule.first.assistanceCellule.visiteDisciple,
//         ),
//         "semainePasser": isAllDigits(
//           rapportCellule.last.assistanceCellule.visiteDisciple,
//         ),
//         'totalSemainePasser':
//             '${int.parse(isSumme(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.visiteDisciple), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.visiteDisciple))).abs()}',
//         "totalEcart":
//             '${isSoustration(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.visiteDisciple), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.visiteDisciple))}',
//       },
//       {
//         "title": "Nbre de travailleurs",
//         "semaineEncour": isAllDigits(
//           rapportCellule.first.assistanceCellule.nbTravailleurs,
//         ),
//         "semainePasser": isAllDigits(
//           rapportCellule.last.assistanceCellule.nbTravailleurs,
//         ),
//         'totalSemainePasser':
//             '${int.parse(isSumme(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.nbTravailleurs), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.nbTravailleurs))).abs()}',
//         "totalEcart":
//             '${isSoustration(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.nbTravailleurs), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.nbTravailleurs))}',
//       },
//       {
//         "title": "Nbre d'élèves et étudiants",
//         "semaineEncour": isAllDigits(
//           rapportCellule.first.assistanceCellule.nbEleveAndEtudiants,
//         ),
//         "semainePasser": isAllDigits(
//           rapportCellule.last.assistanceCellule.nbEleveAndEtudiants,
//         ),
//         'totalSemainePasser':
//             '${int.parse(isSumme(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.nbEleveAndEtudiants), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.nbEleveAndEtudiants))).abs()}',
//         "totalEcart":
//             '${isSoustration(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.nbEleveAndEtudiants), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.nbEleveAndEtudiants))}',
//       },
//       {
//         "title": "Nbre d'ouvrier E.M",
//         "semaineEncour": isAllDigits(
//           rapportCellule.first.assistanceCellule.nbOuvrierEM,
//         ),
//         "semainePasser": isAllDigits(
//           rapportCellule.last.assistanceCellule.nbOuvrierEM,
//         ),
//         'totalSemainePasser':
//             '${int.parse(isSumme(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.nbOuvrierEM), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.nbOuvrierEM))).abs()}',
//         "totalEcart":
//             '${isSoustration(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.nbOuvrierEM), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.nbOuvrierEM))}',
//       },
//       {
//         "title": "Ouv. Autre dépt dirigeant E.M",
//         "semaineEncour": isAllDigits(
//           rapportCellule
//               .first
//               .assistanceCellule
//               .nbOuvrierAutreDepatementDirigeantEM,
//         ),
//         "semainePasser": isAllDigits(
//           rapportCellule
//               .last
//               .assistanceCellule
//               .nbOuvrierAutreDepatementDirigeantEM,
//         ),
//         'totalSemainePasser':
//             '${int.parse(isSumme(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.nbOuvrierAutreDepatementDirigeantEM), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.nbOuvrierAutreDepatementDirigeantEM))).abs()}',
//         "totalEcart":
//             '${isSoustration(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.nbOuvrierAutreDepatementDirigeantEM), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.nbOuvrierAutreDepatementDirigeantEM))}',
//       },
//       {
//         "title": "En formation niveau 2",
//         "semaineEncour": isAllDigits(
//           rapportCellule.first.assistanceCellule.nbFormationNiveau2,
//         ),
//         "semainePasser": isAllDigits(
//           rapportCellule.last.assistanceCellule.nbFormationNiveau2,
//         ),
//         'totalSemainePasser':
//             '${int.parse(isSumme(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.nbFormationNiveau2), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.nbFormationNiveau2))).abs()}',
//         "totalEcart":
//             '${isSoustration(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.nbFormationNiveau2), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.nbFormationNiveau2))}',
//       },
//       {
//         "title": "Agenda de l'EM (Oui ou Non)",
//         "semaineEncour": isAllDigits(
//           rapportCellule.first.assistanceCellule.ngAgendaEM,
//         ),
//         "semainePasser": isAllDigits(
//           rapportCellule.last.assistanceCellule.ngAgendaEM,
//         ),
//         'totalSemainePasser':
//             '${int.parse(isSumme(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.ngAgendaEM), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.ngAgendaEM))).abs()}',
//         "totalEcart":
//             '${isSoustration(numbreOne: isAllDigits(rapportCellule.first.assistanceCellule.ngAgendaEM), numbreThwo: isAllDigits(rapportCellule.last.assistanceCellule.ngAgendaEM))}',
//       },
//     ];

//     final firstweekActivity = rapportCellule.first.weekActivity
//         .map((e) => e)
//         .toList();
//     final lastweekActivity = rapportCellule.last.weekActivity
//         .map((e) => e)
//         .toList();

//     final weekActivity = [...firstweekActivity, ...lastweekActivity];

//     pdf.addPage(
//       pw.Page(
//         pageFormat: PdfPageFormat.a4,
//         margin: const pw.EdgeInsets.all(20),

//         build: (context) {
//           return pw.Container(
//             child: pw.Column(
//               crossAxisAlignment: pw.CrossAxisAlignment.start,
//               children: [
//                 /// HEADER
//                 pw.Container(
//                   padding: pw.EdgeInsets.symmetric(
//                     vertical: 10.h,
//                     horizontal: 10.w,
//                   ),
//                   decoration: pw.BoxDecoration(
//                     border: pw.Border.all(color: PdfColors.blue),
//                     borderRadius: pw.BorderRadius.circular(8.r),
//                     gradient: pw.LinearGradient(
//                       begin: pw.Alignment.topCenter,
//                       end: pw.Alignment.bottomCenter,
//                       colors: [
//                         PdfColors.white,
//                         PdfColor.fromHex("E3F2FD"),
//                         PdfColor.fromHex("90CAF9"),
//                       ],
//                     ),
//                   ),
//                   child: pw.Row(
//                     mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                     children: [
//                       pw.Column(
//                         crossAxisAlignment: pw.CrossAxisAlignment.center,
//                         children: [
//                           pw.Text(
//                             "EGLISE PROTESTANTE BAPTISTE OEUVRES ET MISSIONS INTERNATIONALE",
//                             style: pw.TextStyle(
//                               fontSize: 13.sp,
//                               fontWeight: pw.FontWeight.bold,
//                             ),
//                           ),
//                           pw.Text(
//                             "01 B.P.7184 ABIDJAN 01 / 21 B.P. 1401 ABIDJAN 21 / 03 B.P. 1032 ABIDJAN 03",
//                             style: pw.TextStyle(fontSize: 12.sp),
//                           ),
//                           pw.Column(
//                             mainAxisAlignment: pw.MainAxisAlignment.center,
//                             crossAxisAlignment: pw.CrossAxisAlignment.center,
//                             children: [
//                               pw.Text(
//                                 "BLOC DE L'ENCADREMENT ET DE LA CROISSANCE",
//                                 style: pw.TextStyle(
//                                   fontSize: 12.sp,
//                                   color: PdfColors.red,
//                                   fontWeight: pw.FontWeight.bold,
//                                 ),
//                               ),
//                               pw.Text(
//                                 "EGLISES DE MAISON",
//                                 style: pw.TextStyle(
//                                   fontSize: 12.sp,
//                                   color: PdfColors.blue700,
//                                 ),
//                               ),
//                             ],
//                           ),

//                           pw.Text(
//                             "Tél : 225-0708734672/225-0585054309/225-0102369936/225-0707526646",
//                             style: pw.TextStyle(fontSize: 12.sp),
//                           ),
//                           pw.Row(
//                             children: [
//                               pw.Text(
//                                 "Email : ",
//                                 style: pw.TextStyle(
//                                   fontSize: 12.sp,
//                                   color: PdfColors.black,
//                                   fontWeight: pw.FontWeight.bold,
//                                 ),
//                               ),
//                               pw.Text(
//                                 "ieglisedemaison20@gmail.com/ eglisedemaison@yahoo.fr",
//                                 style: pw.TextStyle(
//                                   fontSize: 12.sp,
//                                   decoration: pw.TextDecoration.underline,
//                                   decorationColor: PdfColors.blue700,
//                                   decorationStyle: pw.TextDecorationStyle.solid,

//                                   color: PdfColors.blue700,
//                                   fontWeight: pw.FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),

//                 pw.Align(
//                   child: pw.Container(
//                     margin: pw.EdgeInsets.only(top: 8.h),
//                     padding: const pw.EdgeInsets.all(10),
//                     decoration: pw.BoxDecoration(
//                       border: pw.Border.all(color: PdfColors.red),
//                       borderRadius: pw.BorderRadius.circular(5),
//                     ),
//                     child: pw.Row(
//                       mainAxisAlignment: pw.MainAxisAlignment.center,
//                       children: [
//                         pw.Text(
//                           "NOUVELLE FICHE DE RAPPORT HEBDOMADAIRE - OUVRIER",
//                           style: pw.TextStyle(
//                             fontSize: 14.sp,
//                             color: PdfColors.red,
//                             fontWeight: pw.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 pw.Align(
//                   child: pw.Container(
//                     margin: pw.EdgeInsets.only(top: 5.h, bottom: 7.h),
//                     padding: const pw.EdgeInsets.all(10),
//                     decoration: pw.BoxDecoration(
//                       border: pw.Border.all(color: PdfColors.red),
//                       color: PdfColors.orange100,
//                       borderRadius: pw.BorderRadius.circular(5),
//                     ),
//                     child: pw.Row(
//                       mainAxisAlignment: pw.MainAxisAlignment.center,
//                       children: [
//                         pw.Text(
//                           "NOUVELLE FICHE DE RAPPORT HEBDOMADAIRE - OUVRIER",
//                           style: pw.TextStyle(
//                             fontSize: 14.sp,
//                             color: PdfColors.blue700,
//                             fontWeight: pw.FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 // TABLEAU ADIMANISTRATION
//                 pw.Container(
//                   margin: pw.EdgeInsets.only(right: 10.h),
//                   child: pw.Row(
//                     children: [
//                       pw.Table(
//                         border: pw.TableBorder.all(color: PdfColors.grey300),
//                         tableWidth: pw.TableWidth.min,
//                         children: [
//                           /// HEADER TABLE
//                           pw.TableRow(
//                             decoration: const pw.BoxDecoration(
//                               color: PdfColors.white,
//                             ),
//                             children: [
//                               tableCell(
//                                 "ENTITE",
//                                 isHeader: true,
//                               ), //<< COLUMNE 1
//                               tableCell("N°", isHeader: true), //<< COLUMNE 3
//                               tableCell(
//                                 "NOM ET PRENOM",
//                                 isHeader: true,
//                               ), //<< COLUMNE 1
//                               tableCell(
//                                 "CONTACT",
//                                 isHeader: true,
//                               ), //<< COLUMNE 1
//                             ],
//                           ),

//                           /// LIGNES
//                           pw.TableRow(
//                             children: [
//                               tableCell("ZONE"), //<< LGINE 1
//                               tableCell(
//                                 rapportCellule.first.codeZone,
//                               ), //<< LGINE 1
//                               tableCell(
//                                 rapportCellule.first.fullNameRespoZone,
//                               ), //<< LGINE 1
//                               tableCell(
//                                 rapportCellule.first.contactRespoZone,
//                               ), //<< LGINE 1
//                             ],
//                           ),
//                           pw.TableRow(
//                             children: [
//                               tableCell("SECTEUE"), //<< LGINE 2
//                               tableCell(
//                                 rapportCellule.first.codeSecteur,
//                               ), //<< LGINE 2
//                               tableCell(
//                                 rapportCellule.first.fullNameRespoSecteur,
//                               ), //<< LGINE 2
//                               tableCell(
//                                 rapportCellule.first.contactRespoSecteur,
//                               ), //<< LGINE 1
//                             ],
//                           ),

//                           pw.TableRow(
//                             children: [
//                               tableCell("Eglise de M."), //<< LGINE 3
//                               tableCell(
//                                 rapportCellule.first.codeCellule,
//                               ), //<< LGINE 3
//                               tableCell(
//                                 rapportCellule.first.fullNameRespoCellule,
//                               ), //<< LGINE 3
//                               tableCell(
//                                 rapportCellule.first.contactRespoCellule,
//                               ), //<< LGINE 1
//                             ],
//                           ),
//                         ],
//                       ),

//                       pw.SizedBox(width: 2.w),

//                       // SECTION DIRECTOION
//                       pw.Table(
//                         border: pw.TableBorder.all(color: PdfColors.grey300),
//                         children: [
//                           pw.TableRow(
//                             decoration: const pw.BoxDecoration(
//                               color: PdfColors.white,
//                             ),
//                             children: [
//                               tableCell(
//                                 "SOUS-DIRECTION",
//                                 isHeader: true,
//                               ), //<< COLUMNE 1
//                               tableCell("", isHeader: true), //<< COLUMNE 3
//                             ],
//                           ),

//                           pw.TableRow(
//                             children: [
//                               tableCell("DATE"), //<< LGINE 1
//                               tableCell(
//                                 rapportCellule.first.jourCellule.substring(
//                                   0,
//                                   10,
//                                 ),
//                               ), //<< LGINE 1
//                             ],
//                           ),
//                           pw.TableRow(
//                             children: [
//                               tableCell("LIEU"), //<< LGINE 1
//                               // tableCell(
//                               //   "rapportCellule.firstssdfsdfdsdsdfsdfdsfsfdsfdsfsfsfsdfsdf",
//                               // ), //<< LGINE 1
//                               pw.Expanded(
//                                 child: pw.Text(
//                                   rapportCellule.first.lieu.isNotEmpty
//                                       ? rapportCellule.first.lieu
//                                       : "Aucun lieu",
//                                   softWrap: true,
//                                   style: pw.TextStyle(
//                                     fontSize: 8.sp,
//                                     fontWeight: pw.FontWeight.normal,
//                                     color: PdfColors.black,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           pw.TableRow(
//                             children: [
//                               tableCell("OFFRANDE"), //<< LGINE 2
//                               tableCell(
//                                 "${double.parse(rapportCellule.first.offrande).parseAmount()} fcfa",
//                               ), //<< LGINE 2
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),

//                 pw.SizedBox(height: 4.h),

//                 // EFFECTIF SECTION
//                 pw.Stack(
//                   children: [
//                     pw.Column(
//                       children: [
//                         pw.Row(
//                           mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                           children: [
//                             pw.Text(
//                               "ASSISTANCE ET DONNEES STATISTIQUES",
//                               style: pw.TextStyle(
//                                 fontWeight: pw.FontWeight.bold,
//                                 color: PdfColors.red,
//                                 fontSize: 9.sp,
//                               ),
//                             ),
//                             pw.Text(
//                               "LISTE DES DISCIPLESDUNOYAU",
//                               style: pw.TextStyle(
//                                 fontWeight: pw.FontWeight.bold,
//                                 color: PdfColors.red,
//                                 fontSize: 9.sp,
//                               ),
//                             ),
//                           ],
//                         ),
//                         pw.Row(
//                           children: [
//                             pw.Column(
//                               crossAxisAlignment: pw.CrossAxisAlignment.start,
//                               children: [
//                                 buildCard(
//                                   padding: pw.EdgeInsets.symmetric(
//                                     horizontal: 43.1.w,
//                                     vertical: 3.h,
//                                   ),
//                                   isDefaultBorder: false,
//                                   customeBorder: pw.Border(
//                                     top: pw.BorderSide(color: PdfColors.grey),
//                                     right: pw.BorderSide(color: PdfColors.grey),
//                                     left: pw.BorderSide(color: PdfColors.grey),
//                                   ),
//                                   child: pw.Row(
//                                     children: [
//                                       pw.Text(
//                                         "EFFECTIF",
//                                         style: pw.TextStyle(
//                                           fontSize: 9.sp,
//                                           fontWeight: pw.FontWeight.bold,
//                                         ),
//                                       ),
//                                       pw.SizedBox(width: 1.w),
//                                     ],
//                                   ),
//                                 ),
//                                 pw.Row(
//                                   children: [
//                                     buildCard(
//                                       padding: pw.EdgeInsets.symmetric(
//                                         horizontal: 13.7.w,
//                                         vertical: 1.7.h,
//                                       ),
//                                       isDefaultBorder: true,
//                                       customeBorder: pw.Border(
//                                         top: pw.BorderSide(
//                                           color: PdfColors.black,
//                                         ),
//                                       ),
//                                       child: pw.Row(
//                                         children: [
//                                           pw.Text(
//                                             "Chrét.Bapt",
//                                             style: pw.TextStyle(fontSize: 9.sp),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     buildCardValue(
//                                       padding: pw.EdgeInsets.symmetric(
//                                         horizontal: 6.9.w,
//                                         vertical: 1.7.h,
//                                       ),
//                                       isDefaultBorder: true,
//                                       customeBorder: pw.Border(
//                                         top: pw.BorderSide(
//                                           color: PdfColors.black,
//                                         ),
//                                       ),
//                                       child: pw.Row(
//                                         children: [
//                                           pw.Text(
//                                             isSumme(
//                                               numbreOne: rapportCellule
//                                                   .first
//                                                   .nombreBaptiser,
//                                               numbreThwo: rapportCellule
//                                                   .last
//                                                   .nombreBaptiser,
//                                             ),
//                                             style: pw.TextStyle(fontSize: 9.sp),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 pw.Row(
//                                   children: [
//                                     buildCard(
//                                       padding: pw.EdgeInsets.symmetric(
//                                         horizontal: 10.4.w,
//                                         vertical: 3.h,
//                                       ),
//                                       isDefaultBorder: true,
//                                       customeBorder: pw.Border(
//                                         top: pw.BorderSide(
//                                           color: PdfColors.black,
//                                         ),
//                                       ),
//                                       child: pw.Row(
//                                         children: [
//                                           pw.Text(
//                                             "Chré.N.Bapt",
//                                             style: pw.TextStyle(fontSize: 9.sp),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     buildCardValue(
//                                       padding: pw.EdgeInsets.symmetric(
//                                         horizontal: 6.9.w,
//                                         vertical: 3.h,
//                                       ),
//                                       isDefaultBorder: true,
//                                       customeBorder: pw.Border(
//                                         top: pw.BorderSide(
//                                           color: PdfColors.black,
//                                         ),
//                                       ),
//                                       child: pw.Row(
//                                         children: [
//                                           pw.Text(
//                                             isSumme(
//                                               numbreOne: rapportCellule
//                                                   .first
//                                                   .nombreNonBaptiser,
//                                               numbreThwo: rapportCellule
//                                                   .last
//                                                   .nombreNonBaptiser,
//                                             ),
//                                             style: pw.TextStyle(fontSize: 9.sp),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 pw.Row(
//                                   children: [
//                                     buildCard(
//                                       padding: pw.EdgeInsets.symmetric(
//                                         horizontal: 24.4.w,
//                                         vertical: 3.h,
//                                       ),
//                                       isDefaultBorder: true,
//                                       customeBorder: pw.Border(
//                                         top: pw.BorderSide(
//                                           color: PdfColors.black,
//                                         ),
//                                       ),
//                                       child: pw.Row(
//                                         mainAxisAlignment:
//                                             pw.MainAxisAlignment.start,
//                                         children: [
//                                           pw.Text(
//                                             "Total",
//                                             style: pw.TextStyle(
//                                               fontSize: 9.sp,
//                                               fontWeight: pw.FontWeight.bold,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     buildCardValue(
//                                       padding: pw.EdgeInsets.symmetric(
//                                         horizontal: 4.w,
//                                         vertical: 3.h,
//                                       ),
//                                       isDefaultBorder: true,
//                                       customeBorder: pw.Border(
//                                         top: pw.BorderSide(
//                                           color: PdfColors.black,
//                                         ),
//                                       ),
//                                       child: pw.Row(
//                                         children: [
//                                           pw.Text(
//                                             ' ${isSumme(
//                                               numbreOne: isSumme(numbreOne: rapportCellule.first.nombreNonBaptiser, numbreThwo: rapportCellule.last.nombreNonBaptiser),
//                                               numbreThwo: isSumme(numbreOne: rapportCellule.first.nombreBaptiser, numbreThwo: rapportCellule.last.nombreBaptiser),
//                                             )}',
//                                             style: pw.TextStyle(fontSize: 9.sp),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             // ROW TOW
//                             pw.Column(
//                               crossAxisAlignment: pw.CrossAxisAlignment.start,
//                               children: [
//                                 buildCard(
//                                   padding: pw.EdgeInsets.symmetric(
//                                     horizontal: 66.w,
//                                     vertical: 0.5.h,
//                                   ),
//                                   isDefaultBorder: false,
//                                   customeBorder: pw.Border(
//                                     top: pw.BorderSide(
//                                       color: PdfColors.grey,
//                                       // style: pw.BorderStyle.solid,
//                                     ),
//                                     right: pw.BorderSide(
//                                       color: PdfColors.grey,
//                                       // style: pw.BorderStyle.solid,
//                                     ),
//                                   ),
//                                   child: pw.Column(
//                                     children: [
//                                       pw.Row(
//                                         children: [
//                                           pw.Text(
//                                             "EGLISE DE MAISON",
//                                             style: pw.TextStyle(
//                                               fontSize: 9.sp,
//                                               fontWeight: pw.FontWeight.bold,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                       pw.SizedBox(height: 6.h),
//                                     ],
//                                   ),
//                                 ),
//                                 pw.Row(
//                                   children: [
//                                     buildCard(
//                                       width: 54.2.w,
//                                       padding: pw.EdgeInsets.symmetric(
//                                         horizontal: 6.5.w,
//                                         vertical: 11.h,
//                                       ),
//                                       isDefaultBorder: true,
//                                       customeBorder: pw.Border(
//                                         top: pw.BorderSide(
//                                           color: PdfColors.black,
//                                           style: pw.BorderStyle.solid,
//                                         ),
//                                       ),
//                                       child: pw.Column(
//                                         children: [
//                                           pw.Text(
//                                             "CETTE",
//                                             style: pw.TextStyle(
//                                               fontSize: 10.sp,
//                                               fontWeight: pw.FontWeight.bold,
//                                             ),
//                                           ),
//                                           pw.Text(
//                                             "SEMAINE",
//                                             style: pw.TextStyle(
//                                               fontSize: 9.sp,
//                                               fontWeight: pw.FontWeight.bold,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),

//                                     buildCard(
//                                       width: 55.w,
//                                       padding: pw.EdgeInsets.symmetric(
//                                         horizontal: 11.4.w,
//                                         vertical: 11.h,
//                                       ),
//                                       isDefaultBorder: true,
//                                       customeBorder: pw.Border(
//                                         top: pw.BorderSide(
//                                           color: PdfColors.black,
//                                           style: pw.BorderStyle.solid,
//                                         ),
//                                       ),
//                                       child: pw.Column(
//                                         children: [
//                                           pw.Text(
//                                             "T",
//                                             style: pw.TextStyle(
//                                               fontSize: 10.sp,
//                                               fontWeight: pw.FontWeight.bold,
//                                             ),
//                                           ),
//                                           pw.Text(
//                                             "T",
//                                             style: pw.TextStyle(
//                                               fontSize: 9.sp,
//                                               color: PdfColors.white,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     buildCard(
//                                       width: 55.w,
//                                       padding: pw.EdgeInsets.symmetric(
//                                         horizontal: 4.w,
//                                         vertical: 11.h,
//                                       ),
//                                       isDefaultBorder: true,
//                                       customeBorder: pw.Border(
//                                         top: pw.BorderSide(
//                                           color: PdfColors.black,
//                                           style: pw.BorderStyle.solid,
//                                         ),
//                                       ),
//                                       child: pw.Column(
//                                         children: [
//                                           pw.Text(
//                                             "SEMAINE",
//                                             style: pw.TextStyle(
//                                               fontSize: 10.sp,
//                                               fontWeight: pw.FontWeight.bold,
//                                             ),
//                                           ),
//                                           pw.Text(
//                                             "PASSEE",
//                                             style: pw.TextStyle(
//                                               fontSize: 9.sp,
//                                               fontWeight: pw.FontWeight.bold,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),

//                                     buildCard(
//                                       width: 55.w,
//                                       padding: pw.EdgeInsets.symmetric(
//                                         horizontal: 11.2.w,
//                                         vertical: 11.h,
//                                       ),
//                                       isDefaultBorder: true,
//                                       customeBorder: pw.Border(
//                                         top: pw.BorderSide(
//                                           color: PdfColors.black,
//                                           style: pw.BorderStyle.solid,
//                                         ),
//                                       ),
//                                       child: pw.Column(
//                                         children: [
//                                           pw.Row(
//                                             children: [
//                                               pw.Text(
//                                                 "T ",
//                                                 style: pw.TextStyle(
//                                                   fontSize: 10.sp,
//                                                   fontWeight:
//                                                       pw.FontWeight.bold,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                           pw.Text(
//                                             "T ",
//                                             style: pw.TextStyle(
//                                               fontSize: 9.sp,
//                                               color: PdfColors.white,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),

//                                     buildCard(
//                                       width: 41.w,
//                                       padding: pw.EdgeInsets.symmetric(
//                                         horizontal: 8.w,
//                                         vertical: 11.h,
//                                       ),
//                                       isDefaultBorder: true,
//                                       customeBorder: pw.Border(
//                                         top: pw.BorderSide(
//                                           color: PdfColors.black,
//                                           style: pw.BorderStyle.solid,
//                                         ),
//                                       ),
//                                       child: pw.Column(
//                                         children: [
//                                           pw.Row(
//                                             children: [
//                                               pw.Text(
//                                                 "ECART",
//                                                 style: pw.TextStyle(
//                                                   fontSize: 10.sp,
//                                                   fontWeight:
//                                                       pw.FontWeight.bold,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                           pw.Text(
//                                             "ECART",
//                                             style: pw.TextStyle(
//                                               fontSize: 9.sp,
//                                               color: PdfColors.white,
//                                             ),
//                                           ),
//                                           // pw.SizedBox(height: 8.h),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         // SUB EFFECTIF SECTION
//                         pw.Row(
//                           children: [
//                             pw.Container(
//                               height: 0.24.sh,
//                               alignment: pw.Alignment.center,
//                               padding: pw.EdgeInsets.symmetric(
//                                 horizontal: 6.w,
//                                 vertical: 10.h,
//                               ),
//                               decoration: pw.BoxDecoration(
//                                 border: pw.Border.all(color: PdfColors.black),
//                               ),
//                               child: pw.Transform.rotateBox(
//                                 angle: 1.57,
//                                 child: pw.Text("ASSISTANCE"),
//                               ),
//                             ),
//                             pw.Column(
//                               mainAxisAlignment: pw.MainAxisAlignment.start,
//                               crossAxisAlignment: pw.CrossAxisAlignment.start,
//                               children: [
//                                 //--->> ROW ASSISTANCE
//                                 pw.Row(
//                                   crossAxisAlignment:
//                                       pw.CrossAxisAlignment.start,
//                                   mainAxisAlignment: pw.MainAxisAlignment.start,
//                                   children: [
//                                     buildCard(
//                                       padding: pw.EdgeInsets.symmetric(
//                                         horizontal: 15.3.w,
//                                         vertical: 5.h,
//                                       ),
//                                       isDefaultBorder: false,
//                                       customeBorder: pw.Border(
//                                         bottom: pw.BorderSide(
//                                           color: PdfColors.black,
//                                           style: pw.BorderStyle.solid,
//                                         ),
//                                       ),
//                                       child: pw.Text(
//                                         "Chrétiens baptisés",
//                                         style: pw.TextStyle(fontSize: 9.sp),
//                                       ),
//                                     ),
//                                     // Columne cette semaine
//                                     pw.Container(
//                                       width: 54.2.w,
//                                       child: buildCardValue(
//                                         width: 53.9.w,
//                                         padding: pw.EdgeInsets.symmetric(
//                                           // horizontal: 4.1.w,
//                                           vertical: 5.h,
//                                         ),
//                                         isDefaultBorder: true,
//                                         customeBorder: pw.Border.all(
//                                           color: PdfColors.grey300,
//                                         ),
//                                         child: pw.Text(
//                                           isAllDigits(
//                                             isSumme(
//                                               numbreOne: rapportCellule
//                                                   .first
//                                                   .nombreBaptiser,
//                                               numbreThwo: '0',
//                                             ),
//                                           ),
//                                           style: pw.TextStyle(fontSize: 9.sp),
//                                         ),
//                                       ),
//                                     ),
//                                     // Columne cette semaine T
//                                     pw.Container(
//                                       width: 28.7.w,
//                                       child: buildCardValue(
//                                         width: 29.1.w,
//                                         padding: pw.EdgeInsets.symmetric(
//                                           // horizontal: 3.w,
//                                           vertical: 5.0.h,
//                                         ),
//                                         isDefaultBorder: true,
//                                         customeBorder: pw.Border.all(
//                                           color: PdfColors.black,
//                                         ),
//                                         child: pw.Text(
//                                           isAllDigits(
//                                             isSumme(
//                                               numbreOne: rapportCellule
//                                                   .first
//                                                   .nombreBaptiser,
//                                               numbreThwo: '0',
//                                             ),
//                                           ),
//                                           style: pw.TextStyle(fontSize: 9.sp),
//                                         ),
//                                       ),
//                                     ),
//                                     // Columne semaine passé width: 55.w,
//                                     pw.Container(
//                                       width: 53.5.w,
//                                       child: buildCardValue(
//                                         padding: pw.EdgeInsets.symmetric(
//                                           horizontal: 3.w,
//                                           vertical: 5.0.h,
//                                         ),
//                                         isDefaultBorder: true,
//                                         customeBorder: pw.Border.all(
//                                           color: PdfColors.black,
//                                         ),
//                                         child: pw.Text(
//                                           isSumme(
//                                             numbreOne: rapportCellule
//                                                 .last
//                                                 .nombreBaptiser,
//                                             numbreThwo: '0',
//                                           ),
//                                           style: pw.TextStyle(fontSize: 9.sp),
//                                         ),
//                                       ),
//                                     ),
//                                     // Columne semaine passé T  width:   width: 55.w,
//                                     pw.Container(
//                                       width: 31.5.w,
//                                       child: buildCardValue(
//                                         padding: pw.EdgeInsets.symmetric(
//                                           horizontal: 5.w,
//                                           vertical: 5.0.h,
//                                         ),
//                                         isDefaultBorder: true,
//                                         customeBorder: pw.Border.all(
//                                           color: PdfColors.black,
//                                         ),
//                                         child: pw.Text(
//                                           isSumme(
//                                             numbreOne: rapportCellule
//                                                 .last
//                                                 .nombreBaptiser,
//                                             numbreThwo: '0',
//                                           ),
//                                           style: pw.TextStyle(fontSize: 9.sp),
//                                         ),
//                                       ),
//                                     ),
//                                     // Columne ecart
//                                     buildCardValue(
//                                       width: 50.w,
//                                       padding: pw.EdgeInsets.symmetric(
//                                         horizontal: 3.w,
//                                         vertical: 5.0.h,
//                                       ),
//                                       isDefaultBorder: true,
//                                       customeBorder: pw.Border.all(
//                                         color: PdfColors.black,
//                                       ),
//                                       child: pw.Text(
//                                         isSoustration(
//                                           numbreOne: rapportCellule
//                                               .first
//                                               .nombreBaptiser,
//                                           numbreThwo: rapportCellule
//                                               .last
//                                               .nombreBaptiser,
//                                         ),
//                                         style: pw.TextStyle(fontSize: 9.sp),
//                                       ),
//                                     ),
//                                   ],
//                                 ),

//                                 //--->> Non chrétiens
//                                 ...List.generate(assistanceItem.length, (
//                                   index,
//                                 ) {
//                                   final assistance = assistanceItem[index];
//                                   return pw.Row(
//                                     crossAxisAlignment:
//                                         pw.CrossAxisAlignment.start,
//                                     mainAxisAlignment:
//                                         pw.MainAxisAlignment.start,
//                                     children: [
//                                       pw.Container(
//                                         height: 49.h,
//                                         width: 45.0.w,
//                                         child: buildCard(
//                                           padding: pw.EdgeInsets.symmetric(
//                                             horizontal: 5.3.w,
//                                             vertical: 12.1.h,
//                                           ),
//                                           isDefaultBorder: true,
//                                           customeBorder: pw.Border.all(
//                                             color: PdfColors.grey300,
//                                           ),
//                                           child: pw.Text(
//                                             assistance['label'] ?? '',
//                                             style: pw.TextStyle(fontSize: 8.sp),
//                                           ),
//                                         ),
//                                       ),
//                                       pw.Column(
//                                         crossAxisAlignment:
//                                             pw.CrossAxisAlignment.start,
//                                         children: [
//                                           pw.Row(
//                                             crossAxisAlignment:
//                                                 pw.CrossAxisAlignment.start,
//                                             mainAxisAlignment:
//                                                 pw.MainAxisAlignment.start,
//                                             children: [
//                                               buildCardValue(
//                                                 width: 60.w,
//                                                 padding:
//                                                     pw.EdgeInsets.symmetric(
//                                                       horizontal: 5.w,
//                                                       vertical: 4.h,
//                                                     ),
//                                                 isDefaultBorder: true,
//                                                 customeBorder: pw.Border.all(
//                                                   color: PdfColors.black,
//                                                 ),
//                                                 child: pw.Text(
//                                                   "Tout-petits",
//                                                   style: pw.TextStyle(
//                                                     fontSize: 8.sp,
//                                                   ),
//                                                 ),
//                                               ),
//                                               // Columne Cette semaine
//                                               pw.Container(
//                                                 height: 16.h,
//                                                 width: 54.2.w,
//                                                 child: buildCardValue(
//                                                   padding:
//                                                       pw.EdgeInsets.symmetric(
//                                                         horizontal: 1.w,
//                                                         // vertical: 4.h,
//                                                       ),
//                                                   isDefaultBorder: true,
//                                                   customeBorder: pw.Border.all(
//                                                     color: PdfColors.black,
//                                                   ),
//                                                   child: pw.Text(
//                                                     assistance['valueToutPetit'],
//                                                     style: pw.TextStyle(
//                                                       fontSize: 8.sp,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                           pw.Row(
//                                             crossAxisAlignment:
//                                                 pw.CrossAxisAlignment.start,
//                                             mainAxisAlignment:
//                                                 pw.MainAxisAlignment.start,
//                                             children: [
//                                               pw.Container(
//                                                 height: 16.h,
//                                                 width: 60.w,
//                                                 child: buildCardValue(
//                                                   padding:
//                                                       pw.EdgeInsets.symmetric(
//                                                         horizontal: 5.w,
//                                                         vertical: 4.h,
//                                                       ),
//                                                   isDefaultBorder: true,
//                                                   customeBorder: pw.Border.all(
//                                                     color: PdfColors.black,
//                                                   ),
//                                                   child: pw.Text(
//                                                     "cadets",
//                                                     style: pw.TextStyle(
//                                                       fontSize: 8.sp,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                               // Columne Cette semaine
//                                               buildCardValue(
//                                                 width: 54.2.w,
//                                                 padding:
//                                                     pw.EdgeInsets.symmetric(
//                                                       horizontal: 1.w,
//                                                       vertical: 4.h,
//                                                     ),
//                                                 isDefaultBorder: true,
//                                                 customeBorder: pw.Border.all(
//                                                   color: PdfColors.black,
//                                                 ),
//                                                 child: pw.Text(
//                                                   assistance['valueCadets'],
//                                                   style: pw.TextStyle(
//                                                     fontSize: 8.sp,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                           pw.Row(
//                                             crossAxisAlignment:
//                                                 pw.CrossAxisAlignment.start,
//                                             mainAxisAlignment:
//                                                 pw.MainAxisAlignment.start,
//                                             children: [
//                                               pw.Container(
//                                                 height: 16.h,
//                                                 width: 60.w,
//                                                 child: buildCardValue(
//                                                   padding:
//                                                       pw.EdgeInsets.symmetric(
//                                                         horizontal: 5.w,
//                                                         vertical: 4.h,
//                                                       ),
//                                                   isDefaultBorder: true,
//                                                   customeBorder: pw.Border.all(
//                                                     color: PdfColors.black,
//                                                   ),
//                                                   child: pw.Text(
//                                                     "Juniors",
//                                                     style: pw.TextStyle(
//                                                       fontSize: 8.sp,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                               // Columne Cette semaine
//                                               buildCardValue(
//                                                 width: 54.2.w,
//                                                 padding:
//                                                     pw.EdgeInsets.symmetric(
//                                                       horizontal: 1.w,
//                                                       vertical: 4.h,
//                                                     ),
//                                                 isDefaultBorder: true,
//                                                 customeBorder: pw.Border.all(
//                                                   color: PdfColors.black,
//                                                 ),
//                                                 child: pw.Text(
//                                                   assistance['valueJuniors'],

//                                                   style: pw.TextStyle(
//                                                     fontSize: 8.sp,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),

//                                       pw.Row(
//                                         crossAxisAlignment:
//                                             pw.CrossAxisAlignment.start,
//                                         children: [
//                                           // Columne Cette semaine T width: 28.7.w,
//                                           pw.Container(
//                                             width: 28.7.w,
//                                             child: buildCardValue(
//                                               width: 29.5.w,
//                                               padding: pw.EdgeInsets.symmetric(
//                                                 horizontal: 1.w,
//                                                 vertical: 20.h,
//                                               ),
//                                               isDefaultBorder: true,
//                                               child: pw.Text(
//                                                 assistance['totalSemaine'],
//                                                 style: pw.TextStyle(
//                                                   fontSize: 8.sp,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           // Columne semaine passe
//                                           pw.Column(
//                                             crossAxisAlignment:
//                                                 pw.CrossAxisAlignment.start,
//                                             children: [
//                                               pw.Container(
//                                                 width: 53.5.w,
//                                                 child: buildCardValue(
//                                                   padding:
//                                                       pw.EdgeInsets.symmetric(
//                                                         horizontal: 1.w,
//                                                         vertical: 4.h,
//                                                       ),
//                                                   isDefaultBorder: true,
//                                                   customeBorder: pw.Border.all(
//                                                     color: PdfColors.black,
//                                                   ),
//                                                   child: pw.Text(
//                                                     assistance['valueToutPetitLast'],

//                                                     style: pw.TextStyle(
//                                                       fontSize: 8.sp,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),

//                                               pw.Container(
//                                                 width: 53.5.w,
//                                                 child: buildCardValue(
//                                                   padding:
//                                                       pw.EdgeInsets.symmetric(
//                                                         horizontal: 1.w,
//                                                         vertical: 4.h,
//                                                       ),
//                                                   isDefaultBorder: true,
//                                                   customeBorder: pw.Border.all(
//                                                     color: PdfColors.black,
//                                                   ),
//                                                   child: pw.Text(
//                                                     assistance['valueCadetsLast'],
//                                                     style: pw.TextStyle(
//                                                       fontSize: 8.sp,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                               pw.Container(
//                                                 width: 53.5.w,
//                                                 child: buildCardValue(
//                                                   padding:
//                                                       pw.EdgeInsets.symmetric(
//                                                         horizontal: 1.w,
//                                                         vertical: 4.h,
//                                                       ),
//                                                   isDefaultBorder: true,
//                                                   customeBorder: pw.Border.all(
//                                                     color: PdfColors.black,
//                                                   ),
//                                                   child: pw.Text(
//                                                     assistance['valueJuniorsLast'],
//                                                     style: pw.TextStyle(
//                                                       fontSize: 8.sp,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                           // Columne semaine passé T
//                                           pw.Container(
//                                             width: 31.5.w,
//                                             child: buildCardValue(
//                                               width: 32.8.w,
//                                               padding: pw.EdgeInsets.symmetric(
//                                                 horizontal: 1.w,
//                                                 vertical: 20.2.h,
//                                               ),
//                                               isDefaultBorder: true,
//                                               child: pw.Text(
//                                                 assistance['totalSemaineLast'],
//                                                 style: pw.TextStyle(
//                                                   fontSize: 8.sp,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),

//                                           // Columne ECART
//                                           buildCardValue(
//                                             width: 50.w,
//                                             padding: pw.EdgeInsets.symmetric(
//                                               horizontal: 1.w,
//                                               vertical: 20.1.h,
//                                             ),
//                                             isDefaultBorder: true,
//                                             child: pw.Text(
//                                               (int.parse(
//                                                         assistance['totalSemaine'],
//                                                       ) -
//                                                       int.parse(
//                                                         assistance['totalSemaineLast'],
//                                                       ))
//                                                   .toString(),
//                                               style: pw.TextStyle(
//                                                 fontSize: 8.sp,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   );
//                                 }),
//                               ],
//                             ),
//                           ],
//                         ),
//                         //
//                         ...List.generate(rapportpdfItem.length, (index) {
//                           final rapportItem = rapportpdfItem[index];
//                           return pw.Row(
//                             children: [
//                               pw.Container(
//                                 width: 130.w,
//                                 child: buildCardValue(
//                                   isDefaultBorder: true,
//                                   child: pw.Text(
//                                     rapportItem['title'],
//                                     style: pw.TextStyle(
//                                       fontWeight: pw.FontWeight.bold,
//                                       fontSize: 7.sp,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               pw.Container(
//                                 width: 83.w,
//                                 child: buildCardValue(
//                                   isDefaultBorder: true,
//                                   child: pw.Text(
//                                     rapportItem["semaineEncour"],
//                                     style: pw.TextStyle(fontSize: 7.sp),
//                                   ),
//                                 ),
//                               ),
//                               // Semaine passer
//                               pw.Container(
//                                 width: 53.4.w,
//                                 child: buildCardValue(
//                                   padding: pw.EdgeInsets.symmetric(
//                                     horizontal: 1.w,
//                                     vertical: 4.h,
//                                   ),
//                                   isDefaultBorder: true,
//                                   customeBorder: pw.Border.all(
//                                     color: PdfColors.black,
//                                   ),
//                                   child: pw.Text(
//                                     rapportItem["semainePasser"],
//                                     style: pw.TextStyle(fontSize: 7.sp),
//                                   ),
//                                 ),
//                               ),
//                               // Columne semaine passé T
//                               buildCardValue(
//                                 width: 31.2.w,
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 1.w,
//                                   vertical: 4.h,
//                                 ),
//                                 isDefaultBorder: true,
//                                 child: pw.Text(
//                                   rapportItem["totalSemainePasser"],
//                                   style: pw.TextStyle(fontSize: 7.sp),
//                                 ),
//                               ),
//                               // Columne ECART
//                               pw.Container(
//                                 width: 51.w,
//                                 child: buildCardValue(
//                                   padding: pw.EdgeInsets.symmetric(
//                                     horizontal: 1.w,
//                                     vertical: 4.h,
//                                   ),
//                                   isDefaultBorder: true,
//                                   child: pw.Text(
//                                     rapportItem["totalEcart"],
//                                     style: pw.TextStyle(fontSize: 7.sp),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           );
//                         }).toList(),
//                       ],
//                     ),
//                     // ----------------------------
//                     // SECTION DES DISCIPLE
//                     // ----------------------------
//                     pw.Positioned(
//                       right: 0.w,
//                       top: 10.h,
//                       child: pw.Column(
//                         crossAxisAlignment: pw.CrossAxisAlignment.start,
//                         children: [
//                           pw.Row(
//                             crossAxisAlignment: pw.CrossAxisAlignment.start,
//                             children: [
//                               pw.Container(
//                                 height: 57.6.h,
//                                 child: buildCard(
//                                   padding: pw.EdgeInsets.symmetric(
//                                     horizontal: 6.w,
//                                     vertical: 24.7.h,
//                                   ),
//                                   isDefaultBorder: false,
//                                   customeBorder: pw.Border.all(
//                                     color: PdfColors.grey,
//                                   ),
//                                   child: pw.Text(
//                                     "N°",
//                                     style: pw.TextStyle(
//                                       fontSize: 9.sp,
//                                       fontWeight: pw.FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ),

//                               buildCard(
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 7.w,
//                                   vertical: 19.8.h,
//                                 ),
//                                 isDefaultBorder: true,
//                                 child: pw.Text(
//                                   "Nom et\nprénoms",
//                                   style: pw.TextStyle(
//                                     fontSize: 9.sp,
//                                     fontWeight: pw.FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                               pw.Column(
//                                 crossAxisAlignment: pw.CrossAxisAlignment.start,
//                                 children: [
//                                   buildCard(
//                                     padding: pw.EdgeInsets.symmetric(
//                                       horizontal: 35.w,
//                                       vertical: 7.h,
//                                     ),
//                                     isDefaultBorder: true,
//                                     child: pw.Text(
//                                       "Status",
//                                       style: pw.TextStyle(
//                                         fontSize: 9.sp,
//                                         fontWeight: pw.FontWeight.bold,
//                                       ),
//                                     ),
//                                   ),
//                                   pw.Row(
//                                     children: [
//                                       buildCard(
//                                         padding: pw.EdgeInsets.symmetric(
//                                           horizontal: 7.w,
//                                           vertical: 12.6.h,
//                                         ),
//                                         isDefaultBorder: true,
//                                         child: pw.Text(
//                                           "Abscent",
//                                           style: pw.TextStyle(
//                                             fontSize: 9.sp,
//                                             fontWeight: pw.FontWeight.bold,
//                                           ),
//                                         ),
//                                       ),
//                                       buildCardValue(
//                                         width: 48.w,
//                                         padding: pw.EdgeInsets.symmetric(
//                                           horizontal: 5.w,
//                                           vertical: 12.6.h,
//                                         ),
//                                         isDefaultBorder: true,
//                                         child: pw.Text(
//                                           "Abscent",
//                                           style: pw.TextStyle(
//                                             fontSize: 9.sp,
//                                             fontWeight: pw.FontWeight.bold,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           ...List.generate(3, (index) {
//                             final disciple =
//                                 index <
//                                     rapportCellule.first.discipleCellule.length
//                                 ? rapportCellule.first.discipleCellule[index]
//                                 : null;
//                             return disciple != null
//                                 ? pw.Column(
//                                     children: [
//                                       pw.Row(
//                                         children: [
//                                           pw.Container(
//                                             height: 48.h,
//                                             child: buildCard(
//                                               padding: pw.EdgeInsets.symmetric(
//                                                 horizontal: 6.w,
//                                                 vertical: 18.h,
//                                               ),
//                                               isDefaultBorder: false,
//                                               customeBorder: pw.Border.all(
//                                                 color: PdfColors.grey,
//                                               ),
//                                               child: pw.Text(
//                                                 "0$index",
//                                                 style: pw.TextStyle(
//                                                   fontSize: 9.sp,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),

//                                           pw.Container(
//                                             height: 48.h,
//                                             child: buildCardValue(
//                                               width: 52.w,
//                                               padding: pw.EdgeInsets.symmetric(
//                                                 horizontal: 4.w,
//                                                 vertical: 4.h,
//                                               ),
//                                               isDefaultBorder: true,
//                                               customeBorder: null,
//                                               child: pw.Flexible(
//                                                 child: pw.Text(
//                                                   disciple.fullName.isNotEmpty
//                                                       ? disciple.fullName
//                                                       : "   ",
//                                                   style: pw.TextStyle(
//                                                     fontSize: 8.sp,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           pw.Container(
//                                             height: 48.h,
//                                             child: buildCardValue(
//                                               width: 49.w,
//                                               padding: pw.EdgeInsets.symmetric(
//                                                 horizontal: 4.w,
//                                                 vertical: 4.h,
//                                               ),
//                                               isDefaultBorder: true,
//                                               child: pw.Text(
//                                                 disciple.isBaptierOrNot
//                                                         .toLowerCase()
//                                                         .contains("oui")
//                                                     ? "Oui"
//                                                     : "  ",
//                                                 style: pw.TextStyle(
//                                                   fontSize: 9.sp,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),

//                                           pw.Container(
//                                             height: 48.h,
//                                             child: buildCardValue(
//                                               width: 49.w,
//                                               padding: pw.EdgeInsets.symmetric(
//                                                 horizontal: 4.w,
//                                                 vertical: 4.h,
//                                               ),
//                                               isDefaultBorder: true,
//                                               child: pw.Text(
//                                                 disciple.isBaptierOrNot
//                                                         .toLowerCase()
//                                                         .contains("oui")
//                                                     ? "Non"
//                                                     : " ",
//                                                 style: pw.TextStyle(
//                                                   fontSize: 9.sp,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   )
//                                 : pw.Column(
//                                     children: [
//                                       pw.Row(
//                                         children: [
//                                           buildCard(
//                                             padding: pw.EdgeInsets.symmetric(
//                                               horizontal: 6.w,
//                                               vertical: 18.h,
//                                             ),
//                                             isDefaultBorder: false,
//                                             customeBorder: pw.Border.all(
//                                               color: PdfColors.grey,
//                                             ),
//                                             child: pw.Text(
//                                               "0$index",
//                                               style: pw.TextStyle(
//                                                 fontSize: 9.sp,
//                                               ),
//                                             ),
//                                           ),
//                                           buildCardValue(
//                                             width: 52.w,
//                                             padding: pw.EdgeInsets.symmetric(
//                                               horizontal: 4.w,
//                                               vertical: 18.h,
//                                             ),
//                                             isDefaultBorder: true,
//                                             customeBorder: null,
//                                             child: pw.Text(
//                                               "Name",
//                                               style: pw.TextStyle(
//                                                 fontSize: 9.sp,
//                                                 color: PdfColors.white,
//                                               ),
//                                             ),
//                                           ),
//                                           buildCardValue(
//                                             width: 49.w,
//                                             padding: pw.EdgeInsets.symmetric(
//                                               horizontal: 4.w,
//                                               vertical: 18.h,
//                                             ),
//                                             isDefaultBorder: true,
//                                             child: pw.Text(
//                                               "N°",
//                                               style: pw.TextStyle(
//                                                 fontSize: 9.sp,
//                                                 color: PdfColors.white,
//                                               ),
//                                             ),
//                                           ),
//                                           buildCardValue(
//                                             width: 49.w,
//                                             padding: pw.EdgeInsets.symmetric(
//                                               horizontal: 4.w,
//                                               vertical: 18.h,
//                                             ),
//                                             isDefaultBorder: true,
//                                             child: pw.Text(
//                                               "N°",
//                                               style: pw.TextStyle(
//                                                 fontSize: 9.sp,
//                                                 color: PdfColors.white,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   );
//                           }),
//                           buildCard(
//                             width: 0.5.sw,
//                             isDefaultBorder: true,
//                             customeBorder: pw.Border.all(color: PdfColors.red),
//                             child: pw.Row(
//                               mainAxisAlignment: pw.MainAxisAlignment.center,
//                               children: [
//                                 pw.SizedBox(width: 30.w),
//                                 pw.Text(
//                                   "ETAT SPIRITUEL DESEM",
//                                   style: pw.TextStyle(
//                                     fontSize: 9.sp,
//                                     color: PdfColors.red,
//                                   ),
//                                 ),
//                                 pw.SizedBox(width: 27.w),
//                               ],
//                             ),
//                           ),

//                           pw.Container(
//                             height: 0.282.sh,
//                             width: 0.475.sw,
//                             child: buildCard(
//                               width: 0.1.sw,
//                               // padding: pw.EdgeInsets.symmetric(
//                               //   horizontal: 3.w,
//                               //   vertical: 7.h,
//                               // ),
//                               isDefaultBorder: true,
//                               customeBorder: pw.Border.all(
//                                 color: PdfColors.red,
//                               ),
//                               child: pw.Column(
//                                 children: [
//                                   // ❌ pw.Expanded dans Column → remplace par pw.Row avec Expanded dedans
//                                   pw.Row(
//                                     crossAxisAlignment:
//                                         pw.CrossAxisAlignment.start,
//                                     children: [
                             
//                                       // ✅ Expanded ici pour contraindre le texte dans le Row
//                                       pw.Expanded(
//                                         child: pw.Text(
//                                           rapportCellule.first.faisAssignaler,
//                                           softWrap: true,
//                                           style: pw.TextStyle(
//                                             fontSize: 8.sp,
//                                             fontWeight: pw.FontWeight.normal,
//                                             color: PdfColors.black,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   pw.SizedBox(height: 3.h,),
//                                   pw.Row(
//                                     crossAxisAlignment:
//                                         pw.CrossAxisAlignment.start,
//                                     children: [
//                                       // ✅ Expanded pour contraindre le texte
//                                       pw.Expanded(
//                                         child: pw.Text(
//                                           rapportCellule
//                                               .last
//                                               .ouvrierSpritualLive,
//                                           softWrap: true,
//                                           style: pw.TextStyle(
//                                             fontSize: 7.sp,
//                                             color: PdfColors.black,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );

//     pdf.addPage(
//       pw.Page(
//         pageFormat: PdfPageFormat.a4,
//         margin: const pw.EdgeInsets.all(20),

//         build: (context) {
//           return pw.Container(
//             child: pw.Column(
//               crossAxisAlignment: pw.CrossAxisAlignment.start,
//               children: [
//                 pw.SizedBox(height: 13.h),

//                 /// ---------------------------------------
//                 /// ACTIVITES FAITES DANS LA SEMAINE : HEADER
//                 /// ---------------------------------------
//                 pw.Stack(
//                   children: [
//                     pw.Column(
//                       children: [
//                         pw.Text(
//                           "ACTIVITES FAITES DANS LA SEMAINE",
//                           style: pw.TextStyle(
//                             fontWeight: pw.FontWeight.bold,
//                             color: PdfColors.red,
//                             fontSize: 10.sp,
//                           ),
//                         ),
//                         pw.SizedBox(height: 5.sp),
//                         ...List.generate(1, (index) {
//                           return pw.Row(
//                             children: [
//                               buildCardValue(
//                                 width: 90.w,
//                                 isDefaultBorder: true,
//                                 child: pw.Text(
//                                   "Date",
//                                   style: pw.TextStyle(
//                                     fontWeight: pw.FontWeight.bold,
//                                     fontSize: 7.sp,
//                                   ),
//                                 ),
//                               ),
//                               buildCardValue(
//                                 width: 190.w,
//                                 isDefaultBorder: true,
//                                 child: pw.Text(
//                                   "Nature du programme",
//                                   style: pw.TextStyle(
//                                     fontSize: 7.sp,
//                                     fontWeight: pw.FontWeight.bold,
//                                     color: PdfColors.black,
//                                   ),
//                                 ),
//                               ),
//                               // Semaine passer
//                               buildCardValue(
//                                 width: 90.w,
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 1.w,
//                                   vertical: 4.h,
//                                 ),
//                                 isDefaultBorder: true,
//                                 customeBorder: pw.Border.all(
//                                   color: PdfColors.black,
//                                 ),
//                                 child: pw.Text(
//                                   "Thème",
//                                   style: pw.TextStyle(
//                                     fontSize: 7.sp,
//                                     fontWeight: pw.FontWeight.bold,
//                                     color: PdfColors.black,
//                                   ),
//                                 ),
//                               ),
//                               // Columne semaine passé T
//                               buildCardValue(
//                                 width: 70.2.w,
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 1.w,
//                                   vertical: 4.h,
//                                 ),
//                                 isDefaultBorder: true,
//                                 child: pw.Text(
//                                   "Orateur",
//                                   style: pw.TextStyle(
//                                     fontSize: 7.sp,
//                                     fontWeight: pw.FontWeight.bold,
//                                     color: PdfColors.black,
//                                   ),
//                                 ),
//                               ),
//                               // Columne ECART
//                               buildCardValue(
//                                 width: 80.w,
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 1.w,
//                                   vertical: 4.h,
//                                 ),
//                                 isDefaultBorder: true,
//                                 child: pw.Text(
//                                   "Lieu",
//                                   style: pw.TextStyle(fontSize: 7.sp),
//                                 ),
//                               ),
//                             ],
//                           );
//                         }).toList(),

//                         /// --------------------------------------
//                         /// ACTIVITES FAITES DANS LA SEMAINE : BODY
//                         /// --------------------------------------
//                         pw.Container(
//                           child: pw.Column(
//                             crossAxisAlignment: pw.CrossAxisAlignment.start,
//                             mainAxisAlignment: pw.MainAxisAlignment.start,
//                             children: [
//                               ...List.generate(weekActivity.length, (index) {
//                                 final item = weekActivity[index];
//                                 return pw.Row(
//                                   children: [
//                                     pw.Container(
//                                       height: 20.h,
//                                       child: buildCardValue(
//                                         width: 90.w,
//                                         isDefaultBorder: true,
//                                         padding: pw.EdgeInsets.symmetric(
//                                           horizontal: 3.w,
//                                           vertical: 4.h,
//                                         ),
//                                         child: pw.Text(
//                                           item.date,
//                                           style: pw.TextStyle(fontSize: 7.sp),
//                                         ),
//                                       ),
//                                     ),
//                                     pw.Container(
//                                       height: 20.h,
//                                       child: buildCardValue(
//                                         width: 190.w,
//                                         isDefaultBorder: true,
//                                         padding: pw.EdgeInsets.symmetric(
//                                           horizontal: 3.w,
//                                           vertical: 4.h,
//                                         ),
//                                         child: pw.Text(
//                                           item.programmeNature,
//                                           style: pw.TextStyle(
//                                             fontSize: 7.sp,
//                                             color: PdfColors.black,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     // Semaine passer
//                                     pw.Container(
//                                       height: 20.h,
//                                       child: buildCardValue(
//                                         isDefaultBorder: true,
//                                         width: 90.w,
//                                         padding: pw.EdgeInsets.symmetric(
//                                           horizontal: 3.w,
//                                           vertical: 4.h,
//                                         ),
//                                         child: pw.Text(
//                                           item.theme,
//                                           style: pw.TextStyle(
//                                             fontSize: 7.sp,
//                                             color: PdfColors.black,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     // Columne semaine passé T
//                                     pw.Container(
//                                       height: 20.h,
//                                       child: buildCardValue(
//                                         isDefaultBorder: true,
//                                         width: 70.2.w,
//                                         padding: pw.EdgeInsets.symmetric(
//                                           horizontal: 1.w,
//                                           vertical: 4.h,
//                                         ),
//                                         child: pw.Text(
//                                           item.orateur,
//                                           style: pw.TextStyle(
//                                             fontSize: 7.sp,
//                                             color: PdfColors.black,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     // Columne ECART
//                                     pw.Container(
//                                       height: 20.h,
//                                       child: buildCardValue(
//                                         width: 80.w,
//                                         isDefaultBorder: true,
//                                         padding: pw.EdgeInsets.symmetric(
//                                           horizontal: 1.w,
//                                           vertical: 4.h,
//                                         ),
//                                         child: pw.Text(
//                                           item.lieu,
//                                           style: pw.TextStyle(
//                                             fontSize: 6.sp,
//                                             color: PdfColors.black,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 );
//                               }).toList(),
//                               pw.Container(color: PdfColors.grey300),
//                             ],
//                           ),
//                         ),

//                         pw.SizedBox(height: 10.h),

//                         /// --------------------------------------
//                         /// VISITES FAITES AUX DISCIPLES : HEADER
//                         /// --------------------------------------
//                         pw.Text(
//                           "VISITES FAITES AUX DISCIPLES",
//                           style: pw.TextStyle(
//                             fontWeight: pw.FontWeight.bold,
//                             color: PdfColors.red,
//                             fontSize: 10.sp,
//                           ),
//                         ),
//                         pw.SizedBox(height: 5.sp),
//                         ...List.generate(1, (index) {
//                           return pw.Row(
//                             children: [
//                               buildCardValue(
//                                 width: 90.w,
//                                 isDefaultBorder: true,
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 5.w,
//                                   vertical: 4.h,
//                                 ),
//                                 child: pw.Text(
//                                   "N°",
//                                   style: pw.TextStyle(
//                                     fontWeight: pw.FontWeight.bold,
//                                     fontSize: 7.sp,
//                                   ),
//                                 ),
//                               ),
//                               buildCardValue(
//                                 width: 190.w,
//                                 isDefaultBorder: true,
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 5.w,
//                                   vertical: 4.h,
//                                 ),
//                                 child: pw.Text(
//                                   "Nom et Prénoms",
//                                   style: pw.TextStyle(
//                                     fontSize: 7.sp,
//                                     fontWeight: pw.FontWeight.bold,
//                                     color: PdfColors.black,
//                                   ),
//                                 ),
//                               ),
//                               // Semaine passer
//                               buildCardValue(
//                                 width: 119.w,
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 5.w,
//                                   vertical: 4.h,
//                                 ),
//                                 isDefaultBorder: true,
//                                 customeBorder: pw.Border.all(
//                                   color: PdfColors.black,
//                                 ),
//                                 child: pw.Text(
//                                   "Problèmes",
//                                   style: pw.TextStyle(
//                                     fontSize: 7.sp,
//                                     fontWeight: pw.FontWeight.bold,
//                                     color: PdfColors.black,
//                                   ),
//                                 ),
//                               ),
//                               // Columne semaine passé T
//                               buildCardValue(
//                                 width: 119.9.w,
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 5.w,
//                                   vertical: 4.h,
//                                 ),
//                                 isDefaultBorder: true,

//                                 child: pw.Text(
//                                   "Recommandations",
//                                   style: pw.TextStyle(
//                                     fontSize: 7.sp,
//                                     fontWeight: pw.FontWeight.bold,
//                                     color: PdfColors.black,
//                                   ),
//                                 ),
//                               ),

//                               // Columne ECART
//                             ],
//                           );
//                         }).toList(),

//                         /// --------------------------------------
//                         /// VISITES FAITES AUX DISCIPLES : BODY
//                         /// --------------------------------------
//                         pw.Container(
//                           child: pw.Column(
//                             crossAxisAlignment: pw.CrossAxisAlignment.start,
//                             mainAxisAlignment: pw.MainAxisAlignment.start,
//                             children: [
//                               ...List.generate(listVisiteOuvrier.length, (
//                                 index,
//                               ) {
//                                 final visiteOuvrier =
//                                     index < listVisiteOuvrier.length
//                                     ? listVisiteOuvrier[index]
//                                     : null;

//                                 if (visiteOuvrier != null &&
//                                     visiteOuvrier.fullname.isNotEmpty) {
//                                   return pw.Row(
//                                     children: [
//                                       pw.Container(
//                                         height: 40.h,
//                                         child: buildCardValue(
//                                           width: 90.w,
//                                           isDefaultBorder: true,
//                                           padding: pw.EdgeInsets.symmetric(
//                                             horizontal: 5.w,
//                                             vertical: 4.h,
//                                           ),
//                                           child: pw.Text(
//                                             "${index}",
//                                             style: pw.TextStyle(fontSize: 7.sp),
//                                           ),
//                                         ),
//                                       ),
//                                       pw.Container(
//                                         height: 40.h,
//                                         child: buildCardValue(
//                                           width: 190.w,
//                                           isDefaultBorder: true,
//                                           padding: pw.EdgeInsets.symmetric(
//                                             horizontal: 5.w,
//                                             vertical: 4.h,
//                                           ),
//                                           child: pw.Text(
//                                             visiteOuvrier.fullname,
//                                             style: pw.TextStyle(fontSize: 7.sp),
//                                           ),
//                                         ),
//                                       ),
//                                       // Semaine passer
//                                       pw.Container(
//                                         height: 40.h,
//                                         child: buildCardValue(
//                                           width: 119.w,
//                                           padding: pw.EdgeInsets.symmetric(
//                                             horizontal: 5.w,
//                                             vertical: 4.h,
//                                           ),
//                                           isDefaultBorder: true,
//                                           child: pw.Text(
//                                             visiteOuvrier.probleme,
//                                             style: pw.TextStyle(fontSize: 7.sp),
//                                           ),
//                                         ),
//                                       ),
//                                       // Columne semaine passé T
//                                       pw.Container(
//                                         height: 40.h,
//                                         child: buildCardValue(
//                                           width: 119.9.w,
//                                           padding: pw.EdgeInsets.symmetric(
//                                             horizontal: 5.w,
//                                             vertical: 4.h,
//                                           ),
//                                           isDefaultBorder: true,
//                                           child: pw.Text(
//                                             visiteOuvrier.recommandation,
//                                             style: pw.TextStyle(fontSize: 7.sp),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   );
//                                 }

//                                 return pw.SizedBox();
//                               }).toList(),
//                               // pw.Container(color: PdfColors.grey300),
//                             ],
//                           ),
//                         ),

//                         /// --------------------------------------
//                         /// VISITES FAITES AUX MENBRES : HEADER
//                         /// --------------------------------------
//                         pw.SizedBox(height: 10.sp),
//                         pw.Text(
//                           "VISITES FAITES AUX MENBRES",
//                           style: pw.TextStyle(
//                             fontWeight: pw.FontWeight.bold,
//                             color: PdfColors.red,
//                             fontSize: 10.sp,
//                           ),
//                         ),
//                         pw.SizedBox(height: 5.sp),
//                         ...List.generate(1, (index) {
//                           return pw.Row(
//                             children: [
//                               buildCardValue(
//                                 width: 90.w,
//                                 isDefaultBorder: true,
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 5.w,
//                                   vertical: 4.h,
//                                 ),
//                                 child: pw.Text(
//                                   "N°",
//                                   style: pw.TextStyle(
//                                     fontWeight: pw.FontWeight.bold,
//                                     fontSize: 7.sp,
//                                   ),
//                                 ),
//                               ),
//                               buildCardValue(
//                                 width: 190.w,
//                                 isDefaultBorder: true,
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 5.w,
//                                   vertical: 4.h,
//                                 ),
//                                 child: pw.Text(
//                                   "Nom et Prénoms",
//                                   style: pw.TextStyle(
//                                     fontSize: 7.sp,
//                                     fontWeight: pw.FontWeight.bold,
//                                     color: PdfColors.black,
//                                   ),
//                                 ),
//                               ),
//                               // Semaine passer
//                               buildCardValue(
//                                 width: 119.w,
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 5.w,
//                                   vertical: 4.h,
//                                 ),
//                                 isDefaultBorder: true,
//                                 customeBorder: pw.Border.all(
//                                   color: PdfColors.black,
//                                 ),
//                                 child: pw.Text(
//                                   "Problèmes",
//                                   style: pw.TextStyle(
//                                     fontSize: 7.sp,
//                                     fontWeight: pw.FontWeight.bold,
//                                     color: PdfColors.black,
//                                   ),
//                                 ),
//                               ),
//                               // Columne semaine passé T
//                               buildCardValue(
//                                 width: 119.9.w,
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 5.w,
//                                   vertical: 4.h,
//                                 ),
//                                 isDefaultBorder: true,
//                                 child: pw.Text(
//                                   "Recommandations",
//                                   style: pw.TextStyle(
//                                     fontSize: 7.sp,
//                                     fontWeight: pw.FontWeight.bold,
//                                     color: PdfColors.black,
//                                   ),
//                                 ),
//                               ),

//                               // Columne ECART
//                             ],
//                           );
//                         }).toList(),

//                         /// --------------------------------------
//                         /// VISITES FAITES AUX MENBRES : BODY
//                         /// --------------------------------------
//                         pw.Container(
//                           child: pw.Column(
//                             crossAxisAlignment: pw.CrossAxisAlignment.start,
//                             mainAxisAlignment: pw.MainAxisAlignment.start,
//                             children: [
//                               ...List.generate(listVisiteMembre.length, (
//                                 index,
//                               ) {
//                                 final viseteMenbre =
//                                     index < listVisiteMembre.length
//                                     ? listVisiteMembre[index]
//                                     : null;

//                                 if (viseteMenbre != null &&
//                                     viseteMenbre.fullname.isNotEmpty) {
//                                   return pw.Row(
//                                     children: [
//                                       pw.Container(
//                                         height: 40.h,
//                                         child: buildCardValue(
//                                           width: 90.w,
//                                           isDefaultBorder: true,
//                                           padding: pw.EdgeInsets.symmetric(
//                                             horizontal: 3.w,
//                                             vertical: 4.h,
//                                           ),
//                                           child: pw.Text(
//                                             "${index + 0}",
//                                             style: pw.TextStyle(fontSize: 7.sp),
//                                           ),
//                                         ),
//                                       ),
//                                       pw.Container(
//                                         height: 40.h,
//                                         child: buildCardValue(
//                                           width: 190.w,
//                                           isDefaultBorder: true,
//                                           padding: pw.EdgeInsets.symmetric(
//                                             horizontal: 3.w,
//                                             vertical: 4.h,
//                                           ),
//                                           child: pw.Text(
//                                             viseteMenbre.fullname,
//                                             style: pw.TextStyle(fontSize: 7.sp),
//                                           ),
//                                         ),
//                                       ),
//                                       // Semaine passer
//                                       pw.Container(
//                                         height: 40.h,
//                                         child: buildCardValue(
//                                           width: 119.w,
//                                           padding: pw.EdgeInsets.symmetric(
//                                             horizontal: 3.w,
//                                             vertical: 4.h,
//                                           ),
//                                           isDefaultBorder: true,
//                                           child: pw.Text(
//                                             viseteMenbre.probleme,
//                                             style: pw.TextStyle(fontSize: 7.sp),
//                                           ),
//                                         ),
//                                       ),
//                                       // Columne semaine passé T
//                                       pw.Container(
//                                         height: 40.h,
//                                         child: buildCardValue(
//                                           width: 119.9.w,
//                                           padding: pw.EdgeInsets.symmetric(
//                                             horizontal: 3.w,
//                                             vertical: 4.h,
//                                           ),
//                                           isDefaultBorder: true,
//                                           child: pw.Text(
//                                             viseteMenbre.recommandation,
//                                             style: pw.TextStyle(fontSize: 7.sp),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   );
//                                 }

//                                 return pw.SizedBox.shrink();
//                               }).toList(),
//                               // pw.Container(color: PdfColors.grey300),
//                             ],
//                           ),
//                         ),

//                         /// --------------------------------------
//                         /// VISITES FAITES AUX SUGGESTION : HEADER
//                         /// --------------------------------------
//                         pw.SizedBox(height: 9.sp),
//                         ...List.generate(1, (index) {
//                           return pw.Row(
//                             children: [
//                               buildCardValue(
//                                 width: 180.w,
//                                 isDefaultBorder: true,
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 5.w,
//                                   vertical: 4.h,
//                                 ),
//                                 child: pw.Text(
//                                   "Témoignages-Evènements-Dons-Aides",
//                                   style: pw.TextStyle(
//                                     fontWeight: pw.FontWeight.bold,
//                                     fontSize: 7.sp,
//                                   ),
//                                 ),
//                               ),
//                               buildCardValue(
//                                 width: 139.w,
//                                 isDefaultBorder: true,
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 5.w,
//                                   vertical: 4.h,
//                                 ),
//                                 child: pw.Text(
//                                   "Suggestion",
//                                   style: pw.TextStyle(
//                                     fontSize: 7.sp,
//                                     fontWeight: pw.FontWeight.bold,
//                                     color: PdfColors.black,
//                                   ),
//                                 ),
//                               ),
//                               // Semaine passer
//                               buildCardValue(
//                                 width: 200.w,
//                                 padding: pw.EdgeInsets.symmetric(
//                                   horizontal: 5.w,
//                                   vertical: 4.h,
//                                 ),
//                                 isDefaultBorder: true,
//                                 customeBorder: pw.Border.all(
//                                   color: PdfColors.black,
//                                 ),
//                                 child: pw.Text(
//                                   "Problème personnel de l'ouvrier",
//                                   style: pw.TextStyle(
//                                     fontSize: 7.sp,
//                                     fontWeight: pw.FontWeight.bold,
//                                     color: PdfColors.black,
//                                   ),
//                                 ),
//                               ),
//                               // Columne semaine passé T

//                               // Columne ECART
//                             ],
//                           );
//                         }).toList(),

//                         /// --------------------------------------
//                         ///  SUGGESTIONS : BODY
//                         /// --------------------------------------
//                         pw.Container(
//                           child: pw.Column(
//                             crossAxisAlignment: pw.CrossAxisAlignment.start,
//                             mainAxisAlignment: pw.MainAxisAlignment.start,
//                             children: [
//                               ...List.generate(listSugestion.length, (index) {
//                                 final sugestion = index < listSugestion.length
//                                     ? listSugestion[index]
//                                     : null;

//                                 if (sugestion != null &&
//                                     sugestion.probleme.isNotEmpty) {
//                                   return pw.Row(
//                                     children: [
//                                       pw.Container(
//                                         height: 20.h,
//                                         child: buildCardValue(
//                                           width: 180.w,
//                                           isDefaultBorder: true,
//                                           child: pw.Text(
//                                             sugestion.temoignage,
//                                             style: pw.TextStyle(fontSize: 7.sp),
//                                           ),
//                                         ),
//                                       ),
//                                       pw.Container(
//                                         height: 20.h,
//                                         child: buildCardValue(
//                                           width: 139.w,
//                                           isDefaultBorder: true,
//                                           padding: pw.EdgeInsets.symmetric(
//                                             horizontal: 5.w,
//                                             vertical: 4.h,
//                                           ),
//                                           child: pw.Text(
//                                             sugestion.suggestions,
//                                             style: pw.TextStyle(fontSize: 7.sp),
//                                           ),
//                                         ),
//                                       ),
//                                       // Semaine passer
//                                       pw.Container(
//                                         height: 20.h,
//                                         child: buildCardValue(
//                                           width: 200.w,
//                                           padding: pw.EdgeInsets.symmetric(
//                                             horizontal: 5.w,
//                                             vertical: 4.h,
//                                           ),
//                                           isDefaultBorder: true,
//                                           child: pw.Text(
//                                             sugestion.probleme,
//                                             style: pw.TextStyle(fontSize: 7.sp),
//                                           ),
//                                         ),
//                                       ),

//                                       // Columne semaine passé T
//                                     ],
//                                   );
//                                 }

//                                 return pw.SizedBox();
//                               }).toList(),
//                               // pw.Container(color: PdfColors.grey300),
//                             ],
//                           ),
//                         ),

//                         pw.SizedBox(height: 10.h),
//                         pw.Text(
//                           "PROJETS ET AUTRES FAITS A SIGNALER",
//                           style: pw.TextStyle(
//                             fontWeight: pw.FontWeight.bold,
//                             color: PdfColors.red,
//                             fontSize: 10.sp,
//                           ),
//                         ),
//                         pw.SizedBox(height: 5.h),
//                         pw.Container(
//                           height: 0.12.sh,
//                           child: buildCardValue(
//                             width: double.infinity,
//                             isDefaultBorder: true,
//                             padding: pw.EdgeInsets.symmetric(
//                               horizontal: 5.w,
//                               vertical: 5.h,
//                             ),
//                             child: pw.Column(
//                               children: [
//                                 pw.Row(
//                                   children: [
//                                     pw.Padding(
//                                       padding: pw.EdgeInsets.symmetric(
//                                         horizontal: 5.w,
//                                       ),
//                                       child: pw.Text(
//                                         "---",
//                                         style: pw.TextStyle(
//                                           fontSize: 8.sp,
//                                           fontWeight: pw.FontWeight.bold,
//                                           color: PdfColors.black,
//                                         ),
//                                       ),
//                                     ),
//                                     // ✅ Expanded + SizedBox pour contraindre la largeur
//                                     pw.Expanded(
//                                       child: pw.Text(
//                                         rapportCellule.first.faisAssignaler,
//                                         softWrap: true,
//                                         style: pw.TextStyle(
//                                           fontSize: 8.sp,
//                                           fontWeight: pw.FontWeight.normal,
//                                           color: PdfColors.black,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 pw.Row(
//                                   children: [
//                                     pw.Padding(
//                                       padding: pw.EdgeInsets.symmetric(
//                                         horizontal: 5.w,
//                                       ),
//                                       child: pw.Text(
//                                         "---",
//                                         style: pw.TextStyle(
//                                           fontSize: 8.sp,
//                                           fontWeight: pw.FontWeight.bold,
//                                           color: PdfColors.black,
//                                         ),
//                                       ),
//                                     ),
//                                     // ✅ Même chose ici
//                                     pw.Expanded(
//                                       child: pw.Text(
//                                         rapportCellule.last.faisAssignaler,
//                                         softWrap: true,
//                                         style: pw.TextStyle(
//                                           fontSize: 8.sp,
//                                           fontWeight: pw.FontWeight.normal,
//                                           color: PdfColors.black,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         pw.SizedBox(height: 5.h),
//                         pw.Align(
//                           alignment: pw.Alignment.centerRight,
//                           child: pw.Text(
//                             "CONTACT ET SIGNATURE DEL'OUVRIER(E)",
//                             style: pw.TextStyle(
//                               fontWeight: pw.FontWeight.bold,
//                               color: PdfColors.black,
//                               fontSize: 10.sp,
//                               decoration: pw.TextDecoration.underline,
//                             ),
//                           ),
//                         ),
//                         pw.Row(
//                           mainAxisAlignment: pw.MainAxisAlignment.end,
//                           children: [
//                             pw.Text(
//                               "CONTACT: ",
//                               style: pw.TextStyle(
//                                 fontWeight: pw.FontWeight.bold,
//                                 color: PdfColors.black,
//                                 fontSize: 9.sp,
//                               ),
//                             ),
//                             pw.Text(
//                               rapportCellule.first.contactRespoCellule,
//                               style: pw.TextStyle(
//                                 fontWeight: pw.FontWeight.bold,
//                                 color: PdfColors.black,
//                                 fontSize: 10.sp,
//                               ),
//                             ),
//                           ],
//                         ),

//                         pw.Row(
//                           mainAxisAlignment: pw.MainAxisAlignment.end,
//                           children: [
//                             pw.Text(
//                               "SIGNATURE:",
//                               style: pw.TextStyle(
//                                 fontWeight: pw.FontWeight.bold,
//                                 color: PdfColors.black,
//                                 fontSize: 9.sp,
//                               ),
//                             ),
//                             pw.Text(
//                               "07-88-88-19-30",
//                               style: pw.TextStyle(
//                                 fontWeight: pw.FontWeight.bold,
//                                 color: PdfColors.white,
//                                 fontSize: 10.sp,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );

//     return pdf.save();
//   }

//   pw.Widget tableCell(String text, {bool isHeader = false, double? width}) {
//     return pw.Container(
//       width: width?.w ?? 86.5.w,
//       height: 15.h,
//       child: pw.Row(
//         children: [
//           pw.Padding(
//             padding: pw.EdgeInsets.symmetric(
//               horizontal: isHeader ? 1.w : 1.5.w,
//               vertical: 3.h,
//             ),
//             child: pw.Text(
//               text,
//               style: pw.TextStyle(
//                 color: isHeader ? PdfColors.black : PdfColors.black,
//                 fontWeight: isHeader
//                     ? pw.FontWeight.bold
//                     : pw.FontWeight.normal,
//                 fontSize: isHeader ? 9.sp : 8.sp,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// pw.Container buildCard({
//   required pw.Widget child,
//   double? width,
//   pw.EdgeInsetsGeometry? padding,
//   pw.EdgeInsetsGeometry? margin,
//   bool isDefaultBorder = false,
//   pw.BoxBorder? customeBorder,
// }) {
//   return pw.Container(
//     padding: padding ?? pw.EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
//     margin: margin ?? pw.EdgeInsets.zero,
//     decoration: pw.BoxDecoration(
//       border: isDefaultBorder
//           ? pw.Border.all(color: PdfColors.grey)
//           : customeBorder,
//     ),
//     child: child,
//   );
// }

// pw.Container buildCardValue({
//   required pw.Widget child,
//   double? width,
//   double? height,
//   pw.EdgeInsetsGeometry? padding,
//   pw.EdgeInsetsGeometry? margin,
//   bool isDefaultBorder = false,
//   pw.BoxBorder? customeBorder,
// }) {
//   return pw.Container(
//     // height: 50.sh,
//     width: width ?? 60.w,
//     padding: padding ?? pw.EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
//     margin: margin ?? pw.EdgeInsets.zero,
//     decoration: pw.BoxDecoration(
//       border: isDefaultBorder
//           ? pw.Border.all(color: PdfColors.grey)
//           : customeBorder,
//     ),
//     child: child,
//   );
// }
