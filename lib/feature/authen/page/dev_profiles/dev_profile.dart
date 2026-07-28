import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/alert/app_alerte.dart';
import 'package:grace_church/core/animation_hover_mouse/animation_hover_mouse.dart';
import 'package:grace_church/core/custome_widget/navigate.dart';
import 'package:grace_church/core/injection/injection_container.dart';
import 'package:grace_church/feature/authen/domaine/usercase/signin_profile.dart';
import 'package:grace_church/feature/authen/domaine/usercase/update_profile_deviceid_usercase.dart';
import 'package:grace_church/feature/authen/page/bloc/connexion/signing_bloc.dart';
import 'package:grace_church/feature/authen/page/bloc/connexion/state/signin_state.dart'
    show SigninState;
import 'package:grace_church/feature/authen/page/dev_profiles/header.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/dashboard_overview.dart';
import 'package:grace_church/gen/assets.gen.dart';
import 'package:grace_church/feature/authen/page/dev_profiles/about_section.dart';
import 'package:grace_church/feature/authen/page/dev_profiles/contact.dart';

class DevProfile extends StatefulWidget {
  const DevProfile({super.key});

  @override
  State<DevProfile> createState() => _DevProfileState();
}

class _DevProfileState extends State<DevProfile> {
  bool obscureText = true;

  List<Map<String, String>> menuItems = [
    {'title': 'Home', 'icon': 'dashboard'},
    {'title': 'About', 'icon': 'users'},
    {'title': 'Projects', 'icon': 'settings'},
    {'title': 'Contacts', 'icon': 'settings'},
  ];

  int currentIndex = 0;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigningBloc(
        createSignInProfileUsercase: getIt<CreateSignInProfileUsercase>(),
        updateProfileDeviceIdUsercase: getIt<UpdateProfileDeviceIdUsercase>(),
      ),
      child: BlocListener<SigningBloc, SigninState>(
        listener: (context, state) async {
          if (state.status.isSuccess) {
            Navigator.of(context).pushAndRemoveUntil(
              fadeRoute(DashboardPage(admine: state.admine)),
              (route) => false,
            );
          } else if (state.status.isFailure) {
            return TopToast.showError(
              context,
              message:
                  '${state.errorMessage} Merci de bien vouloir réessayer ou contacter le support le service support.',
            );
          }
        },
        child: Scaffold(
          backgroundColor: const Color(0xFF1E1E1E),
          body: Container(
            height: 1.sh,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Stack(
                  //   children: [
                  //     ///--------->> Partie droite
                  //     Expanded(
                  //       flex: 5,
                  //       child: Padding(
                  //         padding: const EdgeInsets.symmetric(
                  //           horizontal: 70,
                  //           vertical: 19,
                  //         ),
                  //         child: Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Row(
                  //                   children: [
                  //                     Text(
                  //                       "Empet",
                  //                       style: GoogleFonts.poppins(
                  //                         fontSize: 24,
                  //                         color: Color(0xFF1DB954),
                  //                         fontWeight: FontWeight.bold,
                  //                       ),
                  //                     ),
                  //                     Text(
                  //                       ".",
                  //                       style: GoogleFonts.poppins(
                  //                         fontSize: 24,
                  //                         color: Color(0xFFF8F7F9),
                  //                         fontWeight: FontWeight.bold,
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),

                  //                 Row(
                  //                   children: [
                  //                     ...List.generate(menuItems.length, (
                  //                       index,
                  //                     ) {
                  //                       final isSelected =
                  //                           currentIndex == index;
                  //                       return GestureDetector(
                  //                         onTap: () {
                  //                           setState(() {
                  //                             currentIndex = index;
                  //                           });
                  //                         },
                  //                         child: Container(
                  //                           padding: const EdgeInsets.symmetric(
                  //                             horizontal: 10,
                  //                             vertical: 5,
                  //                           ),
                  //                           margin: const EdgeInsets.symmetric(
                  //                             horizontal: 10,
                  //                           ),
                  //                           decoration: BoxDecoration(
                  //                             border: Border.all(
                  //                               color: isSelected
                  //                                   ? Color(0xFF1DB954)
                  //                                   : Colors.transparent,
                  //                             ),
                  //                             borderRadius:
                  //                                 BorderRadius.circular(10),
                  //                             boxShadow: isSelected
                  //                                 ? [
                  //                                     BoxShadow(
                  //                                       color: Color(0xFF1DB954)
                  //                                           .withValues(
                  //                                             alpha: 0.3,
                  //                                           ),
                  //                                       blurRadius: 10,
                  //                                       offset: Offset(0, 2),
                  //                                     ),
                  //                                   ]
                  //                                 : [],
                  //                           ),
                  //                           child: Text(
                  //                             menuItems[index]['title']!,
                  //                             style: GoogleFonts.poppins(
                  //                               fontSize: 16,
                  //                               color: const Color(0xFFF8F7F9),
                  //                               fontWeight: FontWeight.w600,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       );
                  //                     }),

                  //                     Container(
                  //                       height: 13.h,
                  //                       width: 1,
                  //                       color: Color(0xFFF8F7F9),
                  //                     ),
                  //                     SizedBox(width: 10.w),
                  //                     SvgPicture.asset(
                  //                       Assets.auth.github,
                  //                       width: 20.w,
                  //                       height: 20.h,
                  //                       colorFilter: ColorFilter.mode(
                  //                         Color(0xFFF8F7F9),
                  //                         BlendMode.srcIn,
                  //                       ),
                  //                     ),
                  //                     SizedBox(width: 5.w),
                  //                     SvgPicture.asset(
                  //                       Assets.auth.linkedin,
                  //                       width: 24.w,
                  //                       height: 24.h,
                  //                       colorFilter: ColorFilter.mode(
                  //                         Color(0xFFF8F7F9),
                  //                         BlendMode.srcIn,
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ],
                  //             ),

                  //             SizedBox(height: 0.2.sh),

                  //             Text(
                  //               "HI, I’M PETERS",
                  //               style: GoogleFonts.poppins(
                  //                 fontSize: 18,
                  //                 color: Color(0xFFF8F7F9),
                  //               ),
                  //             ),

                  //             Row(
                  //               children: [
                  //                 Expanded(
                  //                   flex: 3,
                  //                   child: Column(
                  //                     crossAxisAlignment:
                  //                         CrossAxisAlignment.start,
                  //                     children: [
                  //                       Text(
                  //                         "I’M A MOBILE DEVELOPER",
                  //                         style: GoogleFonts.poppins(
                  //                           fontSize: 37,
                  //                           color: Color(0xFFF8F7F9),
                  //                           fontWeight: FontWeight.bold,
                  //                         ),
                  //                       ),
                  //                       SizedBox(height: 20.h),
                  //                       Text(
                  //                         "I design and build cross-platform mobile applications with Flutter, focused on clean architecture and smooth user experiences.",
                  //                         style: GoogleFonts.poppins(
                  //                           fontSize: 24,
                  //                           color: Color(
                  //                             0xFFF8F7F9,
                  //                           ).withValues(alpha: 0.5),
                  //                           fontWeight: FontWeight.normal,
                  //                         ),
                  //                       ),
                  //                       SizedBox(height: 20.h),

                  //                       AnimationMouseHoverCardre(
                  //                         onEnter: (event) {
                  //                           setState(() {
                  //                             isHover = true;
                  //                           });
                  //                         },
                  //                         onExit: (event) {
                  //                           setState(() {
                  //                             isHover = false;
                  //                           });
                  //                         },
                  //                         isHover: isHover,
                  //                         child: Container(
                  //                           padding: EdgeInsets.symmetric(
                  //                             horizontal: 20.w,
                  //                             vertical: 10.h,
                  //                           ),
                  //                           decoration: BoxDecoration(
                  //                             border: Border.all(
                  //                               color: isHover
                  //                                   ? Color(0xFF1DB954)
                  //                                   : Color(0xFFF8F7F9),
                  //                             ),
                  //                             borderRadius:
                  //                                 BorderRadius.circular(19),
                  //                             boxShadow: isHover
                  //                                 ? [
                  //                                     BoxShadow(
                  //                                       color: Color(0xFF1DB954)
                  //                                           .withValues(
                  //                                             alpha: 0.5,
                  //                                           ),
                  //                                       blurRadius: 20,
                  //                                       offset: Offset(0, 2),
                  //                                     ),
                  //                                   ]
                  //                                 : [],
                  //                           ),
                  //                           child: Text(
                  //                             'VOIR MES PROJETS',
                  //                             style: GoogleFonts.poppins(
                  //                               fontSize: 24,
                  //                               color: Color(0xFFF8F7F9),
                  //                               fontWeight: FontWeight.bold,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ),
                  //                 Flexible(flex: 4, child: SizedBox()),
                  //               ],
                  //             ),

                  //             // AbouteSections()
                  //           ],
                  //         ),
                  //       ),
                  //     ),

                  //     Positioned(
                  //       bottom: 0,
                  //       right: 0,
                  //       child: Container(
                  //         height: 0.5.sh,
                  //         margin: EdgeInsets.only(right: 20),
                  //         child: Image.asset(
                  //           Assets.auth.profileImage.path,
                  //           height: 0.4.sh,
                  //           fit: BoxFit.cover,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  HeroSection(),

                  AbouteSections(),
                  ContactSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
