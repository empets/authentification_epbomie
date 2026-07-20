
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gracechurchadmine/core/extension/custome_extension.dart';
import 'package:gracechurchadmine/core/moke/moke_data.dart';
import 'package:gracechurchadmine/gen/assets.gen.dart';

class GroupePieCard extends StatelessWidget {
  const GroupePieCard();

  static const _data = [
    ("MCLA", 20, C.green),
    ("EM", 52, C.gold),
    ("EV", 47, C.sidebar),
    ("DIACRE", 38, C.blue),
    ("DCF", 18, C.violet),
  ];

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
              Text(
                "Répartition",
                style: GoogleFonts.lora(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: C.dark,
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                  context: context,
                  builder: (context) => GroupePieCardMoreDatail(data: _data),
                );
                },
                child: SvgPicture.asset(
                  MyAssets.alerte.alertePoint,
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
                sections: _data
                    .map(
                      (d) => PieChartSectionData(
                        value: d.$2.toDouble(),
                        color: d.$3,
                        radius: 28,
                        showTitle: false,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          const SizedBox(height: 15),
          ...List.generate(2, (index) => Padding(
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

class GroupePieCardMoreDatail extends StatelessWidget {
   GroupePieCardMoreDatail({
    super.key,
    required this.data,
  });
  final List<(String, int, Color)> data;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey.shade300,
      title: Text(
            "Répartition des 500 membres actifs par ministère",
            style: context.appTypographie.body.copyWith(fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold),
          ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.h),
                   ...List.generate(data.length, (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: data[index].$3,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      data[index].$1,
                      style: TextStyle(fontSize: 10, color: C.dark),
                    ),
                  ),
                  Text(
                    "${data[index].$2}%",
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
                        value: data[index].$2 / 64,
                        backgroundColor: C.border,
                        color: data[index].$3,
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
