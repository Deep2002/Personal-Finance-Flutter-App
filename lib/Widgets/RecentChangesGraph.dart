import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:personal_finance/Widgets/AppColors.dart';
import 'package:personal_finance/Widgets/AppText.dart';

class RecentChangesGraph extends StatefulWidget {
  const RecentChangesGraph({Key? key}) : super(key: key);

  @override
  State<RecentChangesGraph> createState() => _RecentChangesGraphState();
}

class _RecentChangesGraphState extends State<RecentChangesGraph> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 350,
      padding: const EdgeInsets.only(top: 30, bottom: 10, left: 15, right: 20),
      decoration: BoxDecoration(
        color: AppColors.bg,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 19, 19, 19),
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: LineChart(
        LineChartData(
          minX: 1,
          minY: 0,
          borderData: FlBorderData(
            border: const Border(
              left: BorderSide(color: Colors.white, width: 2),
              bottom: BorderSide(color: Colors.white, width: 2),
            ),
          ),
          gridData: FlGridData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: [
                //
                // ******************************************
                // Here need to see the heighest value
                // then put the rounded higest value to the
                // maxY. else it will overlay the Y values...
                // ******************************************
                //
                const FlSpot(1, 120),
                const FlSpot(2, 165),
                const FlSpot(3, 60),
                const FlSpot(4, 490),
                const FlSpot(5, 50),
              ],
              barWidth: 5,
              isCurved: true,
              gradient: const RadialGradient(colors: [
                Colors.limeAccent,
                Colors.cyan,
              ]),
              color: const Color.fromARGB(255, 33, 222, 243),
            ),
          ],
          titlesData: FlTitlesData(
            show: true,
            rightTitles: AxisTitles(),
            topTitles: AxisTitles(),
            bottomTitles: AxisTitles(
              axisNameSize: 20,
              axisNameWidget: AppText(
                  text: 'Date',
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w200,
                    color: Color.fromARGB(255, 198, 198, 198),
                  )),
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                reservedSize: 25,
                getTitlesWidget: (context, value) {
                  String day = value.formattedValue;
                  switch (int.tryParse(day)) {
                    default:
                      return Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          day,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      );
                  }
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 50,
                interval: 70,
                getTitlesWidget: (context, value) {
                  String day = value.formattedValue;
                  switch (int.tryParse(day)) {
                    default:
                      return Text(
                        '\$$day',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                        ),
                      );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
