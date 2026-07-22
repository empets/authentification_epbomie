import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/gen/assets.gen.dart';

class EmptyDataScreen extends StatelessWidget {
  const EmptyDataScreen({super.key, required this.widget, this.title = "Une erreur est survenue !"});
  final Widget widget;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 0.16.sh),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: SvgPicture.asset(Assets.emptyScreen.emptyData),
          ),
          SizedBox(height: 28.h),

          Text(
            title,
            style: context.appTypographie.body.copyWith(
              color: context.appColor.primaryGray500,
            ),
          ),
          SizedBox(height: 14.h),
          widget,
        ],
      ),
    );
  }
}
