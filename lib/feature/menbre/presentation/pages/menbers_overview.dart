import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gracechurchadmine/core/constante/const.dart';
import 'package:gracechurchadmine/core/custome_widget/custome_text.dart';
import 'package:gracechurchadmine/core/custome_widget/form_filed.dart';
import 'package:gracechurchadmine/core/extension/custome_extension.dart';
import 'package:gracechurchadmine/core/extension/extention.dart'
    show getTagBackgroundColor, getTagTextColor;

class MenbersOverview extends StatefulWidget {
  const MenbersOverview({super.key});

  @override
  State<MenbersOverview> createState() => _MenbersOverviewState();
}

class _MenbersOverviewState extends State<MenbersOverview> {
  String? selectedValues;
  String? selectedQuartier;
  int isSelectedStatus = 0;

  final List<Map<String, dynamic>> filterOptions = [
    {'label': 'Tous', 'value': 'all'},
    {'label': 'Etudiants', 'value': 'student'},
    {'label': 'Travailleurs', 'value': 'worker'},
  ];

  final List<Map<String, dynamic>> filterByCommune = [
    {'label': 'Tous', 'value': 'all'},
    {'label': 'Abobo', 'value': 'abobo'},
    {'label': 'Adjamé', 'value': 'adjame'},
    {'label': 'Anyama', 'value': 'anyama'},
    {'label': 'Attécoubé', 'value': 'attecoube'},
    {'label': 'Bingerville', 'value': 'bingerville'},
    {'label': 'Cocody', 'value': 'cocody'},
    {'label': 'Koumassi', 'value': 'koumassi'},
    {'label': 'Marcory', 'value': 'marcory'},
    {'label': 'Plateau', 'value': 'plateau'},
    {'label': 'Port-Bouët', 'value': 'port_bouet'},
    {'label': 'Treichville', 'value': 'treichville'},
    {'label': 'Yopougon', 'value': 'yopougon'},
    {'label': 'Songon', 'value': 'songon'},
  ];

  final List<String> tableHeaders = [
    'Membre',
    'Departement',
    'Statut',
    'Travailleur',
    'Activité/Filière',
    'Zone de résidence',
    'Consulter',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100.withValues(alpha: 0.7),
      body: LayoutBuilder(
        builder: (context, contraintes) {
          return Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                //---------->> Header
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
                  margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 9.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomeText(
                            text: 'Membres & Travaux',
                            style: GoogleFonts.roboto(
                              fontSize: 6.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CustomeText(
                            text:
                                'Gérez les informations, les départements et les status de la congregation.',
                            style: GoogleFonts.roboto(
                              fontSize: 3.sp,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.w,
                          vertical: 3.h,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.download_rounded,
                              size: 3.sp,
                              color: Colors.grey.shade500,
                            ),
                            SizedBox(width: 5),
                            CustomeText(
                              text: 'Export CSV',
                              style: GoogleFonts.roboto(
                                fontSize: 3.sp,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),

                ///------------------------------------------------------------
                ///                    Filter Section
                ///------------------------------------------------------------
                Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
                  margin: EdgeInsets.symmetric(horizontal: 7.w, vertical: 5.h),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.r),
                  ),
                  child: Row(
                    spacing: 1.w,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ///------------------------------------------------------------
                      ///                    Filter By name
                      ///------------------------------------------------------------
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'RECHERCHE',
                              style: GoogleFonts.roboto(
                                fontSize: 3.sp,
                                color: context.appColor.primaryGray500,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
                                fillColor: Colors.grey.withValues(alpha: 0.1),
                                filled: true,
                                prefixIcon: Icon(
                                  Icons.person_search,
                                  color: Colors.grey,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.withValues(alpha: 0.4),
                                  ),
                                  borderRadius: BorderRadius.circular(7.r),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.withValues(alpha: 0.4),
                                  ),
                                  borderRadius: BorderRadius.circular(7.r),
                                ),
                                hintText: 'Nom ou prénom...',
                                hintStyle: GoogleFonts.roboto(
                                  color: Colors.grey,
                                  fontSize: 2.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      ///------------------------------------------------------------
                      ///                    Filter By Département
                      ///------------------------------------------------------------
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Container(
                          margin: EdgeInsets.only(left: 10.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Département'.toUpperCase(),
                                style: GoogleFonts.roboto(
                                  fontSize: 3.sp,
                                  color: context.appColor.primaryGray500,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Container(
                                height: 34.h,
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: selectedValues != null
                                        ? context.appColor.primaryLightBlue
                                        : Colors.grey.withValues(alpha: 0.4),
                                  ),
                                  color: Colors.grey.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(7.r),
                                ),
                                child: CustomDropdown(
                                  hint: "Tous les départements",
                                  value: selectedValues,
                                  items: nationalites,
                                  onChanged: (String? value) {
                                    setState(() {
                                      selectedValues = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      ///------------------------------------------------------------
                      ///                    Filter By Statut
                      ///------------------------------------------------------------
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.21,
                        child: Container(
                          margin: EdgeInsets.only(left: 10.w),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Statut'.toUpperCase(),
                                style: GoogleFonts.roboto(
                                  fontSize: 3.sp,
                                  color: context.appColor.primaryGray500,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 2.w,
                                  vertical: 7.h,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.withValues(alpha: 0.4),
                                  ),
                                  borderRadius: BorderRadius.circular(7.r),
                                  color: Colors.grey.withValues(alpha: 0.1),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ...List.generate(filterOptions.length, (
                                      index,
                                    ) {
                                      final option = filterOptions[index];
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isSelectedStatus = index;
                                          });
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(right: 2.w),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4.w,
                                            vertical: 3.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color:
                                                context.appColor.primaryWhite,
                                            borderRadius: BorderRadius.circular(
                                              8.r,
                                            ),
                                          ),
                                          child: Text(
                                            option['label'],
                                            style: GoogleFonts.roboto(
                                              color: isSelectedStatus == index
                                                  ? context.appColor.primaryBlue
                                                  : Colors.grey,
                                              fontSize: 2.sp,
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      ///------------------------------------------------------------
                      ///                    Filter By Quartier
                      ///------------------------------------------------------------
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Container(
                          margin: EdgeInsets.only(left: 1.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Quartier'.toUpperCase(),
                                style: GoogleFonts.roboto(
                                  fontSize: 3.sp,
                                  color: context.appColor.primaryGray500,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Container(
                                height: 34.h,
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: selectedValues != null
                                        ? context.appColor.primaryLightBlue
                                        : Colors.grey.withValues(alpha: 0.4),
                                  ),
                                  color: Colors.grey.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(7.r),
                                ),
                                child: CustomDropdown(
                                  hint: "Tous les quartiers",
                                  value: selectedValues,
                                  items: nationalites,
                                  onChanged: (String? value) {
                                    setState(() {
                                      selectedValues = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

               


                ///------------------------------------------------------------
                ///                    Profile Header
                ///------------------------------------------------------------
               
                SizedBox(height: 26.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: tableHeaders.map((title) {
                      return Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 6.w,
                                  vertical: 6.h,
                                ),
                                color: context.appColor.primaryBlue.withValues(
                                  alpha: 0.01,
                                ),
                                child: Text(
                                  title.toUpperCase(),
                                  style: GoogleFonts.roboto(
                                    fontSize: 3.sp,
                                    color: context.appColor.primaryGray500,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 2.h),
                            ],
                          );
                        }).toList(),
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  margin: EdgeInsets.symmetric(horizontal: 7.w, vertical: 9.h),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    color: context.appColor.primaryBlue.withValues(alpha: 0.01),
                    borderRadius: BorderRadius.circular(7.r),
                  ),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Column(
                          children: [
                            SizedBox(height: 3.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ///-------------------------------------------------------
                                ///                    Profile
                                ///-------------------------------------------------------
                                Expanded(
                                  child: Container(
                                    height: 0.11.sh,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 6.w,
                                            vertical: 7.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.grey.shade300
                                                    .withValues(alpha: 0.5),
                                              ),
                                              top: BorderSide(
                                                color: Colors.grey.shade300
                                                    .withValues(alpha: 0.5),
                                                
                                              ),
                                              left: BorderSide(
                                                color: Colors.grey.shade300
                                                    .withValues(alpha: 0.5),
                                                    width: 7
                                              ),
                                              // right: BorderSide(
                                              //   color: Colors.grey.shade300
                                              //       .withValues(alpha: 0.5),
                                              //   width: 3,
                                              // ),
                                            ),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(7.r),
                                              topLeft: Radius.circular(7.r),
                                            )
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(6.r),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: context
                                                        .appColor
                                                        .primaryLightBlue,
                                                  ),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: ClipOval(
                                                  child: Image.network(
                                                    loadingBuilder:
                                                        (
                                                          context,
                                                          child,
                                                          loadingProgress,
                                                        ) {
                                                          return child;
                                                        },
                                                    errorBuilder: (_, __, ___) =>
                                                        ClipOval(
                                                          child: Image.network(
                                                            "https://cdn.pixabay.com/photo/2023/02/18/11/00/icon-7797704_640.png",
                                                            fit: BoxFit.contain,
                                                            height: 0.08.sh,
                                                            width: 0.08.sh,
                                                          ),
                                                        ),
                                                    "https://cdn.pixabay.com/photo/2023/02/18/11/00/icon-7797704_640.png",
                        
                                                    fit: BoxFit.cover,
                                                    height: 0.03.sh,
                                                    width: 0.03.sh,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 2.w),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'jean Pierre Doc',
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 2.sp,
                                                      color: context
                                                          .appColor
                                                          .primaryGray500,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                  Text(
                                                    'email@gmail.com',
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 2.sp,
                                                      color: Colors.grey.shade500,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        
                                ///-------------------------------------------------------
                                ///                    Departement
                                ///-------------------------------------------------------
                                Expanded(
                                  child: Container(
                                    height: 0.11.sh,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 6.w,
                                            vertical: 13.4.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.grey.shade300
                                                    .withValues(alpha: 0.5),
                                              ),
                                              top: BorderSide(
                                                color: Colors.grey.shade300
                                                    .withValues(alpha: 0.5),
                                              ),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 6.w,
                                                  vertical: 6.h,
                                                ),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: getTagBackgroundColor(
                                                      context: context,
                                                      tag: 'choral',
                                                    ),
                                                  ),
                                                  color: getTagBackgroundColor(
                                                    context: context,
                                                    tag: 'choral',
                                                  ).withValues(alpha: 0.1),
                                                  borderRadius:
                                                      BorderRadius.circular(7.r),
                                                ),
                                                child: Text(
                                                  'Choral',
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 2.sp,
                                                    color: context
                                                        .appColor
                                                        .primaryGray500,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10.w),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        
                                ///-------------------------------------------------------
                                ///                    Statut
                                ///-------------------------------------------------------
                                Expanded(
                                  child: SizedBox(
                                    height: 0.11.sh,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 6.w,
                                            vertical: 20.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.grey.shade300
                                                    .withValues(alpha: 0.5),
                                              ),
                                              top: BorderSide(
                                                color: Colors.grey.shade300
                                                    .withValues(alpha: 0.5),
                                              ),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 2.w,
                                                  vertical: 2.h,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: getTagTextColor(
                                                    context: context,
                                                    tag: 'non_baptiser',
                                                  ).withValues(alpha: 0.7),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              SizedBox(width: 3.w),
                                              Text(
                                                'Non bapts',
                                                style: GoogleFonts.roboto(
                                                  fontSize: 2.sp,
                                                  color: getTagTextColor(
                                                    context: context,
                                                    tag: 'non_baptiser',
                                                  ),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        
                                ///-------------------------------------------------------
                                ///                    Statut Professionnel
                                ///-------------------------------------------------------
                                Expanded(
                                  child: SizedBox(
                                    height: 0.11.sh,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 6.w,
                                            vertical: 20.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.grey.shade300
                                                    .withValues(alpha: 0.5),
                                              ),
                                              top: BorderSide(
                                                color: Colors.grey.shade300
                                                    .withValues(alpha: 0.5),
                                              ),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 2.w,
                                                  vertical: 2.h,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: getTagTextColor(
                                                    context: context,
                                                    tag: 'Travailleur',
                                                  ).withValues(alpha: 0.7),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              SizedBox(width: 3.w),
                                              Text(
                                                'Travailleur',
                                                style: GoogleFonts.roboto(
                                                  fontSize: 2.sp,
                                                  color: getTagTextColor(
                                                    context: context,
                                                    tag: 'Travailleur',
                                                  ),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        
                                ///-------------------------------------------------------
                                ///                    Fillière ou métier
                                ///-------------------------------------------------------
                                Expanded(
                                  child: SizedBox(
                                    height: 0.11.sh,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 6.w,
                                            vertical: 20.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.grey.shade300
                                                    .withValues(alpha: 0.5),
                                              ),
                                              top: BorderSide(
                                                color: Colors.grey.shade300
                                                    .withValues(alpha: 0.5),
                                              ),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 2.w,
                                                  vertical: 2.h,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: getTagTextColor(
                                                    context: context,
                                                    tag: 'Architect Logiciel',
                                                  ).withValues(alpha: 0.7),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              SizedBox(width: 3.w),
                                              Text(
                                                'Architect Logiciel',
                                                style: GoogleFonts.roboto(
                                                  fontSize: 2.sp,
                                                  color: getTagTextColor(
                                                    context: context,
                                                    tag: 'Architect Logiciel',
                                                  ),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        
                                ///-------------------------------------------------------
                                ///                    Zone résidence
                                ///-------------------------------------------------------
                                Expanded(
                                  child: SizedBox(
                                    height: 0.11.sh,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 6.w,
                                            vertical: 20.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.grey.shade300
                                                    .withValues(alpha: 0.5),
                                              ),
                                              top: BorderSide(
                                                color: Colors.grey.shade300
                                                    .withValues(alpha: 0.5),
                                              ),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 2.w,
                                                  vertical: 2.h,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: getTagTextColor(
                                                    context: context,
                                                    tag: 'Architect Logiciel',
                                                  ).withValues(alpha: 0.7),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              SizedBox(width: 3.w),
                                              Text(
                                                'Zone Résidence',
                                                style: GoogleFonts.roboto(
                                                  fontSize: 2.sp,
                                                  color: getTagTextColor(
                                                    context: context,
                                                    tag: 'Zone Résidence',
                                                  ),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        
                                ///-------------------------------------------------------
                                ///                    Vois
                                ///-------------------------------------------------------
                                Expanded(
                                  child: SizedBox(
                                    height: 0.11.sh,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 6.w,
                                            vertical: 20.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.grey.shade300
                                                    .withValues(alpha: 0.5),
                                              ),
                                              top: BorderSide(
                                                color: Colors.grey.shade300
                                                    .withValues(alpha: 0.5),
                                              ),
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(7.r),
                                              bottomRight: Radius.circular(7.r),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.remove_red_eye,
                                                size: 3.w,
                                                color: context
                                                    .appColor
                                                    .primarySuccess,
                                              ),
                                              SizedBox(width: 3.w),
                                              Text(
                                                'Vois plus',
                                                style: GoogleFonts.roboto(
                                                  fontSize: 2.sp,
                                                  color: getTagTextColor(
                                                    context: context,
                                                    tag: 'Voisinage',
                                                  ),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
             
                ///------------------------------------------------------------
                ///                    Total
                ///------------------------------------------------------------
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Row(
                    children: [
                    ...List.generate(3, (index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 13.h),
                    margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 9.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 9.h),
                          decoration: BoxDecoration(
                            color: context.appColor.primaryBlue.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Icon(
                            Icons.people,
                            color: context.appColor.primaryGray500,
                            size: 3.sp,
                          ),
                        ),
                        SizedBox(width: 3.w),
                        Column(
                          children: [
                              Text(
                                'Total:  MEMBRES',
                                style: GoogleFonts.roboto(
                                  fontSize: 2.sp,
                                  color: context.appColor.primaryGray500,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                              '1,2284',
                              style: GoogleFonts.roboto(
                                fontSize: 3.sp,
                                color: context.appColor.primaryGray700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                         SizedBox(width: 30.w),
                      ],
                    ),
                  ),).toList()
                    ],
                  ),
                )
             
             
              ],
            ),
          );
        },
      ),
    );
  }
}
