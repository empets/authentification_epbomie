
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gracechurchadmine/core/style/app_theme.dart';
import 'package:gracechurchadmine/feature/dashboard/presentation/pages/dashboard_overview.dart';

class EgliseApp extends StatelessWidget {
  const EgliseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: "Église Vivante",
          debugShowCheckedModeBanner: false,
          // navigatorKey: navigatorKey, 
          theme: ThemeData.light().copyWith(
            primaryColor: Colors.black,
            textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
            extensions: <ThemeExtension<dynamic>>[
              AppColorsTheme.appColors,
              AppTypographieTheme.appTheme,
            ],
          ),
          home: DashboardPage(),
          //  ScreenTypeLayout(
          //   mobile: MenbersOverview(),
          //   desktop: MenbersOverview(),
          // ),
        );
      },
    );
  }
}