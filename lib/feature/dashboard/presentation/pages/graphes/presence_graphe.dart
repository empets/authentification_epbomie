import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/moke/moke_data.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';
import 'package:intl/intl.dart';

class PresenceChart extends StatelessWidget {
  const PresenceChart({super.key, required this.data});

  final List<PresenceResponse> data;

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
            child: PresenceEvolutionCard(rapports: data),
          ),
        ],
      ),
    );
  }
}




class PresenceChartData {
  final List<String> mois;
  final List<double> data;
  const PresenceChartData(this.mois, this.data);
}

PresenceChartData buildPresenceChartData(List<PresenceResponse> rapports) {
  final Map<String, double> totalsByMonth = {};

  for (final r in rapports) {
    final date = DateTime.parse(r.date); // "yyyy-MM-dd"
    final key = DateFormat('yyyy-MM').format(date);
    final total = (r.totalHomme + r.totalFemme + r.totalEnfant).toDouble();
    totalsByMonth[key] = (totalsByMonth[key] ?? 0) + total;
  }

  final sortedKeys = totalsByMonth.keys.toList()..sort(); // ordre chronologique garanti
  final mois = sortedKeys
      .map((k) => DateFormat('MMM', 'fr_FR').format(DateFormat('yyyy-MM').parse(k)))
      .toList();
  final data = sortedKeys.map((k) => totalsByMonth[k]!).toList();

  return PresenceChartData(mois, data);
}


class PresenceEvolutionCard extends StatelessWidget {
  final List<PresenceResponse> rapports;

  const PresenceEvolutionCard({super.key, required this.rapports});

  @override
  Widget build(BuildContext context) {
    final chartData = buildPresenceChartData(rapports);
    final presenceMois = chartData.mois;
    final presenceData = chartData.data;

    final minY = presenceData.isEmpty ? 0.0 : presenceData.reduce(min) - 10;
    final maxY = presenceData.isEmpty ? 0.0 : presenceData.reduce(max) + 10;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: C.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Présence',
            style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w600, color: C.sidebar),
          ),
          const SizedBox(height: 4),
          Text(
            'Total par mois (hommes + femmes + enfants)',
            style: GoogleFonts.roboto(fontSize: 12, color: C.muted),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 220,
            child: presenceData.isEmpty
                ? Center(
                    child: Text('Aucune donnée', style: GoogleFonts.roboto(color: C.muted)),
                  )
                : LineChart(
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
                            getTitlesWidget: (v, _) => Text(
                              v.toInt().toString(),
                              style: GoogleFonts.roboto(fontSize: 10, color: C.muted),
                            ),
                          ),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (v, _) {
                              final i = v.toInt();
                              if (i < 0 || i >= presenceMois.length) return const SizedBox();
                              return Text(
                                presenceMois[i],
                                style: TextStyle(fontSize: 10, color: C.muted),
                              );
                            },
                          ),
                        ),
                        rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      ),
                      borderData: FlBorderData(show: false),
                      minX: 0,
                      maxX: (presenceData.length - 1).toDouble(),
                      minY: minY,
                      maxY: maxY,
                      lineBarsData: [
                        LineChartBarData(
                          spots: List.generate(
                            presenceData.length,
                            (i) => FlSpot(i.toDouble(), presenceData[i]),
                          ),
                          isCurved: true,
                          color: C.gold,
                          barWidth: 2.5,
                          dotData: FlDotData(
                            show: true,
                            getDotPainter: (_, __, ___, ____) => FlDotCirclePainter(
                              radius: 4,
                              color: C.gold,
                              strokeWidth: 2.5,
                              strokeColor: Colors.white,
                            ),
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
                        handleBuiltInTouches: true,
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
                        getTouchedSpotIndicator: (barData, spotIndexes) {
                          return spotIndexes.map((index) {
                            return TouchedSpotIndicatorData(
                              FlLine(color: C.gold, strokeWidth: 2, dashArray: [5, 5]),
                              FlDotData(
                                getDotPainter: (spot, percent, barData, index) => FlDotCirclePainter(
                                  radius: 8,
                                  color: C.gold,
                                  strokeWidth: 3,
                                  strokeColor: Colors.white,
                                ),
                              ),
                            );
                          }).toList();
                        },
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}