import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gracechurchadmine/core/moke/moke_data.dart';

class PresenceChart extends StatelessWidget {
  const PresenceChart();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Présence aux cultes par mois", style: GoogleFonts.lora(fontSize: 15, fontWeight: FontWeight.w600, color: C.dark)),
                  const SizedBox(height: 2),
                  Text("Janvier — Juillet 2026", style: TextStyle(fontSize: 11, color: C.muted)),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: C.greenLight.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: C.greenLight.withOpacity(0.2)),
                ),
                child: Row(
                  children: [
                    Icon(Icons.trending_up, size: 13, color: C.greenLight),
                    const SizedBox(width: 4),
                    Text("+21.9%", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: C.greenLight)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 180,
            child: LineChart(
              curve: Curves.easeOut,
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  getDrawingHorizontalLine: (_) => FlLine(color: C.border, strokeWidth: 1),
                ),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 36,
                      getTitlesWidget: (v, _) => Text(v.toInt().toString(), style: GoogleFonts.roboto(fontSize: 10, color: C.muted)),
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (v, _) {
                        final i = v.toInt();
                        if (i < 0 || i >= presenceMois.length) return const SizedBox();
                        return Text(presenceMois[i], style: TextStyle(fontSize: 10, color: C.muted));
                      },
                    ),
                  ),
                  rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                ),
                borderData: FlBorderData(show: false),
                minX: 0,
                maxX: 6,
                minY: 160,
                maxY: 280,
                lineBarsData: [
                  LineChartBarData(
                    spots: List.generate(presenceData.length, (i) => FlSpot(i.toDouble(), presenceData[i])),
                    isCurved: true,
                    color: C.gold,
                    barWidth: 2.5,
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (_, __, ___, ____) => FlDotCirclePainter(radius: 4, color: C.gold, strokeWidth: 2.5, strokeColor: Colors.white),
                    ),
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [C.gold.withOpacity(0.25), C.gold.withOpacity(0)],
                      ),
                    ),
                  ),
                ],
                lineTouchData: LineTouchData(
                  enabled: true,
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipColor: (_) => const Color.fromARGB(115, 101, 44, 44),
                    getTooltipItems: (spots) {
                    return spots.map((s) {
                      return LineTooltipItem(
                        s.y.toInt().toString(),
                        GoogleFonts.roboto(color: Colors.white, fontWeight: FontWeight.bold),
                      );
                    }).toList();
                  },
                ),
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
