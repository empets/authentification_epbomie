import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/constante/const.dart';
import 'package:grace_church/core/custome_widget/form_filed.dart';
import 'package:grace_church/core/extension/custome_extension.dart';

class MenbreFiltre extends StatefulWidget {
  const MenbreFiltre({super.key});

  @override
  State<MenbreFiltre> createState() => _MenbreFiltreState();
}

class _MenbreFiltreState extends State<MenbreFiltre> {
  String? selectedValues;
  String? selectedQuartier;
  int isSelectedStatus = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          // Container(
          //   width: MediaQuery.of(context).size.width * 0.2,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         'RECHERCHE',
          //         style: GoogleFonts.roboto(
          //           fontSize: 3.sp,
          //           color: context.appColor.primaryGray500,
          //           fontWeight: FontWeight.w500,
          //         ),
          //       ),
          //       SizedBox(height: 5.h),
          //       TextFormField(
          //         decoration: InputDecoration(
          //           isDense: true,
          //           fillColor: Colors.grey.withValues(alpha: 0.1),
          //           filled: true,
          //           prefixIcon: Icon(Icons.person_search, color: Colors.grey),
          //           border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(4),
          //             borderSide: BorderSide(color: Colors.grey.shade300),
          //           ),
          //           focusedBorder: OutlineInputBorder(
          //             borderSide: BorderSide(
          //               color: Colors.grey.withValues(alpha: 0.4),
          //             ),
          //             borderRadius: BorderRadius.circular(7.r),
          //           ),
          //           enabledBorder: OutlineInputBorder(
          //             borderSide: BorderSide(
          //               color: Colors.grey.withValues(alpha: 0.4),
          //             ),
          //             borderRadius: BorderRadius.circular(7.r),
          //           ),
          //           hintText: 'Nom ou prénom...',
          //           hintStyle: GoogleFonts.roboto(
          //             color: Colors.grey,
          //             fontSize: 2.sp,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

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
                        ...List.generate(filterOptions.length, (index) {
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
                                color: context.appColor.primaryWhite,
                                borderRadius: BorderRadius.circular(8.r),
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
                        color: selectedQuartier != null
                            ? context.appColor.primaryLightBlue
                            : Colors.grey.withValues(alpha: 0.4),
                      ),
                      color: Colors.grey.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: CustomDropdown(
                      hint: "Tous les quartiers",
                      value: selectedQuartier,
                      items: filterByCommune,
                      onChanged: (String? value) {
                        setState(() {
                          selectedQuartier = value;
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
    );
  }
}
