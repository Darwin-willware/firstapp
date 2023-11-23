
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
 int _counter = 0;
 Color boxColor = Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      // appBar: AppBar(title: Text(
      //   "Interactiveviewer Widget",
      //   style: TextStyle(
      //     color: Colors.black,
      //   ),
        
      // ),
      // backgroundColor: Colors.transparent,
      // ),
      backgroundColor: Colors.deepOrangeAccent,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(double.infinity),
        child: Scaffold(
        appBar: AppBar(
          title: Text("InterActiveViewer Widget"),
        ),
      )),
      // body:Center(
      //      child: InteractiveViewer(
      //       maxScale: 5,
      //       child: Image.asset('assets/images/twoimg.jpg')
      //       ),
      // )
    );
   //WillpopScope is used to disable the back button on Android devices
    
  }
}

