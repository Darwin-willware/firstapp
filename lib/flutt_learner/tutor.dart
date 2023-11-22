
import 'package:flutter/material.dart';

class learnToBuild extends StatelessWidget {
  const learnToBuild({super.key});

  @override
  Widget build(BuildContext context) {
    double _volume = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Bars Widget",
        style: TextStyle( 
          color: Colors.redAccent
        ),),
        backgroundColor: Colors.tealAccent,
      ),
      body:Container(
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          
          children:<Widget> [
            TextButton(onPressed: (){}, child: Text("login")),
             IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            IconButton(onPressed: (){}, icon: Icon(Icons.people)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          ],
        ),
      ),
      );
  }
}