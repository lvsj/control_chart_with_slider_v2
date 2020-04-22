import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyChart extends StatefulWidget {
  @override
  _MyChartState createState() => _MyChartState();
}

class _MyChartState extends State<MyChart> {
  Map<String, double> dataMap = Map();
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  @override
  void initState() {
    super.initState();
    dataMap.putIfAbsent("Flutter", () => 0.1);
    dataMap.putIfAbsent("React", () => 0.1);
    dataMap.putIfAbsent("Xamarin", () => 0.1);
    dataMap.putIfAbsent("Ionic", () => 0.1);
  }

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      chartRadius: MediaQuery.of(context).size.width / 1.5,
      showLegends: false,
      colorList: colorList,
    );
  }
}
