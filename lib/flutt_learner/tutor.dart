
import 'package:flutter/material.dart';

class learnToBuild extends StatelessWidget {
  const learnToBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Widget",
        style: TextStyle(
          color: Colors.redAccent
        ),),
        backgroundColor: Colors.tealAccent,
      ),
      body:Container(
        height: 1000,
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget> [
             Container( color: Colors.deepOrangeAccent,height: 100,width: 100,),
             Container( color: const Color.fromARGB(255, 228, 225, 215),height: 100,width: 100,),
             Container( color: Color.fromARGB(255, 32, 145, 75),height: 100,width: 100,),
          ],
        ),
      ) ,
      );
  }
}