
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
      body: Center(
        child: Text("LearnStacks With G7",
        style: TextStyle(
          fontSize: 35.0,
          color: Color.fromARGB(255, 168, 52, 204),
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w900,
          letterSpacing: 1.0,
          wordSpacing: 5.0,
          shadows: [
            Shadow(
              color: Colors.black,
              offset: Offset(2, 4),
              blurRadius: 2,
            )
          ],
          //decoration: TextDecoration.underline,
          //decoration: TextDecoration.overline,
          decoration: TextDecoration.lineThrough,
          decorationColor: Colors.amberAccent,
          decorationStyle: TextDecorationStyle.double,
        ),
        ),
      ),
    );
  }
}