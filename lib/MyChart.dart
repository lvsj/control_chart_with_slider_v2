import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

_MyChartState chartState;

class MyChart extends StatefulWidget {
  @override
  _MyChartState createState() {
    chartState=_MyChartState();
    return chartState;
  }
  static Map<String, double> createData(double stateManagementValue){
    Map<String, double> dataMap=Map();
    dataMap.putIfAbsent("State Management", () => stateManagementValue);
    dataMap.putIfAbsent("UI programming", () => 0.3);
    dataMap.putIfAbsent("UX", () => 0.1);
    dataMap.putIfAbsent("Backend", () => 0.2);
    return dataMap;
  }
}

class _MyChartState extends State<MyChart> {
  Map<String, double> dataMap = MyChart.createData(0.1);
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      chartRadius: MediaQuery.of(context).size.width / 1.5,
      colorList: colorList,
    );
  }
}
