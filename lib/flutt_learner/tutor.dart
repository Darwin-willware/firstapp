import 'package:flutter/material.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}

class _learnToBuildState extends State<learnToBuild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OutlineD Button'),
      ),
      body: Center(
        child: OutlinedButton(
           style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.focused)) {
              return Colors.grey;
            }
            return const Color.fromARGB(255, 105, 168, 240);
          }),
          overlayColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.red;
            }
            return Colors.transparent;
          }),
          side: MaterialStateProperty.resolveWith((states) {
            Color _borderColor;

            if (states.contains(MaterialState.disabled)) {
              _borderColor = Colors.greenAccent;
            } else if (states.contains(MaterialState.pressed)) {
              _borderColor = Colors.yellow;
            } else {
              _borderColor = Colors.pinkAccent;
            }

            return BorderSide(color: _borderColor, width: 5);
          }),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
            return RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));
          }),
        ),
          onPressed: (){},
         child: Padding(
           padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
           child: Text("Click Me"),
         ),
         
         ),
      ),
    );
  }
}