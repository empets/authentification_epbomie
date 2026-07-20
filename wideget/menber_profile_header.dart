import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gracechurchadmine/core/constante/const.dart';
import 'package:gracechurchadmine/core/extension/custome_extension.dart';

class MenberProfileHeader extends StatelessWidget {
  const MenberProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.w),
      child: Column(
        children: [
          SizedBox(height: 26.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: tableHeaders.map((header) {
              final title = header['title'] as String;
              final icon = header['icon'] as Widget;
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
                  icon,
                  SizedBox(height: 2.h),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

