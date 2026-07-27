import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/animation_hover_mouse/animation_hover_mouse.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/core/moke/moke_data.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';
import 'package:grace_church/feature/dashboard/presentation/pages/graphes/widget/repation_by_ministries.dart';
import 'package:grace_church/gen/assets.gen.dart';

class GroupePieCard extends StatefulWidget {
  const GroupePieCard({super.key, required this.profile});

  final List<ProfileResponse> profile;

  @override
  State<GroupePieCard> createState() => _GroupePieCardState();
}

class _GroupePieCardState extends State<GroupePieCard> {
  int touchedIndex = -1;

  final List<String> _departements = [
    "Media",
    "Accueil",
    "Louange",
    "Intercession",
    "Protocole",
    "Enfance",
    "Jeunesse",
    "Technique",
  ];

  int _getDepartementCount(List<ProfileResponse> profiles, String departement) {
    return profiles
        .where((m) => m.departement.toLowerCase() == departement.toLowerCase())
        .length;
  }

  List<(String, int, Color)> _buildDepartementData(
    List<ProfileResponse> profiles,
  ) {
    const colors = {
      "Media": C.green,
      "Accueil": C.gold,
      "Louange": C.sidebar,
      "Intercession": C.blue,
      "Protocole": C.violet,
      "Enfance": C.red,
      "Jeunesse": Colors.yellow,
      "Technique": C.muted,
    };

    return _departements
        .map((d) => (d, _getDepartementCount(profiles, d), colors[d]!))
        .toList();
  }

  List<(String, int, Color)> get _data => _buildDepartementData(widget.profile);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(45),
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
              Text(
                "Répartition",
                style: GoogleFonts.lora(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: C.dark,
                ),
              ),
              AnimationMouseHoverCardre(
                isHover: false,
                onHover: (p0) {
                  showDialog(
                    context: context,
                    builder: (context) => GroupePieCardMoreDatail(data: _data),
                  );
                },
                child: SvgPicture.asset(
                  Assets.alerte.alertePoint,
                  height: 14.h,
                  colorFilter: ColorFilter.mode(C.dark, BlendMode.srcIn),
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),

          const SizedBox(height: 19),
          SizedBox(
            height: 144,
            child: PieChart(
              PieChartData(
                sectionsSpace: 3,
                centerSpaceRadius: 36,

                sections: _data.asMap().entries.map((entry) {
                  final index = entry.key;
                  final d = entry.value;

                  final isTouched = index == touchedIndex;

                  return PieChartSectionData(
                    value: d.$2.toDouble(),
                    color: d.$3,
                    radius: isTouched ? 37 : 28, // la partie monte
                    showTitle: isTouched,
                    title: '${d.$2}%',
                    titleStyle: context.appTypographie.body.copyWith(
                      color: C.background,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  );
                }).toList(),

                pieTouchData: PieTouchData(
                  touchCallback: (FlTouchEvent event, pieTouchResponse) {
                    setState(() {
                      if (!event.isInterestedForInteractions ||
                          pieTouchResponse == null ||
                          pieTouchResponse.touchedSection == null) {
                        touchedIndex = -1;
                      } else {
                        touchedIndex = pieTouchResponse
                            .touchedSection!
                            .touchedSectionIndex;
                      }
                    });
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          ...List.generate(
            1,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: _data[index].$3,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      _data[index].$1,
                      style: TextStyle(fontSize: 10, color: C.dark),
                    ),
                  ),
                  Text(
                    "${_data[index].$2}%",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: C.muted,
                      fontFamily: 'monospace',
                    ),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: 48,
                    height: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: _data[index].$2 / 64,
                        backgroundColor: C.border,
                        color: _data[index].$3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
