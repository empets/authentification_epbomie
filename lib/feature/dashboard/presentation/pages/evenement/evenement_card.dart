
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gracechurchadmine/core/moke/moke_data.dart';
import 'package:gracechurchadmine/feature/dashboard/presentation/pages/evenement/widget/evenement_title.dart';

class EvenementsCard extends StatelessWidget {
  const EvenementsCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: C.card,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: C.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("À venir", style: GoogleFonts.lora(fontSize: 15, fontWeight: FontWeight.w600, color: C.dark)),
              Icon(Icons.more_horiz, size: 18, color: C.muted),
            ],
          ),
          const SizedBox(height: 16),
          ...evenements.map((ev) => EvenementTile(ev: ev)),
          const SizedBox(height: 8),
          // Add button
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: C.gold.withOpacity(0.4), style: BorderStyle.solid, width: 1.5),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text("+ Ajouter un événement", style: TextStyle(fontSize: 12, color: C.green, fontWeight: FontWeight.w600)),
            ),
          ),
        ],
      ),
    );
  }
}
