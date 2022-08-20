import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sections: _sectionDataChart(),
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
            ),
          ),
          ChartLabel(),
        ],
      ),
    );
  }

  List<PieChartSectionData> _sectionDataChart() {
    return [
      PieChartSectionData(
        value: 45,
        color: primaryColor,
        showTitle: false,
        radius: 25,
      ),
      PieChartSectionData(
        value: 25,
        color: Color(0xFFFFCF26),
        showTitle: false,
        radius: 22,
      ),
      PieChartSectionData(
        value: 20,
        color: Color(0xFF26E5FF),
        showTitle: false,
        radius: 20,
      ),
      PieChartSectionData(
        value: 15,
        color: Color(0xFFEE2727),
        showTitle: false,
        radius: 18,
      ),
      PieChartSectionData(
        value: 12,
        color: primaryColor.withOpacity(0.1),
        showTitle: false,
        radius: 15,
      ),
    ];
  }
}

class ChartLabel extends StatelessWidget {
  const ChartLabel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: defaultPadding),
          Text(
            '29.1',
            style: Theme.of(context).textTheme.headline4.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  height: 0.5,
                ),
          ),
          Text('of 128GB'),
        ],
      ),
    );
  }
}
