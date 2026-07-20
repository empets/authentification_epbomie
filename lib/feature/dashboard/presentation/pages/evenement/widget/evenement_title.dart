
import 'package:flutter/material.dart';
import 'package:gracechurchadmine/core/moke/moke_data.dart';

class EvenementTile extends StatelessWidget {
  final Evenement ev;
  const EvenementTile({super.key, required this.ev});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row( 
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: ev.color.withOpacity(0.10),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: ev.color.withOpacity(0.18)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(ev.date, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: ev.color, height: 1)),
                Text(ev.mois, style: TextStyle(fontSize: 8, color: ev.color.withOpacity(0.7), letterSpacing: 0.5)),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(ev.titre, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: C.dark)),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Icon(Icons.access_time_outlined, size: 10, color: C.muted),
                    const SizedBox(width: 3),
                    Text(ev.heure, style: TextStyle(fontSize: 10, color: C.muted)),
                    const SizedBox(width: 6),
                    Icon(Icons.people_outline, size: 10, color: C.muted),
                    const SizedBox(width: 3),
                    Text("${ev.participants}", style: TextStyle(fontSize: 10, color: C.muted)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}