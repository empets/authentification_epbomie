import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/bloc_state/bloc_state.dart';
import 'package:grace_church/core/build_screen/building_screen.dart';
import 'package:grace_church/core/color/color_information.dart';
import 'package:grace_church/core/enumeration/enumeration_place.dart';
import 'package:grace_church/core/extension/extention.dart';
import 'package:grace_church/core/moke/moke_data.dart';
import 'package:grace_church/feature/authen/domaine/entities/response/authen_response.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';
import 'package:grace_church/feature/dashboard/presentation/bloc/dashboard_manager/dashbord_bloc.dart';
import 'package:grace_church/feature/dashboard/presentation/bloc/dashboard_manager/event/dashboard_event.dart';
import 'package:grace_church/feature/dashboard/presentation/bloc/dashboard_manager/state/dasbord_state.dart';
import 'package:grace_church/feature/dashboard/presentation/bloc/get_presence/get_presence_bloc.dart';
import 'package:grace_church/feature/dashboard/presentation/bloc/get_profile/get_profile_bloc.dart';
import 'package:grace_church/feature/dashboard/presentation/bloc/guest/guest_list_bloc.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/evenement/evenement_card.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/graphes/goupe_pie_card.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/graphes/presence_graphe.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/kpi/bloc/menber_kpi_bloc.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/kpi/kpi_card.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/menbers/menber_table.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/menu/menu_sidebar.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/menu/widget/side_bar_component.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key, required this.admine});
  final AuthenResponse admine;
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final TextEditingController _searchController = TextEditingController();
  String _search = "";

  final List<NavItem> _navItems = const [
    NavItem(icon: Icons.dashboard_outlined, label: "Tableau de bord"),
    NavItem(icon: Icons.people_outline, label: "Membres"),
    NavItem(icon: Icons.bar_chart_rounded, label: "Statistiques"),
    NavItem(icon: Icons.calendar_today_outlined, label: "Événements"),
    // NavItem(icon: Icons.menu_book_outlined, label: "Groupes"),track_changes_outlined
    // NavItem(icon: Icons.favorite_outline, label: "Pastoral"),
    // NavItem(icon: Icons.child_care_outlined, label: "Enfants"),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<DashboardBloc, DashboardState>(
      listener: (context, state) {
        if (state.selectedMenu == DashboardMenu.evenement) {
          showDialog(
            context: context,
            builder: (context) => ScreenNotAvailable(
              showInfoButton: false,
              moreInfoMessage: 'Sermons page is under development',
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: C.background.withValues(alpha: 0.3),
        body: Row(
          children: [
            // ── Sidebar ────────────────────────────────────────────────────────────────
            BuildSideBar(navItems: _navItems, admine: widget.admine),
            Expanded(
              child:
                  BlocBuilder<GetProfileBloc, ApiState<List<ProfileResponse>>>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          _buildTopbar(isOpened: false),
                          Expanded(
                            child:
                                BlocBuilder<
                                  GetProfileBloc,
                                  ApiState<List<ProfileResponse>>
                                >(
                                  builder: (context, state) {
                                    switch (state) {
                                      case LoadState<List<ProfileResponse>>():
                                        return const Center(
                                          child:
                                              CircularProgressIndicator.adaptive(
                                                backgroundColor: C.border,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                      Color
                                                    >(C.gold),
                                              ),
                                        );
                                      case FailedState<List<ProfileResponse>>():
                                        return Center(
                                          child: Text(
                                            state.message.getOrEmpty(),
                                          ),
                                        );
                                      case SuccessState<
                                        List<ProfileResponse>
                                      >():
                                        final _profile = state.data;
                                        return _buildContent(profile: _profile);
                                      default:
                                        return const SizedBox();
                                    }
                                  },
                                ),
                          ),
                        ],
                      );
                    },
                  ),
            ),
          ],
        ),
      ),
    );
  }

  // ── Topbar ─────────────────────────────────────────────────────────────────

  Widget _buildTopbar({required bool isOpened}) {
    return   BlocBuilder<ThemeCubit, AppColors>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          decoration: BoxDecoration(
            color:   C.background,
            border: Border(bottom: BorderSide(color: C.border)),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tableau de bord",
                    style: GoogleFonts.lora(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: C.dark,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    formatDateWithWeek(DateTime.now().toString()),
                    style: TextStyle(fontSize: 12, color: C.muted),
                  ),
                ],
              ),
              const Spacer(),
              // Search
              SizedBox(
                width: 240,
                height: 38,
                child: TextField(
                  controller: _searchController,
                  onChanged: (v) => setState(() => _search = v.toLowerCase()),
                  style: TextStyle(fontSize: 13, color: C.dark),
                  decoration: InputDecoration(
                    hintText: "Chercher un membre…",
                    hintStyle: TextStyle(color: C.muted, fontSize: 13),
                    prefixIcon: Icon(Icons.search, size: 16, color: C.muted),
                    filled: true,
                    fillColor: C.input,
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: C.border),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: C.border),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: C.gold),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              // Bell
              GestureDetector(
                onTap: () {
                  if (!isOpened) {
                    showDialog(
                      context: context,
                      builder: (context) => ScreenNotAvailable(
                        showInfoButton: false,
                        message:
                            "Cette fonctionnalité est en cours de développement et sera bientôt disponible. Merci de votre patience.",
                      ),
                    );
                  }
                },
                child: Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    color: isOpened ? C.input : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: C.border),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.notifications_outlined,
                        size: 18,
                        color: isOpened ? C.muted : Colors.grey.shade700,
                      ),
                      if (isOpened)
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Container(
                            width: 7,
                            height: 7,
                            decoration: BoxDecoration(
                              color: isOpened ? C.gold : Colors.grey.shade700,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              // CTA
              Container(
                height: 38,
                decoration: BoxDecoration(
                  color: isOpened ? null : Colors.grey.shade300,
                  gradient: isOpened
                      ? const LinearGradient(
                          colors: [C.gold, Color(0xFFB8860B)],
                        )
                      : null,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: isOpened
                      ? [
                          BoxShadow(
                            color: C.gold.withValues(alpha: 0.3),
                            blurRadius: 8,
                            offset: const Offset(0, 3),
                          ),
                        ]
                      : null,
                ),
                child: TextButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => ScreenNotAvailable(
                        showInfoButton: false,
                        message:
                            "Cette fonctionnalité est en cours de développement et sera bientôt disponible. Merci de votre patience.",
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.person_add_outlined,
                    color: isOpened ? Colors.white : Colors.grey.shade700,
                    size: 16,
                  ),
                  label: Text(
                    "Nouveau membre",
                    style: TextStyle(
                      color: isOpened ? Colors.white : Colors.grey.shade700,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // ── Content ────────────────────────────────────────────────────────────────

  Widget _buildContent({required List<ProfileResponse> profile}) {
    final filteredMembres = profile
        .where(
          (m) =>
              m.activity.toLowerCase().contains(_search) ||
              m.dateBaptme.toLowerCase().contains(_search) ||
              m.name.toLowerCase().contains(_search),
        )
        .toList();
    IconData _activeComparisonIcon(int thisMonth, int lastMonth) {
      return thisMonth >= lastMonth
          ? Icons.trending_up
          : (thisMonth == 0 ? Icons.remove : Icons.trending_down);
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // KPI row
          BlocBuilder<MenberKpiBloc, ApiState<List<ProfileResponse>>>(
            builder: (context, state) {
              if (state is SuccessState<List<ProfileResponse>>) {
                // permet de calculer le nombre de membres actifs
                final totalActive = state.data
                    .where(
                      (m) =>
                          m.statusSpirituel.toLowerCase().contains("baptiser"),
                    )
                    .length;
                // permet de calculer le nombre de membres actifs ce mois
                final totalActiveThisMonth = state.data
                    .where(
                      (m) =>
                          m.statusSpirituel.toLowerCase().contains(
                            "baptiser",
                          ) &&
                          m.dateInscription.contains(
                            DateTime.now().month.toString(),
                          ),
                    )
                    .length;
                // permet de calculer le nombre de membres actifs le mois dernier
                final totalActiveLastMonth = state.data
                    .where(
                      (m) =>
                          m.statusSpirituel.toLowerCase().contains(
                            "baptiser",
                          ) &&
                          m.dateInscription.contains(
                            (DateTime.now().month - 1).toString(),
                          ),
                    )
                    .length;

                // permet de calculer le nombre de membres non actifs
                final totalInactive = state.data
                    .where(
                      (m) =>
                          !m.statusSpirituel.toLowerCase().contains("baptiser"),
                    )
                    .length;
                final totalNonActiveThisMonth = state.data
                    .where(
                      (m) =>
                          !m.statusSpirituel.toLowerCase().contains(
                            "baptiser",
                          ) &&
                          m.dateInscription.contains(
                            DateTime.now().month.toString(),
                          ),
                    )
                    .length;
                final totalNonActiveLastMonth = state.data
                    .where(
                      (m) =>
                          !m.statusSpirituel.toLowerCase().contains(
                            "baptiser",
                          ) &&
                          m.dateInscription.contains(
                            (DateTime.now().month - 1).toString(),
                          ),
                    )
                    .length;

                // permet de calculer le nombre de visiteurs
                final totalVisitors = state.data
                    .where((m) => m.activity == "Visiteur")
                    .length;

                /// cette méthode permet de formater la comparaison entre le nombre de membres actifs ce mois et le mois dernier
                String _formatActiveComparison(int thisMonth, int lastMonth) {
                  final diff = thisMonth - lastMonth;
                  final sign = diff >= 0 ? '+' : '-';
                  return '$sign${diff.abs()} ce mois';
                }

                ///
                IconData _activeComparisonIcon(int thisMonth, int lastMonth) {
                  return thisMonth >= lastMonth
                      ? Icons.trending_up
                      : (thisMonth == 0 ? Icons.remove : Icons.trending_down);
                }

                return Row(
                  children: [
                    /// ----------------------
                    /// Membres actifs
                    /// ----------------------
                    KpiCard(
                      label: "Membres actifs",
                      value: totalActive.toString(),
                      delta: _formatActiveComparison(
                        totalActiveThisMonth,
                        totalActiveLastMonth,
                      ),
                      icon: Icons.water_drop_outlined,
                      color: C.green,
                      isLocked: false,
                      trendIcon: _activeComparisonIcon(
                        totalActiveThisMonth,
                        totalActiveLastMonth,
                      ),
                    ),
                    const SizedBox(width: 16),

                    /// ----------------------
                    /// Membres non actifs
                    /// ----------------------
                    KpiCard(
                      label: "Membres non actifs",
                      value: totalInactive.toString(),
                      delta: _formatActiveComparison(
                        totalNonActiveThisMonth,
                        totalNonActiveLastMonth,
                      ),
                      icon: Icons.people_outline,
                      color: C.greenLight,
                      isLocked: false,
                      trendIcon: _activeComparisonIcon(
                        totalNonActiveThisMonth,
                        totalNonActiveLastMonth,
                      ),
                    ),
                    const SizedBox(width: 16),

                    BlocBuilder<
                      GetPresenceListBloc,
                      ApiState<List<PresenceResponse>>
                    >(
                      builder: (context, presenceState) {
                        if (presenceState
                            is SuccessState<List<PresenceResponse>>) {
                          final totalPresence = presenceState.data.last;
                          return KpiCard(
                            label: "Presence",
                            value:
                                (totalPresence.totalEnfant +
                                        totalPresence.totalHomme)
                                    .toString(),
                            delta: "total pour se dimanche",
                            icon: Icons.how_to_reg,
                            color: C.greenLight,
                            isLocked: false,
                            trendIcon: Icons.paste_outlined,
                          );
                        }

                        return KpiCard(
                          label: "Presence",
                          value: "",
                          delta: "10 ce dimanche",
                          icon: Icons.how_to_reg,
                          color: C.greenLight,
                          isLocked: false,
                          trendIcon: Icons.paste_outlined,
                        );
                      },
                    ),
                    const SizedBox(width: 16),
                    BlocBuilder<GuestListBloc, ApiState<List<GuestResponse>>>(
                      builder: (context, presenceState) {
                        if (presenceState
                            is SuccessState<List<GuestResponse>>) {
                          final totalVisiteur = presenceState.data.length;
                          return KpiCard(
                            label: "Visiteurs",
                            value: totalVisiteur.toString(),
                            delta:
                                "${(totalVisiteur / 100 * 12).round()}% du total",
                            icon: Icons.volunteer_activism_outlined,
                            color: C.greenLight,
                            isLocked: false,
                            trendIcon: _activeComparisonIcon(
                              totalVisitors,
                              totalVisitors,
                            ),
                          );
                        }

                        return KpiCard(
                          label: "Visiteurs",
                          value: '0',
                          delta: "N/A% du total",
                          icon: Icons.volunteer_activism_outlined,
                          color: C.greenLight,
                          isLocked: false,
                          trendIcon: Icons.lock,
                        );
                      },
                    ),
                    const SizedBox(width: 16),
                    KpiCard(
                      label: "Groupes & Cellules",
                      value: "0",
                      delta: "0 catégories",
                      icon: Icons.groups,
                      color: C.violet,
                      isLocked: true,
                      trendIcon: Icons.lock,
                    ),
                    const SizedBox(width: 16),
                    KpiCard(
                      label: "Événements ce mois",
                      value: "0",
                      delta: "0 vs juillet",
                      icon: Icons.event_available,
                      color: C.blue,
                      isLocked: true,
                      trendIcon: Icons.lock,
                    ),
                  ],
                );
              }

              return Row(
                children: [
                  KpiCard(
                    label: "Membres actifs",
                    value: "0",
                    delta: "0",
                    icon: Icons.water_drop_outlined,
                    color: C.green,
                    isLocked: false,
                    trendIcon: Icons.minimize,
                  ),
                  const SizedBox(width: 16),
                  KpiCard(
                    label: "Membres non actifs",
                    value: "0",
                    delta: "0",
                    icon: Icons.people_outline,
                    color: C.greenLight,
                    isLocked: false,
                    trendIcon: Icons.minimize,
                  ),

                  const SizedBox(width: 16),
                  BlocBuilder<
                    GetPresenceListBloc,
                    ApiState<List<PresenceResponse>>
                  >(
                    builder: (context, presenceState) {
                      if (presenceState
                          is SuccessState<List<PresenceResponse>>) {
                        final totalPresence = presenceState.data.last;
                        return KpiCard(
                          label: "Presence",
                          value:
                              (totalPresence.totalEnfant +
                                      totalPresence.totalHomme)
                                  .toString(),
                          delta: "total pour se dimanche",
                          icon: Icons.how_to_reg,
                          color: C.greenLight,
                          isLocked: false,
                          trendIcon: Icons.paste_outlined,
                        );
                      }

                      return KpiCard(
                        label: "Presence",
                        value: "0",
                        delta: "10 ce dimanche",
                        icon: Icons.how_to_reg,
                        color: C.greenLight,
                        isLocked: false,
                        trendIcon: Icons.paste_outlined,
                      );
                    },
                  ),
                  const SizedBox(width: 16),
                  BlocBuilder<GuestListBloc, ApiState<List<GuestResponse>>>(
                    builder: (context, presenceState) {
                      if (presenceState is SuccessState<List<GuestResponse>>) {
                        final totalVisiteur = presenceState.data.length;
                        return KpiCard(
                          label: "Visiteurs",
                          value: totalVisiteur.toString(),
                          delta:
                              "${(totalVisiteur / 100 * 12).round()}% du total",
                          icon: Icons.volunteer_activism_outlined,
                          color: C.greenLight,
                          isLocked: false,
                          trendIcon: _activeComparisonIcon(
                            totalVisiteur,
                            totalVisiteur,
                          ),
                        );
                      }

                      return KpiCard(
                        label: "Visiteurs",
                        value: '0',
                        delta: "N/A% du total",
                        icon: Icons.volunteer_activism_outlined,
                        color: C.greenLight,
                        isLocked: false,
                        trendIcon: Icons.lock,
                      );
                    },
                  ),
                  const SizedBox(width: 16),
                  KpiCard(
                    label: "Groupes & Cellules",
                    value: "0",
                    delta: "0 catégories",
                    icon: Icons.groups,
                    color: C.violet,
                    isLocked: true,
                    trendIcon: Icons.lock,
                  ),
                  const SizedBox(width: 16),
                  KpiCard(
                    label: "Événements ce mois",
                    value: "0",
                    delta: "0 vs juillet",
                    icon: Icons.event_available,
                    color: C.blue,
                    isLocked: true,
                    trendIcon: Icons.lock,
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 20),

          BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, dashboardState) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                transitionBuilder: (child, animation) {
                  final slideAnimation =
                      Tween<Offset>(
                        begin: const Offset(
                          0.20,
                          0,
                        ), // glissement plus prononcé (était 0.05)
                        end: Offset.zero,
                      ).animate(
                        CurvedAnimation(
                          parent: animation,
                          curve: Curves.easeOut,
                        ),
                      );

                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: slideAnimation,
                      child: child,
                    ),
                  );
                },
                child: Column(
                  children: [
                    switch (dashboardState.selectedMenu) {
                      DashboardMenu.presence => // Charts row
                      Row(
                        key: const ValueKey('presence'),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ── Presence Chart ────────────────────────────────────────────────────────────
                          Expanded(
                            flex: 2,
                            child:
                                BlocBuilder<
                                  GetPresenceListBloc,
                                  ApiState<List<PresenceResponse>>
                                >(
                                  builder: (context, state) {
                                    if (state
                                        is SuccessState<
                                          List<PresenceResponse>
                                        >) {
                                      final data = state.data;
                                      return PresenceEvolutionCard(
                                        rapports: data,
                                      );
                                    }
                                    return const PresenceEvolutionCard(
                                      rapports: [],
                                    );
                                  },
                                ),
                          ),
                          const SizedBox(width: 16),
                          // ── Pie Card ──────────────────────────────────────────────────────────────────
                          SizedBox(
                            width: 220,
                            child: GroupePieCard(profile: profile),
                          ),
                        ],
                      ),

                      DashboardMenu.membres => Row(
                        children: [
                          Expanded(
                            flex: 2,
                            key: const ValueKey('membres'),
                            child: MembresTable(membres: filteredMembres),
                          ),
                        ],
                      ),

                      DashboardMenu
                          .evenement => // ── Événements Card ───────────────────────────────────────────────────────────
                        SizedBox(
                          width: 500,
                          key: const ValueKey('evenement'),
                          child: EvenementsCard(),
                        ),
                      DashboardMenu.home => Column(
                        key: const ValueKey('home'),
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ── Presence Chart ────────────────────────────────────────────────────────────
                              Expanded(
                                flex: 2,
                                child:
                                    BlocBuilder<
                                      GetPresenceListBloc,
                                      ApiState<List<PresenceResponse>>
                                    >(
                                      builder: (context, state) {
                                        if (state
                                            is SuccessState<
                                              List<PresenceResponse>
                                            >) {
                                          final data = state.data;
                                          return PresenceEvolutionCard(
                                            rapports: data,
                                          );
                                        }
                                        return const PresenceEvolutionCard(
                                          rapports: [],
                                        );
                                      },
                                    ),
                              ),
                              const SizedBox(width: 16),
                              // ── Pie Card ──────────────────────────────────────────────────────────────────
                              SizedBox(
                                width: 220,
                                child: GroupePieCard(profile: profile),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),

                          // Bottom row
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: MembresTable(membres: filteredMembres),
                              ),
                              const SizedBox(width: 16),

                              // ── Événements Card ───────────────────────────────────────────────────────────
                              SizedBox(width: 260, child: EvenementsCard()),
                            ],
                          ),
                        ],
                      ),
                    },
                  ],
                ),
              );
            },
          ),

          // Charts row
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Breakpoints
// ─────────────────────────────────────────────────────────

class _Screen {
  static bool isMobile(BuildContext ctx) => MediaQuery.of(ctx).size.width < 600;
  static bool isTablet(BuildContext ctx) =>
      MediaQuery.of(ctx).size.width >= 600 &&
      MediaQuery.of(ctx).size.width < 1024;
  static bool isDesktop(BuildContext ctx) =>
      MediaQuery.of(ctx).size.width >= 1024;
}

// // ─────────────────────────────────────────────────────────
// // DashboardPage — responsive
// // ─────────────────────────────────────────────────────────

// class DashboardPage extends StatefulWidget {
//   const DashboardPage({super.key, required this.admine});
//   final AuthenResponse admine;

//   @override
//   State<DashboardPage> createState() => _DashboardPageState();
// }

// class _DashboardPageState extends State<DashboardPage> {
//   final TextEditingController _searchController = TextEditingController();
//   String _search = '';
//   bool _searchVisible = false; // pour mobile : afficher/cacher la searchbar

//   final List<NavItem> _navItems = const [
//     NavItem(icon: Icons.dashboard_outlined, label: 'Tableau de bord'),
//     NavItem(icon: Icons.people_outline, label: 'Membres'),
//     NavItem(icon: Icons.bar_chart_rounded, label: 'Statistiques'),
//     NavItem(icon: Icons.calendar_today_outlined, label: 'Événements'),
//   ];

//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<DashboardBloc, DashboardState>(
//       listener: (context, state) {
//         if (state.selectedMenu == DashboardMenu.evenement) {
//           showDialog(
//             context: context,
//             builder: (_) => ScreenNotAvailable(
//               showInfoButton: false,
//               moreInfoMessage: 'Sermons page is under development',
//             ),
//           );
//         }
//       },
//       child: LayoutBuilder(
//         builder: (context, constraints) {
//           // ── Desktop ─────────────────────────────────────
//           if (_Screen.isDesktop(context)) {
//             return _DesktopLayout(
//               navItems: _navItems,
//               admine: widget.admine,
//               searchController: _searchController,
//               search: _search,
//               onSearchChanged: (v) => setState(() => _search = v.toLowerCase()),
//             );
//           }

//           // ── Tablet ──────────────────────────────────────
//           if (_Screen.isTablet(context)) {
//             return _TabletLayout(
//               navItems: _navItems,
//               admine: widget.admine,
//               searchController: _searchController,
//               search: _search,
//               onSearchChanged: (v) => setState(() => _search = v.toLowerCase()),
//             );
//           }

//           // ── Mobile ──────────────────────────────────────
//           return _MobileLayout(
//             navItems: _navItems,
//             admine: widget.admine,
//             searchController: _searchController,
//             search: _search,
//             onSearchChanged: (v) => setState(() => _search = v.toLowerCase()),
//             searchVisible: _searchVisible,
//             onToggleSearch: () =>
//                 setState(() => _searchVisible = !_searchVisible),
//           );
//         },
//       ),
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // DESKTOP — sidebar fixe + contenu
// // ─────────────────────────────────────────────────────────

// class _DesktopLayout extends StatelessWidget {
//   final List<NavItem> navItems;
//   final AuthenResponse admine;
//   final TextEditingController searchController;
//   final String search;
//   final void Function(String) onSearchChanged;

//   const _DesktopLayout({
//     required this.navItems,
//     required this.admine,
//     required this.searchController,
//     required this.search,
//     required this.onSearchChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: C.background.withOpacity(0.3),
//       body: Row(
//         children: [
//           // Sidebar permanente
//           BuildSideBar(navItems: navItems, admine: admine),

//           // Contenu principal
//           Expanded(
//             child: BlocBuilder<GetProfileBloc, ApiState<List<ProfileResponse>>>(
//               builder: (context, state) => Column(
//                 children: [
//                   _TopBar(
//                     searchController: searchController,
//                     onSearchChanged: onSearchChanged,
//                     showSearchField: true,
//                     showAddButton: true,
//                   ),
//                   Expanded(
//                     child: _ContentSwitcher(state: state, search: search),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // TABLET — drawer + rail de navigation latéral compact
// // ─────────────────────────────────────────────────────────

// class _TabletLayout extends StatefulWidget {
//   final List<NavItem> navItems;
//   final AuthenResponse admine;
//   final TextEditingController searchController;
//   final String search;
//   final void Function(String) onSearchChanged;

//   const _TabletLayout({
//     required this.navItems,
//     required this.admine,
//     required this.searchController,
//     required this.search,
//     required this.onSearchChanged,
//   });

//   @override
//   State<_TabletLayout> createState() => _TabletLayoutState();
// }

// class _TabletLayoutState extends State<_TabletLayout> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       backgroundColor: C.background.withOpacity(0.3),
//       // Drawer pour la navigation
//       drawer: Drawer(
//         width: 240,
//         child: BuildSideBar(navItems: widget.navItems, admine: widget.admine),
//       ),
//       body: Row(
//         children: [
//           // Rail de navigation compact
//           _NavRail(navItems: widget.navItems),

//           // Contenu
//           Expanded(
//             child: BlocBuilder<GetProfileBloc, ApiState<List<ProfileResponse>>>(
//               builder: (context, state) => Column(
//                 children: [
//                   _TopBar(
//                     searchController: widget.searchController,
//                     onSearchChanged: widget.onSearchChanged,
//                     showSearchField: true,
//                     showAddButton: true,
//                     leadingIcon: IconButton(
//                       icon: const Icon(Icons.menu_rounded, size: 20),
//                       onPressed: () => _scaffoldKey.currentState?.openDrawer(),
//                     ),
//                   ),
//                   Expanded(
//                     child: _ContentSwitcher(
//                       state: state,
//                       search: widget.search,
//                       compactKpi: true,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // MOBILE — bottom navigation bar
// // ─────────────────────────────────────────────────────────

// class _MobileLayout extends StatelessWidget {
//   final List<NavItem> navItems;
//   final AuthenResponse admine;
//   final TextEditingController searchController;
//   final String search;
//   final void Function(String) onSearchChanged;
//   final bool searchVisible;
//   final VoidCallback onToggleSearch;

//   const _MobileLayout({
//     required this.navItems,
//     required this.admine,
//     required this.searchController,
//     required this.search,
//     required this.onSearchChanged,
//     required this.searchVisible,
//     required this.onToggleSearch,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<DashboardBloc, DashboardState>(
//       builder: (context, dashState) {
//         return Scaffold(
//           backgroundColor: C.background.withOpacity(0.3),
//           body: SafeArea(
//             child: BlocBuilder<GetProfileBloc, ApiState<List<ProfileResponse>>>(
//               builder: (context, state) => Column(
//                 children: [
//                   // Topbar mobile
//                   _TopBar(
//                     searchController: searchController,
//                     onSearchChanged: onSearchChanged,
//                     showSearchField: searchVisible,
//                     showAddButton: false,
//                     leadingIcon: Padding(
//                       padding: const EdgeInsets.only(left: 16),
//                       child: Row(
//                         children: [
//                           Container(
//                             width: 28,
//                             height: 28,
//                             decoration: BoxDecoration(
//                               color: C.greenLight,
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: const Icon(
//                               Icons.admin_panel_settings,
//                               color: Colors.white,
//                               size: 16,
//                             ),
//                           ),
//                           const SizedBox(width: 8),
//                           Text(
//                             'Dashboard',
//                             style: GoogleFonts.poppins(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                               color: C.dark,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     trailingActions: [
//                       // Bouton loupe
//                       IconButton(
//                         icon: Icon(
//                           searchVisible
//                               ? Icons.search_off_rounded
//                               : Icons.search_rounded,
//                           size: 20,
//                           color: C.muted,
//                         ),
//                         onPressed: onToggleSearch,
//                       ),
//                       // Cloche
//                       IconButton(
//                         icon: Icon(
//                           Icons.notifications_outlined,
//                           size: 20,
//                           color: C.muted,
//                         ),
//                         onPressed: () => showDialog(
//                           context: context,
//                           builder: (_) => ScreenNotAvailable(
//                             showInfoButton: false,
//                             message:
//                                 'Fonctionnalité en cours de développement.',
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   // Contenu scrollable
//                   Expanded(
//                     child: _ContentSwitcher(
//                       state: state,
//                       search: search,
//                       mobileLayout: true,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           // Bottom navigation bar
//           bottomNavigationBar: _BottomNav(navItems: navItems),
//         );
//       },
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // TopBar — partagée et adaptable
// // ─────────────────────────────────────────────────────────

// class _TopBar extends StatelessWidget {
//   final TextEditingController searchController;
//   final void Function(String) onSearchChanged;
//   final bool showSearchField;
//   final bool showAddButton;
//   final Widget? leadingIcon;
//   final List<Widget>? trailingActions;

//   const _TopBar({
//     required this.searchController,
//     required this.onSearchChanged,
//     required this.showSearchField,
//     required this.showAddButton,
//     this.leadingIcon,
//     this.trailingActions,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ThemeCubit, AppColors>(
//       builder: (context, _) => Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
//             decoration: BoxDecoration(
//               color: C.background,
//               border: Border(bottom: BorderSide(color: C.border)),
//             ),
//             child: Row(
//               children: [
//                 // Leading (titre ou burger)
//                 if (leadingIcon != null)
//                   leadingIcon!
//                 else ...[
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Tableau de bord',
//                         style: GoogleFonts.lora(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                           color: C.dark,
//                         ),
//                       ),
//                       const SizedBox(height: 2),
//                       Text(
//                         formatDateWithWeek(DateTime.now().toString()),
//                         style: TextStyle(fontSize: 11, color: C.muted),
//                       ),
//                     ],
//                   ),
//                 ],
//                 const Spacer(),

//                 // Actions trailing custom
//                 if (trailingActions != null)
//                   ...trailingActions!
//                 else ...[
//                   // Search field
//                   if (showSearchField)
//                     SizedBox(
//                       width: 220,
//                       height: 36,
//                       child: _SearchField(
//                         controller: searchController,
//                         onChanged: onSearchChanged,
//                       ),
//                     ),
//                   const SizedBox(width: 10),

//                   // Bell
//                   _TopBarIcon(
//                     icon: Icons.notifications_outlined,
//                     onTap: () => showDialog(
//                       context: context,
//                       builder: (_) => ScreenNotAvailable(
//                         showInfoButton: false,
//                         message: 'Fonctionnalité en cours de développement.',
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 10),

//                   // Ajouter membre
//                   if (showAddButton) _AddMemberButton(),
//                 ],
//               ],
//             ),
//           ),

//           // Barre de recherche dépliable (mobile)
//           AnimatedSize(
//             duration: const Duration(milliseconds: 250),
//             curve: Curves.easeInOut,
//             child: showSearchField && trailingActions != null
//                 ? Container(
//                     color: C.background,
//                     padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
//                     child: _SearchField(
//                       controller: searchController,
//                       onChanged: onSearchChanged,
//                     ),
//                   )
//                 : const SizedBox.shrink(),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _SearchField extends StatelessWidget {
//   final TextEditingController controller;
//   final void Function(String) onChanged;

//   const _SearchField({required this.controller, required this.onChanged});

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       onChanged: onChanged,
//       style: TextStyle(fontSize: 13, color: C.dark),
//       decoration: InputDecoration(
//         hintText: 'Chercher un membre…',
//         hintStyle: TextStyle(color: C.muted, fontSize: 13),
//         prefixIcon: Icon(Icons.search, size: 16, color: C.muted),
//         filled: true,
//         fillColor: C.input,
//         contentPadding: const EdgeInsets.symmetric(vertical: 0),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide(color: C.border),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide(color: C.border),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(color: C.gold, width: 1.5),
//         ),
//       ),
//     );
//   }
// }

// class _TopBarIcon extends StatelessWidget {
//   final IconData icon;
//   final VoidCallback onTap;

//   const _TopBarIcon({required this.icon, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: 36,
//         height: 36,
//         decoration: BoxDecoration(
//           color: C.input,
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: C.border),
//         ),
//         child: Icon(icon, size: 18, color: C.muted),
//       ),
//     );
//   }
// }

// class _AddMemberButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 36,
//       decoration: BoxDecoration(
//         color: Colors.grey.shade200,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: TextButton.icon(
//         onPressed: () => showDialog(
//           context: context,
//           builder: (_) => ScreenNotAvailable(
//             showInfoButton: false,
//             message: 'Fonctionnalité en cours de développement.',
//           ),
//         ),
//         icon: Icon(
//           Icons.person_add_outlined,
//           color: Colors.grey.shade700,
//           size: 15,
//         ),
//         label: Text(
//           'Nouveau membre',
//           style: TextStyle(
//             color: Colors.grey.shade700,
//             fontSize: 13,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // Rail de navigation (Tablet)
// // ─────────────────────────────────────────────────────────

// class _NavRail extends StatelessWidget {
//   final List<NavItem> navItems;

//   const _NavRail({required this.navItems});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<DashboardBloc, DashboardState>(
//       builder: (context, state) {
//         return Container(
//           width: 64,
//           decoration: BoxDecoration(
//             color: C.background,
//             border: Border(right: BorderSide(color: C.border)),
//           ),
//           child: Column(
//             children: [
//               const SizedBox(height: 16),
//               Container(
//                 width: 36,
//                 height: 36,
//                 decoration: BoxDecoration(
//                   color: C.greenLight,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: const Icon(
//                   Icons.admin_panel_settings,
//                   color: Colors.white,
//                   size: 18,
//                 ),
//               ),
//               const SizedBox(height: 24),
//               ...navItems.asMap().entries.map((e) {
//                 final index = e.key;
//                 final item = e.value;
//                 final menu = DashboardMenu.values[index];
//                 final isActive = state.selectedMenu == menu;

//                 return Tooltip(
//                   message: item.label,
//                   preferBelow: false,
//                   child: GestureDetector(
//                     onTap: () => context.read<DashboardBloc>().add(
//                       DashboardEvent.menuSelected(menu),
//                     ),
//                     child: AnimatedContainer(
//                       duration: const Duration(milliseconds: 200),
//                       margin: const EdgeInsets.symmetric(
//                         vertical: 4,
//                         horizontal: 10,
//                       ),
//                       width: 44,
//                       height: 44,
//                       decoration: BoxDecoration(
//                         color: isActive
//                             ? C.greenLight.withOpacity(0.1)
//                             : Colors.transparent,
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Icon(
//                         item.icon,
//                         size: 20,
//                         color: isActive ? C.greenLight : C.muted,
//                       ),
//                     ),
//                   ),
//                 );
//               }),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // Bottom navigation (Mobile)
// // ─────────────────────────────────────────────────────────

// class _BottomNav extends StatelessWidget {
//   final List<NavItem> navItems;

//   const _BottomNav({required this.navItems});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<DashboardBloc, DashboardState>(
//       builder: (context, state) {
//         final currentIndex = DashboardMenu.values
//             .indexOf(state.selectedMenu)
//             .clamp(0, 3);

//         return Container(
//           decoration: BoxDecoration(
//             color: C.background,
//             border: Border(top: BorderSide(color: C.border)),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.05),
//                 blurRadius: 16,
//                 offset: const Offset(0, -4),
//               ),
//             ],
//           ),
//           child: SafeArea(
//             top: false,
//             child: SizedBox(
//               height: 60,
//               child: Row(
//                 children: navItems.asMap().entries.map((e) {
//                   final index = e.key;
//                   final item = e.value;
//                   final menu = DashboardMenu.values[index];
//                   final isActive = currentIndex == index;

//                   return Expanded(
//                     child: GestureDetector(
//                       onTap: () => context.read<DashboardBloc>().add(
//                         DashboardEvent.menuSelected(menu),
//                       ),
//                       behavior: HitTestBehavior.opaque,
//                       child: AnimatedContainer(
//                         duration: const Duration(milliseconds: 200),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             AnimatedContainer(
//                               duration: const Duration(milliseconds: 200),
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 14,
//                                 vertical: 4,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: isActive
//                                     ? C.greenLight.withOpacity(0.12)
//                                     : Colors.transparent,
//                                 borderRadius: BorderRadius.circular(99),
//                               ),
//                               child: Icon(
//                                 item.icon,
//                                 size: 20,
//                                 color: isActive ? C.greenLight : C.muted,
//                               ),
//                             ),
//                             const SizedBox(height: 3),
//                             Text(
//                               item.label.split(' ').first,
//                               style: TextStyle(
//                                 fontSize: 9,
//                                 fontWeight: isActive
//                                     ? FontWeight.w600
//                                     : FontWeight.w400,
//                                 color: isActive ? C.greenLight : C.muted,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 }).toList(),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // ContentSwitcher — partagé entre les 3 layouts
// // ─────────────────────────────────────────────────────────

// class _ContentSwitcher extends StatelessWidget {
//   final ApiState<List<ProfileResponse>> state;
//   final String search;
//   final bool compactKpi;
//   final bool mobileLayout;

//   const _ContentSwitcher({
//     required this.state,
//     required this.search,
//     this.compactKpi = false,
//     this.mobileLayout = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     switch (state) {
//       case LoadState<List<ProfileResponse>>():
//         return const Center(
//           child: CircularProgressIndicator.adaptive(
//             backgroundColor: C.border,
//             valueColor: AlwaysStoppedAnimation<Color>(C.gold),
//           ),
//         );

//       case FailedState<List<ProfileResponse>>(message: final message):
//         return Center(child: Text(message.getOrEmpty()));

//       case SuccessState<List<ProfileResponse>>(data: final profile):
//         final filtered = profile
//             .where(
//               (m) =>
//                   m.activity.toLowerCase().contains(search) ||
//                   m.dateBaptme.toLowerCase().contains(search) ||
//                   m.name.toLowerCase().contains(search),
//             )
//             .toList();

//         return SingleChildScrollView(
//           padding: EdgeInsets.all(mobileLayout ? 16 : 24),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // ── KPI Cards ──────────────────────────────
//               _KpiRow(
//                 profile: profile,
//                 compact: compactKpi,
//                 mobile: mobileLayout,
//               ),
//               const SizedBox(height: 20),

//               // ── Contenu selon menu ──────────────────────
//               BlocBuilder<DashboardBloc, DashboardState>(
//                 builder: (context, dashState) => AnimatedSwitcher(
//                   duration: const Duration(milliseconds: 350),
//                   transitionBuilder: (child, animation) => FadeTransition(
//                     opacity: animation,
//                     child: SlideTransition(
//                       position:
//                           Tween<Offset>(
//                             begin: const Offset(0.1, 0),
//                             end: Offset.zero,
//                           ).animate(
//                             CurvedAnimation(
//                               parent: animation,
//                               curve: Curves.easeOut,
//                             ),
//                           ),
//                       child: child,
//                     ),
//                   ),
//                   child: _buildMenuContent(
//                     context: context,
//                     menu: dashState.selectedMenu,
//                     profile: profile,
//                     filtered: filtered,
//                     mobile: mobileLayout,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );

//       default:
//         return const SizedBox();
//     }
//   }

//   Widget _buildMenuContent({
//     required BuildContext context,
//     required DashboardMenu menu,
//     required List<ProfileResponse> profile,
//     required List<ProfileResponse> filtered,
//     required bool mobile,
//   }) {
//     switch (menu) {
//       // ── Présence ───────────────────────────────────────
//       case DashboardMenu.presence:
//         return _PresenceLayout(
//           profile: profile,
//           mobile: mobile,
//           key: const ValueKey('presence'),
//         );

//       // ── Membres ────────────────────────────────────────
//       case DashboardMenu.membres:
//         return MembresTable(membres: filtered, key: const ValueKey('membres'));

//       // ── Événements ─────────────────────────────────────
//       case DashboardMenu.evenement:
//         return SizedBox(
//           width: mobile ? double.infinity : 500,
//           key: const ValueKey('evenement'),
//           child: EvenementsCard(),
//         );

//       // ── Home (défaut) ──────────────────────────────────

//       default:
//         return _HomeLayout(
//           profile: profile,
//           filtered: filtered,
//           mobile: mobile,
//           key: const ValueKey('home'),
//         );
//     }
//   }
// }

// // ─────────────────────────────────────────────────────────
// // KPI Row — responsive (scroll horizontal ou grille 2×2)
// // ─────────────────────────────────────────────────────────

// class _KpiRow extends StatelessWidget {
//   final List<ProfileResponse> profile;
//   final bool compact;
//   final bool mobile;

//   const _KpiRow({
//     required this.profile,
//     this.compact = false,
//     this.mobile = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<MenberKpiBloc, ApiState<List<ProfileResponse>>>(
//       builder: (context, state) {
//         final kpiData = state is SuccessState<List<ProfileResponse>>
//             ? state.data
//             : <ProfileResponse>[];

//         final cards = _buildKpiCards(kpiData);

//         // Mobile : grille 2×2
//         if (mobile) {
//           return GridView.count(
//             crossAxisCount: 2,
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             crossAxisSpacing: 12,
//             mainAxisSpacing: 12,
//             childAspectRatio: 1.4,
//             children: cards,
//           );
//         }

//         // Tablet : scroll horizontal
//         if (compact) {
//           return SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: cards
//                   .map(
//                     (c) => Padding(
//                       padding: const EdgeInsets.only(right: 12),
//                       child: SizedBox(width: 180, child: c),
//                     ),
//                   )
//                   .toList(),
//             ),
//           );
//         }

//         // Desktop : row classique
//         return Row(
//           children: cards
//               .map(
//                 (c) => Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 12),
//                     child: c,
//                   ),
//                 ),
//               )
//               .toList(),
//         );
//       },
//     );
//   }

//   List<Widget> _buildKpiCards(List<ProfileResponse> data) {
//     IconData trendIcon(int a, int b) => a >= b
//         ? Icons.trending_up
//         : (a == 0 ? Icons.remove : Icons.trending_down);

//     String delta(int a, int b) {
//       final d = a - b;
//       return '${d >= 0 ? '+' : ''}$d ce mois';
//     }

//     final totalActive = data
//         .where((m) => m.statusSpirituel.toLowerCase().contains('baptiser'))
//         .length;
//     final activeThisMonth = data
//         .where(
//           (m) =>
//               m.statusSpirituel.toLowerCase().contains('baptiser') &&
//               m.dateInscription.contains(DateTime.now().month.toString()),
//         )
//         .length;
//     final activeLastMonth = data
//         .where(
//           (m) =>
//               m.statusSpirituel.toLowerCase().contains('baptiser') &&
//               m.dateInscription.contains((DateTime.now().month - 1).toString()),
//         )
//         .length;

//     final totalInactive = data
//         .where((m) => !m.statusSpirituel.toLowerCase().contains('baptiser'))
//         .length;
//     final inactiveThisMonth = data
//         .where(
//           (m) =>
//               !m.statusSpirituel.toLowerCase().contains('baptiser') &&
//               m.dateInscription.contains(DateTime.now().month.toString()),
//         )
//         .length;
//     final inactiveLastMonth = data
//         .where(
//           (m) =>
//               !m.statusSpirituel.toLowerCase().contains('baptiser') &&
//               m.dateInscription.contains((DateTime.now().month - 1).toString()),
//         )
//         .length;

//     return [
//       KpiCard(
//         label: 'Membres actifs',
//         value: totalActive.toString(),
//         delta: delta(activeThisMonth, activeLastMonth),
//         icon: Icons.water_drop_outlined,
//         color: C.green,
//         isLocked: false,
//         trendIcon: trendIcon(activeThisMonth, activeLastMonth),
//       ),
//       KpiCard(
//         label: 'Non actifs',
//         value: totalInactive.toString(),
//         delta: delta(inactiveThisMonth, inactiveLastMonth),
//         icon: Icons.people_outline,
//         color: C.greenLight,
//         isLocked: false,
//         trendIcon: trendIcon(inactiveThisMonth, inactiveLastMonth),
//       ),
//       BlocBuilder<GetPresenceListBloc, ApiState<List<PresenceResponse>>>(
//         builder: (_, s) {
//           final val = s is SuccessState<List<PresenceResponse>>
//               ? (s.data.last.totalEnfant + s.data.last.totalHomme).toString()
//               : '0';
//           return KpiCard(
//             label: 'Présence',
//             value: val,
//             delta: 'total ce dimanche',
//             icon: Icons.how_to_reg,
//             color: C.greenLight,
//             isLocked: false,
//             trendIcon: Icons.paste_outlined,
//           );
//         },
//       ),
//       BlocBuilder<GuestListBloc, ApiState<List<GuestResponse>>>(
//         builder: (_, s) {
//           final total = s is SuccessState<List<GuestResponse>>
//               ? s.data.length
//               : 0;
//           return KpiCard(
//             label: 'Visiteurs',
//             value: total.toString(),
//             delta: '${(total / 100 * 12).round()}% du total',
//             icon: Icons.volunteer_activism_outlined,
//             color: C.greenLight,
//             isLocked: false,
//             trendIcon: total == 0 ? Icons.remove : Icons.trending_up,
//           );
//         },
//       ),
//       KpiCard(
//         label: 'Groupes',
//         value: '0',
//         delta: '0 catégories',
//         icon: Icons.groups,
//         color: C.violet,
//         isLocked: true,
//         trendIcon: Icons.lock,
//       ),
//       KpiCard(
//         label: 'Événements',
//         value: '0',
//         delta: '0 ce mois',
//         icon: Icons.event_available,
//         color: C.blue,
//         isLocked: true,
//         trendIcon: Icons.lock,
//       ),
//     ];
//   }
// }

// // ─────────────────────────────────────────────────────────
// // Layouts de contenu
// // ─────────────────────────────────────────────────────────

// class _HomeLayout extends StatelessWidget {
//   final List<ProfileResponse> profile;
//   final List<ProfileResponse> filtered;
//   final bool mobile;

//   const _HomeLayout({
//     super.key,
//     required this.profile,
//     required this.filtered,
//     required this.mobile,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // Charts
//         _PresenceLayout(profile: profile, mobile: mobile),
//         const SizedBox(height: 20),

//         // Table + événements
//         if (mobile)
//           Column(
//             children: [
//               MembresTable(membres: filtered),
//               const SizedBox(height: 16),
//               EvenementsCard(),
//             ],
//           )
//         else
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(flex: 2, child: MembresTable(membres: filtered)),
//               const SizedBox(width: 16),
//               SizedBox(width: 260, child: EvenementsCard()),
//             ],
//           ),
//       ],
//     );
//   }
// }

// class _PresenceLayout extends StatelessWidget {
//   final List<ProfileResponse> profile;
//   final bool mobile;

//   const _PresenceLayout({
//     super.key,
//     required this.profile,
//     required this.mobile,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<GetPresenceListBloc, ApiState<List<PresenceResponse>>>(
//       builder: (_, state) {
//         final rapports = state is SuccessState<List<PresenceResponse>>
//             ? state.data
//             : <PresenceResponse>[];

//         if (mobile) {
//           return Column(
//             children: [
//               PresenceEvolutionCard(rapports: rapports),
//               const SizedBox(height: 16),
//               GroupePieCard(profile: profile),
//             ],
//           );
//         }

//         return Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(flex: 2, child: PresenceEvolutionCard(rapports: rapports)),
//             const SizedBox(width: 16),
//             SizedBox(width: 220, child: GroupePieCard(profile: profile)),
//           ],
//         );
//       },
//     );
//   }
// }
