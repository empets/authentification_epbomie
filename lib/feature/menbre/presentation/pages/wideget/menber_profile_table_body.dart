import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gracechurchadmine/core/extension/custome_extension.dart';
import 'package:gracechurchadmine/core/extension/extention.dart';

class MenberProfileTableView extends StatelessWidget {
  const MenberProfileTableView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      margin: EdgeInsets.symmetric(
        horizontal: 7.w,
        vertical: 4.h,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        color: context.appColor.primaryBlue.withValues(
          alpha: 0.01,
        ),
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
                                    width: 7,
                                  ),
                                  // right: BorderSide(
                                  //   color: Colors.grey.shade300
                                  //       .withValues(alpha: 0.5),
                                  //   width: 3,
                                  // ),
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(
                                    7.r,
                                  ),
                                  topLeft: Radius.circular(7.r),
                                ),
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
                                        errorBuilder:
                                            (
                                              _,
                                              __,
                                              ___,
                                            ) => ClipOval(
                                              child: Image.network(
                                                "https://cdn.pixabay.com/photo/2023/02/18/11/00/icon-7797704_640.png",
                                                fit: BoxFit
                                                    .contain,
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
                                          fontWeight:
                                              FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'email@gmail.com',
                                        style: GoogleFonts.roboto(
                                          fontSize: 2.sp,
                                          color: Colors
                                              .grey
                                              .shade500,
                                          fontWeight:
                                              FontWeight.w500,
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
                                        color: getTagTextColor(
                                          context: context,
                                          tag: 'bureau',
                                        ),
                                      ),
                                      color: getTagTextColor(
                                        context: context,
                                        tag: 'bureau',
                                      ).withValues(alpha: 0.1),
                                      borderRadius:
                                          BorderRadius.circular(
                                            7.r,
                                          ),
                                    ),
                                    child: Text(
                                      'bureau',
                                      style: GoogleFonts.roboto(
                                        fontSize: 2.sp,
                                        color: context
                                            .appColor
                                            .primaryGray500,
                                        fontWeight:
                                            FontWeight.w500,
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
                                  SizedBox(width: 3.w),
                                  Text(
                                    'etudiant',
                                    style: GoogleFonts.roboto(
                                      fontSize: 2.sp,
                                      color: getTagTextColor(
                                        context: context,
                                        tag: 'etudiant',
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
                                  bottomRight: Radius.circular(
                                    7.r,
                                  ),
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
    );
  }
}

