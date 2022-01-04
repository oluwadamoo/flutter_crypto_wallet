import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CryptoChart extends StatelessWidget {
  CryptoChart({Key? key}) : super(key: key);

  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a)
  ];

  final List<Color> graphGradientColors = [
    const Color(0x90230127).withOpacity(0.7),
    const Color(0x81181108).withOpacity(0.7),
    const Color(0x00293330).withOpacity(0.7)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 300,
      child: LineChart(LineChartData(
        minX: 0,
        maxX: 11,
        minY: 0,
        maxY: 6,
        titlesData: LineTitles.getTitleData(),
        gridData: FlGridData(show: false),
        lineBarsData: [
          LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(2.6, 2),
                FlSpot(4.9, 5),
                FlSpot(6.8, 2.5),
                FlSpot(8, 4),
                FlSpot(9.5, 3),
                FlSpot(11, 4),
              ],
              colors: gradientColors,
              belowBarData: BarAreaData(
                  cutOffY: 1.0,
                  applyCutOffY: true,
                  show: true,
                  colors: graphGradientColors.map((color) => color).toList()))
        ],
      )),
    );
  }
}

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => const TextStyle(
              color: Color(0xff67727d),
              fontWeight: FontWeight.bold,
              fontSize: 15
              //
              ),
          // getTextStyles: (value)=> TextStyle(
          //   color: Color(0xff67727d),
          //   fontWeight: FontWeight.bold,
          //   fontSize: 15
          // ),

          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '30k';
              case 2:
                return '40k';
              case 3:
                return '50k';
              case 4:
                return '60k';
              case 5:
                return '70k';
            }
            return '';
          },
        ),
      );
}
