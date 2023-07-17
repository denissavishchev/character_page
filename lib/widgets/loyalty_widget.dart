import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class LoyaltyWidget extends StatelessWidget {
  const LoyaltyWidget({
    super.key,
  });

  List<FlSpot> spots(List spots) {
    return spots.asMap().entries.map((e) {
          return FlSpot(e.key.toDouble(), e.value);
        }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 90,
      height: 40,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                const Color(0xff9c7be2).withOpacity(0.8),
                const Color(0xff9c58dc).withOpacity(0.8),
              ]
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(width: 0.4, color: Colors.white.withOpacity(0.5)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 12,
            )
          ]
      ),
      child: LineChart(
        // duration: const Duration(milliseconds: 250),
        LineChartData(
            titlesData: const FlTitlesData(
                show: false
            ),
            borderData: FlBorderData(
                show: false
            ),
            minX: 0,
            maxX: 5,
            minY: 0,
            maxY: 6,
            lineBarsData: [
              LineChartBarData(
                dotData: const FlDotData(
                    show: false
                ),
                isCurved: true,
                gradient: const LinearGradient(
                    colors: [
                      Color(0xff5b34cb),
                      Color(0xff08ecfb),
                    ]
                ),
                spots: spots(aSpots),
              ),
              LineChartBarData(
                dotData: const FlDotData(
                    show: false
                ),
                isCurved: true,
                gradient: const LinearGradient(
                    colors: [
                      Color(0xff377779),
                      Color(0xff57ffbb),
                    ]
                ),
                spots: spots(bSpots),
              ),
              LineChartBarData(
                dotData: const FlDotData(
                    show: false
                ),
                isCurved: true,
                gradient: const LinearGradient(
                    colors: [
                      Color(0xfff39800),
                      Color(0xfffaf9fa),
                    ]
                ),
                spots: spots(cSpots),
              ),
            ]
        ),
      ),
    );
  }
}