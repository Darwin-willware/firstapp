
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
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(title: Text(
        "GestureDetector Widget",
        style: TextStyle(
          color: Colors.black,
        ),
        
      ),
      backgroundColor: Colors.transparent,
      ),
      body:Center(
           child: GestureDetector(
            onTap: (){
              setState(() {
                _counter += 1;
              });
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blueAccent,
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

