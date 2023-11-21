
import 'package:flutter/material.dart';

class learnToBuild extends StatelessWidget {
  const learnToBuild({super.key});

  @override
  Widget build(BuildContext context) {
    double _volume = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich Text Widget",
        style: TextStyle( 
          color: Colors.redAccent
        ),),
        backgroundColor: Colors.tealAccent,
      ),
      body:RichText(
        text: TextSpan(
          text: 'hey from hello to',
          style: TextStyle(
            color: Colors.purple,
            fontSize: 29.0,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dotted
          ),
          children: <TextSpan>[
            TextSpan(text: 'computer',
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal
            )),
            TextSpan(text: 'from'),
          ]
          )
          ),
      );
  }
}