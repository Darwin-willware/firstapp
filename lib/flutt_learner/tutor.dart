
import 'package:flutter/material.dart';

class learnToBuild extends StatelessWidget {
  const learnToBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Elevated Button Widget",
        style: TextStyle(
          color: Colors.redAccent
        ),),
        backgroundColor: Colors.tealAccent,
      ),
      body:Center(
         child: Container(
            height: 44.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 2, 173, 102), Colors.blue])),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent),
              child: Text('Elevated Button'),
            ),
          ),
        
        // child: ElevatedButton(
        //   style: ButtonStyle(
            
        //   ),
        //   onPressed: (){},
        //   child:Container(
        //     // child: Text("Get Me",
        //     // style: TextStyle(
        //     //   color: Colors.white,
        //     // ),),
        //     decoration: BoxDecoration(
        //       gradient: LinearGradient(colors: <Color>[
        //         Color(0xFF0D47A1),
        //         Color(0xFF1976D2),
        //         Color(0xFF42A5F5)
        //       ]),
        //     ),
        //   ) ),
        // child: ElevatedButton(
        //   style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all<Color>(Colors.amberAccent),
        //     overlayColor: MaterialStateColor.resolveWith((states) => Colors.red),
        //   ),
        //   onPressed: (){}, 
        //   child: Text("data",
        //   style: TextStyle(
        //     fontSize: 20,
        //     color: Colors.black
        //   ),
        //   )),
      ),
      );
  }
}