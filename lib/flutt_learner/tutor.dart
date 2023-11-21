
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
      body: Container(
        height: 1000,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
         // textBaseline: TextBaseline.alphabetic,
         textBaseline: TextBaseline.ideographic,
          children:<Widget> [
            Text("Hey from g7",
            style: TextStyle(fontSize:32.0),),
                        Text("Hey from g7",
            style: TextStyle(fontSize:12.0),)
            //  Container( color: Colors.deepOrangeAccent, height: 100, width: 100,),
            //  Container( color: Colors.amberAccent, height: 100, width: 100,),
            //  Container( color: Colors.blueAccent, height: 100, width: 100,),

          ],
        ),
      ) ,
      );
  }
}