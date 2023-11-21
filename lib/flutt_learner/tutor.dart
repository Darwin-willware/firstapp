
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:<Widget> [
             Container( color: Colors.deepOrangeAccent,height: 100,width: 100,),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               Container(color: Colors.greenAccent , height: 50, width: 50,),
              Container(color: Colors.redAccent, height: 50, width: 50,),
               Container(color: Color.fromARGB(255, 138, 26, 119), height: 50, width: 50,),
              ],
             )
          ],
        ),
      ) ,
      );
  }
}