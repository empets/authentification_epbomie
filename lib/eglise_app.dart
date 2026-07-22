import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/injection/injection_container.dart';
import 'package:grace_church/core/style/app_theme.dart';
import 'package:grace_church/feature/dashboard/domaine/usercase/get_profile_usercase.dart';
import 'package:grace_church/feature/dashboard/presentation/bloc/get_profile/event/profile_event.dart';
import 'package:grace_church/feature/dashboard/presentation/bloc/get_profile/get_profile_bloc.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/dashboard_overview.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/kpi/bloc/menber_kpi_bloc.dart';

class EgliseApp extends StatelessWidget {
  const EgliseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => GetProfileBloc(
                getProfileUsercase: getIt<GetProfileUsercase>(),
              )..add(const ProfileEvent.fetchProfileAll()),
            ),
            BlocProvider(create: (context) => MenberKpiBloc(getProfileUsercase: getIt<GetProfileUsercase>())..add(ProfileEvent.fetchProfileAll())),
          ],
          child: MaterialApp(
            title: "Église Vivante",
            debugShowCheckedModeBanner: false,
            // navigatorKey: navigatorKey,
            theme: ThemeData.light().copyWith(
              primaryColor: Colors.black,
              textTheme: GoogleFonts.robotoTextTheme(
                Theme.of(context).textTheme,
              ),
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
          ),
        );
      },
    );
  }
}
