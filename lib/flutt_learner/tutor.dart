
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
        "spread Operator",
        style: TextStyle(
          color: Colors.black,
        ),
        
      ),
      backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/oneimg.jpg"),
                ...imagesList
              ],
            ),
          ),
          // child: Column(
          //   children: imagesList,
          // ),
        ),
      ),
    );
   //WillpopScope is used to disable the back button on Android devices
    
  }
}

