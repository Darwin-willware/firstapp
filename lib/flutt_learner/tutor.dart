import 'package:flutter/material.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}

class _learnToBuildState extends State<learnToBuild> {
  RangeValues _values = const RangeValues(0.1, 0.5);
  @override
  Widget build(BuildContext context) {
     RangeLabels labels = RangeLabels(_values.start.toString(), _values.end.toString(),);
    return Scaffold(
      appBar: AppBar(
        title: Text("Range Slider Widget"),
      ),
     body: Center(
      child: RangeSlider(
        values: _values,
        divisions: 8,
        labels: labels,
       onChanged: (newValues){
        setState(() {
          _values = newValues;
        });
       }
       ),
     ),
    );
  }
}

