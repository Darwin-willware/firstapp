
import 'package:flutter/material.dart';

class learnToBuild extends StatelessWidget {
  const learnToBuild({super.key});

  @override
  Widget build(BuildContext context) {
    double _volume = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Button Widget",
        style: TextStyle(
          color: Colors.redAccent
        ),),
        backgroundColor: Colors.tealAccent,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
         Center(
           child: IconButton(
            onPressed: (){
              _volume +=10;
            },
             icon: Icon(Icons.volume_up),
             iconSize: 50,
             color: Colors.blueAccent,),
         ),
         Text('Volume: ${_volume}',
         style: TextStyle(
          fontSize: 24,
         ),)
        ],
      ) ,
      );
  }
}