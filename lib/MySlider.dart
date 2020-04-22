import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {

  @override
  _MySliderState createState() => _MySliderState();

}

class _MySliderState extends State<MySlider> {
  double value=0;
  @override
  Widget build(BuildContext context) {
    return Slider(value: this.value, onChanged:_changedListener);
  }

  void _changedListener(double value){
    setState(() {
      this.value=value;
    });
  }
}
