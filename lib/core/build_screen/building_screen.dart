import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/gen/assets.gen.dart';

// ignore: must_be_immutable
class ScreenNotAvailable extends StatefulWidget {
  ScreenNotAvailable({
    super.key,
    this.title = "Impossible de charger cette page",
    this.message =
        "Cette page est en cours de développement\nvous recevrez une notification lorsque celle-ci sera disponible",
    this.showInfoButton = true,
    this.moreInfoMessage,
  });
  final String title;
  final String message;
  late bool showInfoButton;
  final String? moreInfoMessage;

  @override
  State<ScreenNotAvailable> createState() => _ScreenNotAvailableState();
}

class _ScreenNotAvailableState extends State<ScreenNotAvailable> {
  late bool _showMoreInfo = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey.shade300,
      title: Column(
        children: [
          if (widget.showInfoButton) ...[
            GestureDetector(
              onTap: () {
                setState(() {
                  _showMoreInfo = !_showMoreInfo;
                });
              },
              child: Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                  Assets.alerte.alertePoint,
                  height: 20.h,
                ),
              ),
            ),
          ],

          SvgPicture.asset(Assets.emptyScreen.emptyData),
          SizedBox(height: 10.h),
          Text(
            widget.title,
            style: GoogleFonts.roboto(
              fontSize: 4.sp,
              color: context.appColor.primaryGray700,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            widget.message,
            style: GoogleFonts.roboto(
              fontSize: 3.sp,
              color: context.appColor.primaryGray500,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),

          if (_showMoreInfo &&
              widget.moreInfoMessage != null &&
              widget.moreInfoMessage!.isNotEmpty) ...[
            SizedBox(height: 5.h),
            Text(
              widget.moreInfoMessage!,
              style: GoogleFonts.roboto(
                fontSize: 2.sp,
                color: context.appColor.primaryGray500,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],

          SizedBox(height: 20.h),

          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: context.appColor.primaryGray100,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                "Retour",
                style: GoogleFonts.roboto(
                  fontSize: 3.sp,
                  color: context.appColor.primaryGray500,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
