// ── Membres Table ─────────────────────────────────────────────────────────────

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/moke/moke_data.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/menbers/widget/mber_table_header.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/menbers/widget/menber_profile.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/menbers/widget/menber_table_row.dart';

class MembresTable extends StatelessWidget {
  final List<ProfileResponse> membres;
  const MembresTable({required this.membres, super.key});

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
                Icon(
                  Icons.filter_list,
                  color: Colors.grey.shade300,
                  size: 20,
                  fontWeight: FontWeight.w600,
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
                Expanded(flex: 2, child: MenberTableHeader("Secteur d'étude")),
                Expanded(flex: 2, child: MenberTableHeader("Statut social")),
                Expanded(flex: 2, child: MenberTableHeader("Fonction")),
                Expanded(flex: 1, child: MenberTableHeader("Statut")),
                Expanded(flex: 2, child: MenberTableHeader("Matrimoniale")),
              ],
            ),
          ),
          Divider(color: C.border, height: 1),
          SizedBox(height: 0.252.sh,
          child: SingleChildScrollView(
            child: Column(
              children: [
                  ...membres.map(
            (m) => GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => Menberprofile(
                    member: m,
                  ),
                );
              },
              child: MembreTableRow(m,  membres: membres),
            ),
          ),
                
              ],
            ),
          ),),
        ],
      ),
    );
  }
}
