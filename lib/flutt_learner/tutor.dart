import 'package:flutter/material.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}

class _learnToBuildState extends State<learnToBuild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
      Text("FittedBox Widget",style: TextStyle(color: Colors.black),), 
      elevation: 0.0, backgroundColor: Colors.transparent,),
      body: Center(
        child: Container(
          width: 300,
          height: 50,
          color: Colors.red,
          padding: EdgeInsets.all(10.0),
          child: FittedBox(
            child: const Text("FLUTTER MAPP",
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
          ),

        ),
      ),
    );
  }
}