import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gracechurchadmine/core/build_screen/building_screen.dart';
import 'package:gracechurchadmine/core/extension/extention.dart';
import 'package:gracechurchadmine/core/moke/moke_data.dart';
import 'package:gracechurchadmine/feature/dashboard/presentation/pages/evenement/evenement_card.dart';
import 'package:gracechurchadmine/feature/dashboard/presentation/pages/graphes/goupe_pie_card.dart';
import 'package:gracechurchadmine/feature/dashboard/presentation/pages/graphes/presence_graphe.dart';
import 'package:gracechurchadmine/feature/dashboard/presentation/pages/kpi/kpi_card.dart';
import 'package:gracechurchadmine/feature/dashboard/presentation/pages/menbers/menber_table.dart';
import 'package:gracechurchadmine/feature/dashboard/presentation/pages/menu/menu_sidebar.dart';
import 'package:gracechurchadmine/feature/dashboard/presentation/pages/menu/widget/side_bar_component.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final TextEditingController _searchController = TextEditingController();
  String _search = "";

  final List<NavItem> _navItems = const [
    NavItem(icon: Icons.church_outlined, label: "Tableau de bord"),
    NavItem(icon: Icons.people_outline, label: "Membres"),
    NavItem(icon: Icons.track_changes_outlined, label: "Présences"),
    NavItem(icon: Icons.calendar_today_outlined, label: "Événements"),
    // NavItem(icon: Icons.menu_book_outlined, label: "Groupes"),
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
          BuildSideBar(navItems: _navItems),
          Expanded(
            child: Column(
              children: [
                _buildTopbar(isOpened: false),
                Expanded(child: _buildContent()),
              ],
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

  Widget _buildContent() {
    final filteredMembres = membres
        .where(
          (m) =>
              m.nom.toLowerCase().contains(_search) ||
              m.groupe.toLowerCase().contains(_search) ||
              m.role.toLowerCase().contains(_search),
        )
        .toList();

    return SingleChildScrollView(
      padding: const EdgeInsets.all(28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // KPI row
          Row(
            children: [
              KpiCard(
                label: "Membres actifs",
                value: "312",
                delta: "+8 ce mois",
                icon: Icons.water_drop_outlined,
                color: C.green,
                isLocked: false,
              ),
              const SizedBox(width: 16),
              KpiCard(
                label: "Membres non actifs",
                value: "256",
                delta: "+10 ce mois",
                icon: Icons.people_outline,
                color: C.greenLight,
                isLocked: false,
              ),
              const SizedBox(width: 16),
              KpiCard(
                label: "Visiteurs",
                value: "20",
                delta: "12% du total",
                icon: Icons.volunteer_activism_outlined,
                color: C.greenLight,
                isLocked: false,
              ),
              const SizedBox(width: 16),
              KpiCard(
                label: "Groupes & Cellules",
                value: "14",
                delta: "5 catégories",
                icon: Icons.groups,
                color: C.violet,
                isLocked: true,
              ),
              const SizedBox(width: 16),
              KpiCard(
                label: "Événements ce mois",
                value: "9",
                delta: "+2 vs juillet",
                icon: Icons.event_available,
                color: C.blue,
                isLocked: true,
              ),
            ],
          ),
          // presence dimanche
          //Groupes & Cellules
          //Événements ce mois
          const SizedBox(height: 20),

          // Charts row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Presence Chart ────────────────────────────────────────────────────────────
              Expanded(flex: 2, child: const PresenceChart()),
              const SizedBox(width: 16),
              // ── Pie Card ──────────────────────────────────────────────────────────────────
              SizedBox(width: 220, child: const GroupePieCard()),
            ],
          ),
          const SizedBox(height: 20),

          // Bottom row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 2, child: MembresTable(membres: filteredMembres)),
              const SizedBox(width: 16),

              // ── Événements Card ───────────────────────────────────────────────────────────
              SizedBox(width: 260, child: EvenementsCard()),
            ],
          ),
        ],
      ),
    );
  }
}
