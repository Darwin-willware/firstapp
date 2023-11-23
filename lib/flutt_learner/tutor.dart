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
        title: Text("PageView Widget"),
        
      ),
     body: PageView(
      children: [
        Container(
          color: Colors.blue,
          child: const Center(
            child: Text("Page-001",
            style: TextStyle(
              color: Colors.white,
              fontSize: 60,
            ),),
          ),
        ),
                Container(
          color: Colors.green,
          child: const Center(
            child: Text("Page-001",
            style: TextStyle(
              color: Colors.white,
              fontSize: 60,
            ),),
          ),
        ),
                Container(
          color: Colors.orangeAccent,
          child: const Center(
            child: Text("Page-001",
            style: TextStyle(
              color: Colors.white,
              fontSize: 60,
            ),),
          ),
        )
      ],
     )
    );
  }
}

