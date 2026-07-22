import 'package:flutter/material.dart';
import 'package:grace_church/core/animation_hover_mouse/animation_hover_mouse.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/core/moke/moke_data.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';

class MembreTableRow extends StatefulWidget {
  final ProfileResponse m;
  final List<ProfileResponse> membres;
  const MembreTableRow(this.m, {required this.membres, super.key});

  @override
  State<MembreTableRow> createState() => _MembreTableRowState();
}

class _MembreTableRowState extends State<MembreTableRow> {
  Color get _statutColor => switch (widget.m.statusSpirituel.toLowerCase()) {
    "baptiser" => const Color(0xFF16A34A),
    "nouveau" => const Color(0xFFD97706),
    _ => const Color(0xFFD97706),
  };

  Color get _statutBg => switch (widget.m.statusSpirituel.toLowerCase()) {
    "baptiser" => const Color(0xFFDCFCE7),
    "nouveau" => const Color(0xFFFEF3C7),
    _ => const Color(0xFFF3F4F6),
  };

  String get _statutLabel => switch (widget.m.statusSpirituel.toLowerCase()) {
    "baptiser" => "Baptisé",
    "nouveau" => "Nouveau",
    _ => "Nouveau",
  };

  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return AnimationMouseHoverCardre(
      isHover: _isHover,
      onEnter: (event) {
        setState(() {
          _isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHover = false;
        });
      },
      child: Column(
        children: [
          Container(
            color: _isHover ? Colors.grey[100] : Colors.transparent,
            child: Padding(
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
                          backgroundColor: C().randomColor(),
                          child: Text(
                            widget.m.name.isNotEmpty ? widget.m.name[0].toUpperCase() : '',
                            style: context.appTypographie.body.copyWith(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          child: Text(
                            widget.m.name,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: C.dark,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Activité Etude
                    Expanded(
                      flex: 2,
                      child: Text(
                        widget.m.activity,
                        style: context.appTypographie.body.copyWith(
                          fontSize: 12,
                          color: C.muted,
                        ),
                      ),
                    ),
                    // Statut social
                    Expanded(
                      flex: 2,
                      child: Text(
                        switch (widget.m.statusSocial.toLowerCase()) {
                          'étudiant' => 'Étudiant(e)',
                          'professionnel' => 'Travailleur(es)',
                          'retraité' => 'Retraité(e)',
                          'sans emploi' => 'Sans emploi',
                          _ => 'Non spécifié',
                        },
                        style: context.appTypographie.body.copyWith(
                          fontSize: 12,
                          color: C.muted,
                        ),
                      ),
                    ),
                  // Fonction
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.only(right: 6),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: C.gold.withOpacity(0.10),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        widget.m.fonction,
                        style: context.appTypographie.body.copyWith(
                          fontSize: 12,
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
                      margin: const EdgeInsets.only(right: 6),
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
                        style: context.appTypographie.body.copyWith(
                          fontSize: 9,
                          color: _statutColor,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                  // Situation matrimoniale
                  Expanded(
                    flex: 2,
                    child: Text(
                      widget.m.matrimonial,
                      style: context.appTypographie.body.copyWith(
                        fontSize: 11,
                        color: C.muted,
                        fontFamily: 'monospace',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
           Divider(color: C.border, height: 1),
        ],
      ),
    );
  }
}




