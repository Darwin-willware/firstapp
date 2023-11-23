
import 'package:flutter/material.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}

class _learnToBuildState extends State<learnToBuild> {
  int _currentIndex = 0;
   bool _bool = true;
  List<Widget> body  = const [
    Icon(Icons.home),
    Icon(Icons.video_file),
    Icon(Icons.add),
    Icon(Icons.subscriptions),
  ];
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widget",
        style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: (){
              print("object");
              print(_bool);
              setState(() {
                _bool = !_bool;
                
              });
              print("object after set state called");
              print(_bool);
            }, 
          child:const Text("Animate",
          style: TextStyle(
            color: Colors.black
          ),)
          )
        ],
      ),
     body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: 
              Container(
              color: Colors.red,
              height: 200,
            ),
            ),
            Expanded(
              flex: 1,
              child: 
              Container(
              color: const Color.fromARGB(255, 54, 244, 54),
              height: 200,
            ),
            ),
            Expanded(
              flex: 3,
              child: 
              Container(
              color: const Color.fromARGB(255, 54, 114, 244),
              height: 200,
            ),
            ),
          ],
        ),
     )
    );
  }
}

