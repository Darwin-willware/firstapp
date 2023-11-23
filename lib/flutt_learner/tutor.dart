
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
   //WillpopScope is used to disable the back button on Android devices
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("WillPopeScope Widget"),
        ),
      ),
     onWillPop: () async{
      //false to disable the back button in android
      return true;
     }
     );
     
  }
}

