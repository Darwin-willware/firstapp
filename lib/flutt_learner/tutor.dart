
import 'package:flutter/material.dart';

class learnToBuild extends StatelessWidget {
  const learnToBuild({super.key});

  @override
  Widget build(BuildContext context) {
    double _volume = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("custom Ink Widget",
        style: TextStyle( 
          color: Colors.redAccent
        ),),
        backgroundColor: Colors.tealAccent,
      ),
      body:Center(
        child: Ink(
          decoration: ShapeDecoration(
            color: Colors.blueAccent,
            shape: CircleBorder()
            ),
            child: IconButton(
              icon: Icon(Icons.add),
              color: Colors.white,
              onPressed: (){},),
        ),
      ),
      );
  }
}