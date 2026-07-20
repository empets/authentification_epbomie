

// ── Membres Table ─────────────────────────────────────────────────────────────

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gracechurchadmine/feature/dashboard/presentation/pages/menbers/widget/mber_table_header.dart';
import 'package:gracechurchadmine/feature/dashboard/presentation/pages/menbers/widget/menber_table_row.dart';
import 'package:gracechurchadmine/core/moke/moke_data.dart';

class MembresTable extends StatelessWidget {
  final List<Membre> membres;
  const MembresTable({required this.membres});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: C.card,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: C.border),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Annuaire des membres",
                  style: GoogleFonts.lora(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: C.dark,
                  ),
                ),
                Text(
                  "Voir tout →",
                  style: TextStyle(
                    fontSize: 12,
                    color: C.gold,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Divider(color: C.border, height: 1),
          // Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: const [
                Expanded(flex: 3, child: MenberTableHeader("Membre")),
                Expanded(flex: 2, child: MenberTableHeader("Rôle")),
                Expanded(flex: 2, child: MenberTableHeader("Groupe")),
                Expanded(flex: 1, child: MenberTableHeader("Statut")),
                Expanded(flex: 2, child: MenberTableHeader("Depuis")),
              ],
            ),
          ),
          Divider(color: C.border, height: 1),
          ...membres.map((m) => MembreTableRow(m)),
        ],
      ),
    );
  }
}
