import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grace_church/core/custome_widget/custome_text.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/gen/assets.gen.dart';

class SoomScreen extends StatelessWidget {
  const SoomScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 20.h),
          SvgPicture.asset(
            Assets.buildingScreen.construction, 
            width: 100.w,
            height: 100.h,
          ),
          SizedBox(height: 10.h),
          CustomeText(
            text: 'Cette fonctionnalité sera bientôt disponible',
            style: context.appTypographie.body.copyWith(
              fontSize: 14.sp,
              color: context.appColor.primaryGray500,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
