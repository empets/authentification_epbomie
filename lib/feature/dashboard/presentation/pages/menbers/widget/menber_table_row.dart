

import 'package:flutter/material.dart';
import 'package:gracechurchadmine/core/moke/moke_data.dart';

class MembreTableRow extends StatelessWidget {
  final Membre m;
  const MembreTableRow(this.m, {super.key});

  Color get _statutColor => switch (m.statut) {
    "actif" => const Color(0xFF16A34A),
    "nouveau" => const Color(0xFFD97706),
    _ => const Color(0xFF9CA3AF),
  };

  Color get _statutBg => switch (m.statut) {
    "actif" => const Color(0xFFDCFCE7),
    "nouveau" => const Color(0xFFFEF3C7),
    _ => const Color(0xFFF3F4F6),
  };

  String get _statutLabel => switch (m.statut) {
    "actif" => "Actif",
    "nouveau" => "Nouveau",
    _ => "Inactif",
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Row(
            children: [
              // Membre
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: m.color,
                      child: Text(
                        m.avatar,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        m.nom,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: C.dark,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              // Rôle
              Expanded(
                flex: 2,
                child: Text(
                  m.role,
                  style: TextStyle(fontSize: 12, color: C.muted),
                ),
              ),
              // Groupe
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: C.gold.withOpacity(0.10),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    m.groupe,
                    style: TextStyle(
                      fontSize: 11,
                      color: C.green,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              // Statut
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: _statutBg,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    _statutLabel,
                    style: TextStyle(
                      fontSize: 9,
                      color: _statutColor,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              // Date
              Expanded(
                flex: 2,
                child: Text(
                  m.dateAdhesion,
                  style: TextStyle(
                    fontSize: 11,
                    color: C.muted,
                    fontFamily: 'monospace',
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(color: C.border, height: 1),
      ],
    );
  }
}
