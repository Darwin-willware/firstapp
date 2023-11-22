

import 'package:flutter/material.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}

class _learnToBuildState extends State<learnToBuild> {
    String _value = '';
    void _onChanged(String value){
      setState(() {
        _value = value;
      });
    }
    void _onSubmit(String value){
        setState(() {
          _value = 'submit:${value}';
        });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: Text("DataTable Widget",
          style: TextStyle(
            color: Colors.redAccent,
          ),),
         ),
         body: DataTable(
          columns: [
            DataColumn(
              label: Text('Roll No',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.redAccent,
              ),
              )
              ),
              DataColumn(
              label: Text('Name',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.redAccent,
              ),
              )
              )
          ],
          rows: [
            DataRow(cells: [DataCell(Text('AE1001')),DataCell(Text("Ram"))]),
            DataRow(cells: [DataCell(Text('AE1002')),DataCell(Text('Sam'))]),
          ]
          )
   );
  }
}