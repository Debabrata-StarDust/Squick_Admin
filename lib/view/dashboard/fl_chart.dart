import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:squck_admin/core/colors.dart';

class FlChart extends StatefulWidget {
  const FlChart({Key? key}) : super(key: key);

  @override
  State<FlChart> createState() => _FlChartState();
}

class _FlChartState extends State<FlChart> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 700,
      height: 270,
      child: LineChart(
        LineChartData(
            maxX: 0,
            minX: 0,
            maxY: 10,
            minY: 10,
            backgroundColor: Colors.white60,
            lineBarsData: [
              LineChartBarData(
                spots: [
                  const FlSpot(0, 10),
                  const FlSpot(5, 46),
                  const FlSpot(7, 77),
                  const FlSpot(5, 55),
                  const FlSpot(0, 7),
                  const FlSpot(2, 5.7),
                  const FlSpot(1, 7.7),
                  const FlSpot(8, 66),
                  const FlSpot(2, 58),
                ],
                isCurved: true,
                gradient: const LinearGradient(
                  colors: [
                    Colors.purple,
                    Colors.green,
                  ],
                ),
                barWidth: 3,
                belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple.withOpacity(0.2),
                      Colors.green.withOpacity(0.2),
                    ],
                  ),
                ),
                dotData: FlDotData(show: false),
              ),
            ],
            gridData: FlGridData(
                show: true,
                drawHorizontalLine: false,
                drawVerticalLine: true,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                    color: Colors.grey.shade800,
                    strokeWidth: 0.8,
                  );
                }),
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                showTitles: false,
              )),
              rightTitles: AxisTitles(
                  sideTitles: SideTitles(
                showTitles: false,
              )),
              bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 12,
                      getTitlesWidget: (value, meta) {
                        String text = "";
                        switch (value.toInt()) {
                          case 1:
                            text = "January";
                            break;
                          case 2:
                            text = "February";
                            break;
                          case 3:
                            text = "March";
                            break;
                          case 4:
                            text = "April";
                            break;
                          case 5:
                            text = "May";
                            break;
                          case 1:
                            text = "June";
                            break;
                          case 6:
                            text = "July";
                            break;
                          case 7:
                            text = "August";
                            break;
                          case 8:
                            text = "September";
                            break;
                          case 9:
                            text = "October";
                            break;
                          case 10:
                            text = "November";
                            break;
                          case 11:
                            text = "December";
                            break;
                          default:
                            return Container();
                        }
                        return Text(
                          text,
                          style: const TextStyle(
                            color: kBlueGrayColor,
                            fontSize: 10,
                          ),
                        );
                      })),
            )),
      ),
    );
  }
}
