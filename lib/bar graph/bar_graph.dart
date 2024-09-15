// ignore_for_file: unused_import

import 'dart:math';

import 'package:bar_chart/bar%20graph/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyBarGraph extends StatelessWidget {
  final List weeksummary;

  const MyBarGraph({super.key, required this.weeksummary});

  @override
  Widget build(BuildContext context) {
    BarData mybarData = BarData(
      sunamount: weeksummary[0],
      monamount: weeksummary[1],
      tueamount: weeksummary[2],
      wedamount: weeksummary[3],
      thuamount: weeksummary[4],
      friamount: weeksummary[5],
      satamount: weeksummary[6],
    );
    mybarData.intializeBarData();
    return BarChart(
      BarChartData(
        gridData: const FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: const FlTitlesData(
          show: true,
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        maxY: 100,
        minY: 0,
        barGroups: mybarData.barData
            .map(
              (data) => BarChartGroupData(
                x: data.x,
                barRods: [
                  BarChartRodData(
                      toY: data.y,
                      borderRadius: BorderRadius.circular(5),
                      width: 15,
                      backDrawRodData: BackgroundBarChartRodData(
                        show: true,
                        toY: 100,
                        color: Colors.blue[50],
                      )),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
