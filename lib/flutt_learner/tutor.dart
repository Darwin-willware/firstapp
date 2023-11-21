
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
      body:Center(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor:MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
        //      overlayColor: MaterialStateProperty.resolveWith<Color?>(
        // (Set<MaterialState> states) {
        //   if (states.contains(MaterialState.hovered))
        //     return const Color.fromARGB(255, 47, 33, 243).withOpacity(0.04);
        //   if (states.contains(MaterialState.focused) ||
        //       states.contains(MaterialState.pressed))
        //     return const Color.fromARGB(255, 72, 33, 243).withOpacity(0.12);
        //   return null; // Defer to the widget's default.
        // },
        //   ),
            overlayColor: MaterialStateColor.resolveWith((states) => const Color.fromARGB(255, 73, 54, 244)),
          ),
          onPressed: (){}, 
          child: Text("Click Me",
          style: TextStyle(color: Colors.black,
          fontSize: 22,),
          )
          ),
      ),
      );
  }
}