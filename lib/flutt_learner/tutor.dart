
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
 
  @override
  Widget build(BuildContext context) {
   //WillpopScope is used to disable the back button on Android devices
    return Scaffold(
      //this widget will wait for data before displaying something on view 
      //Futurebuilder is used to build the view dynamically depends upon the data that we get asynchronously
      appBar: AppBar(
        title: const Text("ToolTip Widget",
        style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Tooltip(
          message: "Message from NoWhere to EveryWhere",
          child: Image.asset('assets/images/fourimg.jpg'),
        ),
      )
    );
     
  }
}

