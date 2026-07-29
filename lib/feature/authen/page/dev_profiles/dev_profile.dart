import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/feature/authen/page/dev_profiles/about_section.dart';
import 'package:grace_church/feature/authen/page/dev_profiles/bloc/event/navigate_event.dart';
import 'package:grace_church/feature/authen/page/dev_profiles/bloc/navigate_bloc.dart';
import 'package:grace_church/feature/authen/page/dev_profiles/bloc/state/navigate_state.dart';
import 'package:grace_church/feature/authen/page/dev_profiles/contact.dart';
import 'package:grace_church/feature/authen/page/dev_profiles/enums/enumerated.dart';
import 'package:grace_church/feature/authen/page/dev_profiles/enums/projet_section.dart';
import 'package:grace_church/feature/authen/page/dev_profiles/header.dart';
import 'package:grace_church/gen/assets.gen.dart';

class DevProfile extends StatefulWidget {
  const DevProfile({super.key});

  @override
  State<DevProfile> createState() => _DevProfileState();
}

class _DevProfileState extends State<DevProfile> {
  bool isHover = false;

  final List<Map<String, String>> menuItems = const [
    {'title': 'Home', 'icon': 'dashboard'},
    {'title': 'About', 'icon': 'users'},
    {'title': 'Projects', 'icon': 'settings'},
    {'title': 'Contacts', 'icon': 'settings'},
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          NavigateBloc()..add(NavigateEvent.menuSelected(NavigatEnum.home)),
      child: Scaffold(
        backgroundColor: AppColors.light.withValues(alpha: 0.2),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              final isMobile = width < 600;
              final isTablet = width >= 600 && width < 1024;
              final isDesktop = width >= 1024;

              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 20 : (isTablet ? 40 : 70),
                    vertical: 19,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(context, isMobile),
                      SizedBox(height: isMobile ? 30 : 0.1.sh),

                      // ── Contenu qui change selon le menu sélectionné ──
                      BlocBuilder<NavigateBloc, NavigateState>(
                        builder: (context, state) {
                          return switch (state.selectedMenu) {
                            NavigatEnum.home => _buildHero(
                              isMobile,
                              isTablet,
                              isDesktop,
                            ),
                            NavigatEnum.about => const AbouteSections(),
                            NavigatEnum.projects => ProjectsView(),
                            NavigatEnum.contact => const ContactSection(),
                          };
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, bool isMobile) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "Empet",
              style: GoogleFonts.poppins(
                fontSize: isMobile ? 20 : 24,
                color: const Color(0xFF1DB954),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ".",
              style: GoogleFonts.poppins(
                fontSize: isMobile ? 20 : 24,
                color: AppColors.dark,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        if (isMobile)
          IconButton(
            icon: const Icon(Icons.menu, color: AppColors.dark),
            onPressed: () => _showMobileMenu(context),
          )
        else
          _buildMenuRow(context),
      ],
    );
  }

  Widget _buildMenuRow(BuildContext context) {
    return BlocBuilder<NavigateBloc, NavigateState>(
      builder: (context, state) {
        return Row(
          children: [
            ...List.generate(menuItems.length, (index) {
              final menuEnum = _enumForIndex(index);
              final isSelected = state.selectedMenu == menuEnum;
              return GestureDetector(
                onTap: () {
                  context.read<NavigateBloc>().add(
                    NavigateEvent.menuSelected(menuEnum),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isSelected
                          ? const Color(0xFF1DB954)
                          : Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                              color: const Color(
                                0xFF1DB954,
                              ).withValues(alpha: 0.3),
                              blurRadius: 10,
                              offset: const Offset(0, 2),
                            ),
                          ]
                        : [],
                  ),
                  child: Text(
                    menuItems[index]['title']!,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColors.dark,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              );
            }),
          ],
        );
      },
    );
  }

  NavigatEnum _enumForIndex(int index) {
    switch (index) {
      case 1:
        return NavigatEnum.about;
      case 2:
        return NavigatEnum.projects;
      case 3:
        return NavigatEnum.contact;
      default:
        return NavigatEnum.home;
    }
  }

  void _showMobileMenu(BuildContext context) {
    final bloc = context.read<NavigateBloc>();
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF1E1E1E),
      builder: (_) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(menuItems.length, (index) {
            return ListTile(
              title: Text(
                menuItems[index]['title']!,
                style: GoogleFonts.poppins(color: const Color(0xFFF8F7F9)),
              ),
              onTap: () {
                bloc.add(NavigateEvent.menuSelected(_enumForIndex(index)));
                Navigator.pop(context);
              },
            );
          }),
        ),
      ),
    );
  }

  Widget _buildHero(bool isMobile, bool isTablet, bool isDesktop) {
    if (isMobile) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeroLeft(),
          const SizedBox(height: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  Assets.auth.profileImage.path,
                  height: 500,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      );
    }

    return SizedBox(
      height: isDesktop ? 0.75.sh : 0.6.sh,
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(flex: isDesktop ? 3 : 1, child: HeroLeft()),
              Flexible(flex: isDesktop ? 4 : 0, child: const SizedBox()),
            ],
          ),
          Positioned(
            bottom: 0,
            right: -9,
            child: Image.asset(
              Assets.auth.profileImage.path,
              height: isDesktop ? 0.68.sh : 0.5.sh,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 13.h, width: 1, color: const Color(0xFFF8F7F9)),
        SizedBox(width: 10.w),
        SvgPicture.asset(
          Assets.auth.github,
          width: 20.w,
          height: 20.h,
          colorFilter: const ColorFilter.mode(
            Color(0xFFF8F7F9),
            BlendMode.srcIn,
          ),
        ),
        SizedBox(width: 5.w),
        SvgPicture.asset(
          Assets.auth.linkedin,
          width: 24.w,
          height: 24.h,
          colorFilter: const ColorFilter.mode(
            Color(0xFFF8F7F9),
            BlendMode.srcIn,
          ),
        ),
      ],
    );
  }
}

          
                //AbouteSections()
                // ContactSection(),