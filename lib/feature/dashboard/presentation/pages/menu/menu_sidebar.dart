import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/build_screen/building_screen.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/core/moke/moke_data.dart';
import 'package:grace_church/feature/authen/page/login.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/menu/widget/side_bar_component.dart';
import 'package:grace_church/gen/assets.gen.dart';

class BuildSideBar extends StatefulWidget {
  const BuildSideBar({super.key, required this.navItems});

  final List<NavItem> navItems;

  @override
  State<BuildSideBar> createState() => _BuildSideBarState();
}

class _BuildSideBarState extends State<BuildSideBar> {
  int selectedNav = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 232,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF0F1824), Color(0xFF071018)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logo
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 8),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5.r),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: context.appColor.primaryLightBlue,
                    ),
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: ClipOval(
                    child: Image.network(
                      loadingBuilder: (context, child, loadingProgress) {
                        return child;
                      },
                      errorBuilder: (_, __, ___) => ClipOval(
                        child: Image.asset(
                          Assets.iconLauncher.icon.path,
                          fit: BoxFit.contain,
                          height: 0.04.sh,
                          width: 0.04.sh,
                        ),
                      ),
                      Assets.iconLauncher.icon.path,
                      fit: BoxFit.cover,
                      height: 0.06.sh,
                      width: 0.06.sh,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "EPBOMIE",
                      style: GoogleFonts.lora(
                        color: C.sidebarText,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "Jean 3:16",
                      style: TextStyle(
                        color: C.sidebarMuted,
                        fontSize: 9,
                        letterSpacing: 1.8,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "NAVIGATION",
              style: TextStyle(
                color: C.sidebarMuted,
                fontSize: 3.sp,
                fontWeight: FontWeight.w700,
                letterSpacing: 2.0,
              ),
            ),
          ),
          const SizedBox(height: 8),

          // Nav items
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              itemCount: widget.navItems.length,
              itemBuilder: (_, i) => NavTile(
                item: widget.navItems[i],
                selected: selectedNav == i,
                onTap: () {
                  setState(() => selectedNav = i);

                  if (i != 0) {
                    showDialog(
                      context: context,
                      builder: (context) => ScreenNotAvailable(
                        showInfoButton: false,
                        moreInfoMessage: switch (i) {
                          1 => 'Sermons page is under development',
                          2 => 'Events page is under development',
                          3 => 'Giving page is under development',
                          4 => 'Prayer requests page is under development',
                          5 => 'Contact page is under development',
                          _ => 'This feature is not available yet',
                        },
                      ),
                    );
                  }
                },
              ),
            ),
          ),

          // Divider
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(color: Colors.white.withOpacity(0.07), height: 1),
          ),
          const SizedBox(height: 8),

          // Settings / Logout
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                SidebarAction(
                  icon: Icons.settings_outlined,
                  label: "Paramètres",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) =>
                          ScreenNotAvailable(showInfoButton: false),
                    );
                  },
                ),
                SidebarAction(
                  icon: Icons.logout_outlined,
                  label: "Déconnexion",
                  iconColor: Colors.red,
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                      (route) => false,
                    );
                    // showDialog(
                    //   context: context,
                    //   builder: (context) =>
                    //       ScreenNotAvailable(showInfoButton: false),
                    // );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),

          // User card
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(12, 0, 12, 16),
          //   child: Container(
          //     padding: const EdgeInsets.all(12),
          //     decoration: BoxDecoration(
          //       color: C.gold.withValues(alpha: 0.08),
          //       borderRadius: BorderRadius.circular(12),
          //       border: Border.all(color: C.gold.withValues(alpha: 0.15)),
          //     ),
          //     child: Row(
          //       children: [
          //         CircleAvatar(
          //           radius: 16,
          //           backgroundColor: C.gold,
          //           child: const Text(
          //             "JP",
          //             style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 11,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //         ),
          //         const SizedBox(width: 10),
          //         Expanded(
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 "Past. Jean-Pierre",
          //                 style: TextStyle(
          //                   color: C.sidebarText,
          //                   fontSize: 11,
          //                   fontWeight: FontWeight.w600,
          //                 ),
          //               ),
          //               Text(
          //                 "Administrateur",
          //                 style: TextStyle(color: C.sidebarMuted, fontSize: 10),
          //               ),
          //             ],
          //           ),
          //         ),
          //         Icon(
          //           Icons.shield_outlined,
          //           color: C.gold.withOpacity(0.7),
          //           size: 14,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
