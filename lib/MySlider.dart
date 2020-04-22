import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyChart.dart';

class MySlider extends StatefulWidget {

  @override
  _MySliderState createState() => _MySliderState();

}

class _MySliderState extends State<MySlider> {
  double _value=0;
  @override
  Widget build(BuildContext context) {
    return Slider(value: this._value, onChanged:_changedListener);
  }

  void _changedListener(double value){
    setState(() {
      this._value=value;
    });
    chartState?.setState(() {
      chartState.dataMap=MyChart.createData(value);
    });

  }
}
