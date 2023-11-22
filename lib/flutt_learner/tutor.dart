

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
          title: Text("Single child Scroll view Widget",
          style: TextStyle(
            color: Colors.redAccent,
          ),),
         ),
         body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: Row(
            children:<Widget> [
             Container(
              height: 200,
              width: 150,
              color: Colors.deepOrangeAccent,
             ),
             SizedBox(
              height: 10.0,
              width: 10.0,
             ),
             Container(
              height: 200,
              width: 150,
              color: Colors.tealAccent,
             ),
             SizedBox(
              height: 10.0,
              width: 10.0,
             ),
             Container(
              height: 200,
              width: 150,
              color: Colors.indigoAccent,
             ),
             SizedBox(
              height: 10.0,
              width: 10.0,
             ),
             Container(
              height: 200,
              width: 150,
              color: Colors.cyanAccent,
             ),
             SizedBox(
              height: 10.0,
              width: 10.0,
             ),
             Container(
              height: 200,
              width: 150,
              color: Colors.lightGreenAccent,
             ),
             SizedBox(
              height: 10.0,
              width: 10.0,
             ),
             Container(
              height: 200,
              width: 200,
              color: Colors.blueAccent,
             ),           
            ],
           ),
         ),

    );
  }
}