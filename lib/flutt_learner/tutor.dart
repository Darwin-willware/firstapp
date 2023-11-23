
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}
  
  Future<String> getData() async{
    await Future.delayed(const Duration(seconds: 1));
    // throw 'An Error Occured'
    return 'It Works';
  }
class _learnToBuildState extends State<learnToBuild> {
 
  @override
  Widget build(BuildContext context) {
    TableRow _tableRow = const TableRow(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(10.0),child: Text('cell1'),),
        Padding(padding: EdgeInsets.all(10.0),child: Text('cell2'),),
        Padding(padding: EdgeInsets.all(10.0),child: Text('cell3'),),
        Padding(padding: EdgeInsets.all(10.0),child: Text('cell4'),),
      ]
    );
    return Scaffold(
      appBar: AppBar(title: Text(
        "Table Widget",
        style: TextStyle(
          color: Colors.black,
        ),
        
      ),
      backgroundColor: Colors.transparent,
      ),
      body:Center(
           child: Table(
            border: TableBorder.all(),
            defaultColumnWidth: const FixedColumnWidth(90.0),
            children:<TableRow> [
                 _tableRow,
                 _tableRow,
                 _tableRow,_tableRow,_tableRow
            ],
           ),
      )
    );
   //WillpopScope is used to disable the back button on Android devices
    
  }
}

