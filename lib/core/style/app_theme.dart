

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class AppTypographieTheme extends ThemeExtension<AppTypographieTheme> {
  const AppTypographieTheme({
    required this.h1,
    required this.h2,
    required this.subtitle,
    required this.body,
    required this.small,
    required this.button,
  });

  /// 36px - Bold (700)
  final TextStyle h1;

  /// 24px - SemiBold (600)
  final TextStyle h2;

  /// 18px - Medium (500)
  final TextStyle subtitle;

  /// 16px - Regular (400)
  final TextStyle body;

  /// 14px - Regular (400)
  final TextStyle small;

  /// 14px - Medium (500)
  final TextStyle button;

  // ---------------- DEFAULT INSTANCE ----------------

  static final appTheme = AppTypographieTheme(
    h1: GoogleFonts.inter(
      fontSize: 36.sp,
      fontWeight: FontWeight.w700,
      color: AppColorsTheme.appColors.primaryGray700,
    ),
    h2: GoogleFonts.inter(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: AppColorsTheme.appColors.primaryGray700,
    ),
    subtitle: GoogleFonts.inter(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: AppColorsTheme.appColors.primaryGray700,
    ),
    body: GoogleFonts.inter(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: AppColorsTheme.appColors.primaryGray700,
    ),
    small: GoogleFonts.inter(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColorsTheme.appColors.primaryGray700,
    ),
    button: GoogleFonts.inter(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
  );

  // ---------------- COPY WITH ----------------

  @override
  AppTypographieTheme copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? subtitle,
    TextStyle? body,
    TextStyle? small,
    TextStyle? button,
  }) {
    return AppTypographieTheme(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      subtitle: subtitle ?? this.subtitle,
      body: body ?? this.body,
      small: small ?? this.small,
      button: button ?? this.button,
    );
  }

  // ---------------- LERP ----------------

  @override
  AppTypographieTheme lerp(
    ThemeExtension<AppTypographieTheme>? other,
    double t,
  ) {
    if (other is! AppTypographieTheme) return this;

    return AppTypographieTheme(
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h2: TextStyle.lerp(h2, other.h2, t)!,
      subtitle: TextStyle.lerp(subtitle, other.subtitle, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
      small: TextStyle.lerp(small, other.small, t)!,
      button: TextStyle.lerp(button, other.button, t)!,
    );
  }
}
@immutable
class AppColorsTheme extends ThemeExtension<AppColorsTheme> {
  const AppColorsTheme({
    required this.primaryLightBlue,
    required this.primaryBlue,
    required this.primaryDarkBlue,

    required this.primarySuccess,
    required this.primaryWarning,
    required this.primaryError,

    required this.primaryWhite,

    required this.primaryGray100,
    required this.primaryGray500,
    required this.primaryGray700,
    required this.primaryGrayDark,
  });

  // ORANGE
  final Color primaryLightBlue;
  final Color primaryBlue;

  // WHITE
  final Color primaryDarkBlue;

  // BLACK
  final Color primarySuccess;
  final Color primaryWarning;
  final Color primaryError;

  // GREEN
  final Color primaryWhite;
  final Color primaryGray100;
  final Color primaryGray500;

  // GREY
  final Color primaryGray700;
  final Color primaryGrayDark;

  static const appColors = AppColorsTheme(
    primaryLightBlue: Color(0xFFE7EFFB),
    primaryBlue: Color(0xFF1152D4),
    primaryDarkBlue: Color(0xFF0D3EA1),
    primarySuccess: Color(0xFF10B981),
    primaryWarning: Color(0xFFF59E0B),
    primaryError: Color(0xFFEF4444),
    primaryWhite: Color(0xFFFFFFFF),
    primaryGray100: Color(0xFFF3F4F6),
    primaryGray500: Color(0xFF6B7280),
    primaryGray700: Color(0xFF374151),
    primaryGrayDark: Color(0xFF111827),
  );

  Color? get primaryGray900 => null;

  @override
  AppColorsTheme copyWith({
    Color? primaryLightBlue,
    Color? primaryBlue,
    Color? primaryDarkBlue,
    Color? primarySuccess,
    Color? primaryWarning,
    Color? primaryError,
    Color? primaryGray100,
    Color? primaryGray500,
    Color? primaryGray700,
    Color? primaryGrayDark,
    Color? primaryWhite,
  }) {
    return AppColorsTheme(
      primaryLightBlue: primaryLightBlue ?? this.primaryLightBlue,
      primaryBlue: primaryBlue ?? this.primaryBlue,
      primaryDarkBlue: primaryDarkBlue ?? this.primaryDarkBlue,
      primarySuccess: primarySuccess ?? this.primarySuccess,
      primaryWarning: primaryWarning ?? this.primaryWarning,
      primaryError: primaryError ?? this.primaryError,
      primaryGray100: primaryGray100 ?? this.primaryGray100,
      primaryGray500: primaryGray500 ?? this.primaryGray500,
      primaryGray700: primaryGray700 ?? this.primaryGray700,
      primaryGrayDark: primaryGrayDark ?? this.primaryGrayDark,
      primaryWhite: primaryWhite ?? this.primaryWhite,
    );
  }

  @override
  AppColorsTheme lerp(ThemeExtension<AppColorsTheme>? other, double t) {
    if (other is! AppColorsTheme) return this;

    return AppColorsTheme(
      primaryLightBlue: Color.lerp(
        primaryLightBlue,
        other.primaryLightBlue,
        t,
      )!,
      primaryBlue: Color.lerp(primaryBlue, other.primaryBlue, t)!,
      primaryDarkBlue: Color.lerp(primaryDarkBlue, other.primaryDarkBlue, t)!,
      primarySuccess: Color.lerp(primarySuccess, other.primarySuccess, t)!,
      primaryWarning: Color.lerp(primaryWarning, other.primaryWarning, t)!,
      primaryError: Color.lerp(primaryError, other.primaryError, t)!,
      primaryGray100: Color.lerp(primaryGray100, other.primaryGray100, t)!,
      primaryGray500: Color.lerp(primaryGray500, other.primaryGray500, t)!,
      primaryGray700: Color.lerp(primaryGray700, other.primaryGray700, t)!,
      primaryGrayDark: Color.lerp(primaryGrayDark, other.primaryGrayDark, t)!,
      primaryWhite: Color.lerp(primaryWhite, other.primaryWhite, t)!,
    );
  }
}
