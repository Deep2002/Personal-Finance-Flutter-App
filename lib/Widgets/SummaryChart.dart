import 'package:flutter/material.dart';
import 'package:personal_finance/widgets/AppColors.dart';
import 'package:pie_chart/pie_chart.dart';

class SummaryChart extends StatefulWidget {
  const SummaryChart({Key? key}) : super(key: key);

  @override
  State<SummaryChart> createState() => _SummaryChartState();
}

class _SummaryChartState extends State<SummaryChart> {
  // create list of items to be displayed on the chart

  Map<String, double> summaryCData = {
    "Income": 65,
    "Expenses": 35,
  };

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: summaryCData,
      chartType: ChartType.ring,
      centerText: '65%',
      legendOptions: const LegendOptions(
        legendPosition: LegendPosition.bottom,
        showLegendsInRow: true,
        legendTextStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      centerTextStyle: TextStyle(
          color: AppColors.buttonGreen,
          fontSize: 30,
          fontWeight: FontWeight.bold),
      ringStrokeWidth: 30,
      chartRadius: 250,
      gradientList: [
        const [Colors.green, Color.fromARGB(255, 76, 175, 168)],
        [AppColors.buttonRed, const Color.fromARGB(255, 255, 102, 0)],
      ],
      chartValuesOptions: const ChartValuesOptions(
        chartValueStyle: TextStyle(
          color: Colors.white,
        ),
        showChartValueBackground: false,
        showChartValuesInPercentage: true,
      ),
    );
  }
}
