import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grace_church/core/extension/custome_extension.dart';

class CustomeHeaderTitle extends StatelessWidget {
  const CustomeHeaderTitle({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.appTypographie.body.copyWith(
        fontSize: 16.sp,
        color: context.appColor.primaryGray900,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

