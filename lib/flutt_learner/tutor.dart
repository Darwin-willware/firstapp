

import 'package:flutter/material.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}

class _learnToBuildState extends State<learnToBuild> {
  void showBottom(){
    showModalBottomSheet<void>(
      context: context, 
      builder: (BuildContext context){
         return Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
               Text("Welcome To G7 Learning Portal"),
               ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text(
                  "Close Me"
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                ),
                )
            ],
          ),
         );
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: Text("Bottom sheet(Alert) Widget",
          style: TextStyle(
            color: Colors.redAccent,
          ),),
         ),
         body: Center(
          child: ElevatedButton(onPressed: showBottom, 
          child:Text(
            "Click Me",
             style: TextStyle(
              fontSize: 18.0
             ),
          )
           ),
         ),

    );
  }
}