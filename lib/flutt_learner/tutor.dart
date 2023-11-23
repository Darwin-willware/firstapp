
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
      appBar: AppBar(title: Text(
        "InkWell Widget",
        style: TextStyle(
          color: Colors.black,
        ),
        
      ),
      backgroundColor: Colors.transparent,
      ),
      body:Center(
           child: InkWell(
            onTap: (){
              setState(() {
                _counter += 1;
              });
            },
            onDoubleTap: () {
              setState(() {
                boxColor = Colors.deepOrangeAccent;
              });
            },
            onLongPress: () {
              setState(() {
                boxColor = Colors.tealAccent;
              });
            },
            child: Ink(
              height: 200,
              width: 200,
              color:boxColor,
              child: Center(
                child: Text(
                  _counter.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                  ),
                ),
              ),
            ),
           ),
      )
    );
   //WillpopScope is used to disable the back button on Android devices
    
  }
}

