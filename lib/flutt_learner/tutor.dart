
import 'package:flutter/material.dart';

class learnToBuild extends StatelessWidget {
  const learnToBuild({super.key});

  @override
  Widget build(BuildContext context) {
    double _volume = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("card Widget",
        style: TextStyle( 
          color: Colors.redAccent
        ),),
        backgroundColor: Colors.tealAccent,
      ),
      body:Container(
           child: Center(
             child: Card(
              color: Color.fromARGB(179, 15, 178, 219),
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Container(
                height: 100,
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget> [
                    Text('Try not to become a man of success, but rather try to become a man of value',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                    ),
                    Text('-Albert Einstein',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ],
                ),
              ),
             ),
           ),
      ),
      );
  }
}