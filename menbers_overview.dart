import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/build_screen/building_screen.dart';
import 'package:grace_church/core/constante/const.dart';
import 'package:grace_church/core/custome_widget/custome_text.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'wideget/menber_profile_header.dart';
import 'wideget/menber_profile_table_body.dart';
import 'wideget/menbre_filtre.dart';
import 'package:grace_church/gen/assets.gen.dart';

class MenbersOverview extends StatefulWidget {
  const MenbersOverview({super.key});

  @override
  State<MenbersOverview> createState() => _MenbersOverviewState();
}

class _MenbersOverviewState extends State<MenbersOverview> {
  String? selectedValues;
  String? selectedQuartier;
  int isSelectedStatus = 0;
  int isSelectedHeaderItem = 1;
  bool showMoreInfo = false;

  bool showFiler = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100.withValues(alpha: 0.7),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, contraintes) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 15.h,
                      horizontal: 7.w,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5.r),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: context.appColor.primaryLightBlue,
                                ),
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: ClipOval(
                                child: Image.network(
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                        return child;
                                      },
                                  errorBuilder: (_, __, ___) => ClipOval(
                                    child: Image.asset(
                                      Assets.iconLauncher.icon.path,
                                      fit: BoxFit.contain,
                                      height: 0.04.sh,
                                      width: 0.04.sh,
                                    ),
                                  ),
                                  Assets.iconLauncher.icon.path,
                                  fit: BoxFit.cover,
                                  height: 0.04.sh,
                                  width: 0.04.sh,
                                ),
                              ),
                            ),
                            SizedBox(width: 2.w),
                            CustomeText(
                              text: 'Gestion Des Membres',
                              style: GoogleFonts.roboto(
                                fontSize: 3.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 9.w),
                            ...List.generate(headerItem.length, (index) {
                              final item = headerItem[index];
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSelectedHeaderItem = index;
                                    if (isSelectedHeaderItem != 1) {
                                      showDialog(
                                        context: context,
                                        builder: (context) =>
                                            ScreenNotAvailable(
                                              showInfoButton: false,
                                            ),
                                      );
                                    }
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 3.w),
                                  child: Column(
                                    children: [
                                      CustomeText(
                                        text: item['label'] as String,
                                        style: GoogleFonts.roboto(
                                          fontSize: 3.sp,
                                          color: isSelectedHeaderItem == index
                                              ? context.appColor.primaryBlue
                                              : Colors.grey.shade600,
                                        ),
                                      ),

                                      Container(
                                        height: 1.h,
                                        width: 8.w,
                                        color: isSelectedHeaderItem == index
                                            ? context.appColor.primaryBlue
                                                  .withValues(alpha: 0.3)
                                            : Colors.grey.shade300,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ],
                        ),

                        Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextFormField(
                                        decoration: InputDecoration(
                                          isDense: true,
                                          fillColor: Colors.grey.withValues(
                                            alpha: 0.1,
                                          ),
                                          filled: true,
                                          prefixIcon: Icon(
                                            Icons.person_search,
                                            color: Colors.grey,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                            borderSide: BorderSide(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.grey.withValues(
                                                alpha: 0.4,
                                              ),
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              7.r,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.grey.withValues(
                                                alpha: 0.4,
                                              ),
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              7.r,
                                            ),
                                          ),
                                          hintText: 'Nom ou prénom...',
                                          hintStyle: GoogleFonts.roboto(
                                            color: Colors.grey,
                                            fontSize: 1.5.sp,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 2.w),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      showFiler = !showFiler;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(5.h),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(5.r),
                                      border: Border.all(
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.filter_list_rounded,
                                          color: Colors.grey.shade500,
                                          size: 15.h,
                                        ),
                                        SizedBox(width: 1.3.w),
                                        CustomeText(
                                          text: 'Filtrer',
                                          style: GoogleFonts.roboto(
                                            fontSize: 2.sp,
                                            color: Colors.grey.shade500,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(width: 5.w),

                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => ScreenNotAvailable(
                                    title: 'Service encours de développement',
                                    message:
                                        'Cette fonctionnalité sera bientôt disponible',
                                    moreInfoMessage:
                                        'Cette fonctionnalité consiste à ajouter \nn membre à votre église via un formulaire de saisie.',
                                    showInfoButton: true,
                                  ),
                                );
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4.w,
                                      vertical: 4.h,
                                    ),
                                    decoration: BoxDecoration(
                                      color: context.appColor.primaryBlue,
                                      borderRadius: BorderRadius.circular(5.r),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.person_add_alt_1_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 1.w),
                                        CustomeText(
                                          text: 'Ajouter un membre',
                                          style: GoogleFonts.roboto(
                                            fontSize: 2.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    bottom: 0,
                                    top: 0,
                                    right: 0,
                                    child: Container(
                                      padding: EdgeInsets.all(2.w),
                                      decoration: BoxDecoration(
                                        color: context.appColor.primaryGray500
                                            .withValues(alpha: 0.8),
                                        borderRadius: BorderRadius.circular(
                                          5.r,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.lock_clock_outlined,
                                        color: Colors.white,
                                        size: 3.w,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.w,
                      vertical: 6.h,
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: 2.w,
                      vertical: 9.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     CustomeText(
                        //       text: 'Membres & Travaux',
                        //       style: GoogleFonts.roboto(
                        //         fontSize: 6.sp,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //     CustomeText(
                        //       text: 'Gérez les informations, les départements ',
                        //       style: GoogleFonts.roboto(
                        //         fontSize: 3.sp,
                        //         color: Colors.grey.shade600,
                        //       ),
                        //     ),
                        //   ],
                        // ),

                        ///------------------------------------------------------------
                        ///                    Total
                        ///------------------------------------------------------------
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 3.w,
                            vertical: 9.h,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ...List.generate(
                                3,
                                (index) => Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 3.w,
                                    vertical: 28.h,
                                  ),
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 2.w,
                                    vertical: 9.h,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey.shade300,
                                    ),
                                    borderRadius: BorderRadius.circular(5.r),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 3.w,
                                              vertical: 9.h,
                                            ),
                                            decoration: BoxDecoration(
                                              color: context
                                                  .appColor
                                                  .primaryBlue
                                                  .withValues(alpha: 0.1),
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                            ),
                                            child: Icon(
                                              Icons.people,
                                              color: context
                                                  .appColor
                                                  .primaryGray500,
                                              size: 3.sp,
                                            ),
                                          ),
                                          SizedBox(width: 3.w),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Total:  MEMBRES',
                                                style: GoogleFonts.roboto(
                                                  fontSize: 4.sp,
                                                  color: context
                                                      .appColor
                                                      .primaryGray500,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                '1,2284',
                                                style: GoogleFonts.roboto(
                                                  fontSize: 3.sp,
                                                  color: context
                                                      .appColor
                                                      .primaryGray700,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 45.w),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ).toList(),
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
                  AnimatedCrossFade(
                    firstChild: SizedBox.shrink(),
                    secondChild: MenbreFiltre(),
                    crossFadeState: showFiler
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst,
                    duration: Duration(milliseconds: 300),
                    firstCurve: Curves.easeInOut,
                    secondCurve: Curves.easeInOut,
                  ),

                  ///------------------------------------------------------------
                  ///                    Profile Header
                  ///------------------------------------------------------------
                  MenberProfileHeader(),

                  ///------------------------------------------------------------
                  ///                  Profile Body
                  ///------------------------------------------------------------
                  MenberProfileTableView(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
