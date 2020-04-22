import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'MyChart.dart';
import 'MySlider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text('Change Piechart Dynamically'),),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: MyChart(),
            ),
            Expanded(
              child: MySlider(),
            )
          ],
        ),
      ),
    );
  }
}