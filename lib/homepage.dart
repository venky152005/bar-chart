import 'package:bar_chart/bar%20graph/bar_graph.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  Homepage({super.key});

  List<double> weeksummary = [
    4.55,
    7.32,
    53.32,
    23.4,
    54.5,
    30.56,
    77.69,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          child: MyBarGraph(
            weeksummary: weeksummary,
          ),
        ),
      ),
    );
  }
}
