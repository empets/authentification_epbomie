import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/bloc_state/bloc_state.dart';
import 'package:grace_church/core/build_screen/building_screen.dart';
import 'package:grace_church/core/enumeration/enumeration_place.dart';
import 'package:grace_church/core/extension/extention.dart';
import 'package:grace_church/core/moke/moke_data.dart';
import 'package:grace_church/feature/authen/domaine/entities/response/authen_response.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';
import 'package:grace_church/feature/dashboard/presentation/bloc/dashboard_manager/dashbord_bloc.dart';
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
    return Scaffold(
      backgroundColor: C.background.withValues(alpha: 0.3),
      body: Row(
        children: [
          // ── Sidebar ────────────────────────────────────────────────────────────────
          BuildSideBar(navItems: _navItems, admine: widget.admine),
          Expanded(
            child: BlocBuilder<GetProfileBloc, ApiState<List<ProfileResponse>>>(
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
                                    child: CircularProgressIndicator.adaptive(
                                      backgroundColor: C.border,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        C.gold,
                                      ),
                                    ),
                                  );
                                case FailedState<List<ProfileResponse>>():
                                  return Center(
                                    child: Text(state.message.getOrEmpty()),
                                  );
                                case SuccessState<List<ProfileResponse>>():
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
    );
  }

  // ── Topbar ─────────────────────────────────────────────────────────────────

  Widget _buildTopbar({required bool isOpened}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      decoration: BoxDecoration(
        color: C.background.withOpacity(0.9),
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
                  ? const LinearGradient(colors: [C.gold, Color(0xFFB8860B)])
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
                    value: "",
                    delta: "",
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
