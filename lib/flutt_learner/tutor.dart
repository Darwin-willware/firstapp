import 'package:flutter/material.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}

class _learnToBuildState extends State<learnToBuild> {
  int _currentIndex = 0;
  List<Widget> body  = const [
    Icon(Icons.home),
    Icon(Icons.video_file),
    Icon(Icons.add),
    Icon(Icons.subscriptions),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShowModalBottomSheet Widget"),
        
      ),
     body: ElevatedButton(
      onPressed: (){
        showModalBottomSheet(context: context, 
        builder: (BuildContext context){
          return SizedBox(
            height: 400,
            child: Center(
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Close")),
            ),
          );
        }
        );
      }, 
     child: const Text("Modal Bottom Sheet"),
     )
    );
  }
}

