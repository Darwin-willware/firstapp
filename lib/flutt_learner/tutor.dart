
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
        "Positioned Widget",
        style: TextStyle(
          color: Colors.black,
        ),
        
      ),
      backgroundColor: Colors.transparent,
      ),
      body:Center(
        child: Stack(
          children: [
           Positioned(
            left: 10,
            top: 10,
            child: 
           Image.asset("assets/images/fiveimg.jpg",
           width: 250,)
           ),
           Positioned(
            left: 30,
            top: 30,
            child: 
           Image.asset("assets/images/fiveimg.jpg",
           width: 250,)
           ),
           Positioned(
            left: 50,
            top: 50,
            child: 
           Image.asset("assets/images/fiveimg.jpg",
           width: 250,)
           ),
           Positioned(
            left: 70,
            top: 70,
            child: 
           Image.asset("assets/images/fiveimg.jpg",
           width: 250,)
           ),
           Positioned(
            left: 90,
            top: 90,
            child: 
           Image.asset("assets/images/fiveimg.jpg",
           width: 250,)
           ),
          ],
        ),
      )
    );
   //WillpopScope is used to disable the back button on Android devices
    
  }
}

