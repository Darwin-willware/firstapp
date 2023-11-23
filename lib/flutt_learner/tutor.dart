
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
        title: Text("AnimatedCrossfade Widget",
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
      child: AnimatedCrossFade(
        firstChild: Image.asset(
          'assets/images/twoimg.jpg',
        width: 350,
       // height: 100,
        ),
        secondChild: Image.asset(
          'assets/images/oneimg.jpg',
          width: 200,
          height: 200,
        ),
        crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond ,
        duration: const Duration(seconds: 2),
      ),
     )
    );
  }
}

