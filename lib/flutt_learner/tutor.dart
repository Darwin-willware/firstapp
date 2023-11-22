

import 'package:flutter/material.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}

class _learnToBuildState extends State<learnToBuild> {
    bool mon = false;
    bool tue = false;
    bool wed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: Text("CheckBox Widget",
          style: TextStyle(
            color: Colors.redAccent,
          ),),
         ),
         body: Center(
           child: Row(
             children:<Widget> [
               customCheckbox('Mon',mon),
               customCheckbox('Tue', tue),
               customCheckbox('Wed', wed)
             ],
           ),
         ),
   );
  }

  Column customCheckbox(String title,bool val) {
    return Column(
              children:<Widget> [
                Text(title),
                Checkbox(value: val,
                 onChanged: (bool? value){
                  setState(() {
                    switch(title){
                      case 'Mon':
                      mon = value!;
                      break;
                      case 'Tue':
                      tue = value!;
                      break;
                      case 'Wed':
                      wed = value!;
                      break;
                    }
                  });
                 },
                 )
              ],
             );
  }
}