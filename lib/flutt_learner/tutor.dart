
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
    List<Widget> imagesList = [
      Image.asset("assets/images/oneimg.jpg",
      height: 100,),
            Image.asset("assets/images/twoimg.jpg",
      height: 100,),
            Image.asset("assets/images/threeimg.jpg",
      height: 100,),
            Image.asset("assets/images/fourimg.jpg",
      height: 100,),
            Image.asset("assets/images/fiveimg.jpg",
      height: 100,),
    ];
    return Scaffold(
      appBar: AppBar(title: Text(
        "Stack Widget",
        style: TextStyle(
          color: Colors.black,
        ),
        
      ),
      backgroundColor: Colors.transparent,
      ),
      body:Center(
        child: Stack(
          children: [
            Center(
              child: Image.asset("assets/images/fourimg.jpg"),
            ),
            Center(
              child: Image.asset(
                'assets/images/oneimg.jpg',
                width: 100,
              ),
            )
          ],
        ),
      )
    );
   //WillpopScope is used to disable the back button on Android devices
    
  }
}

