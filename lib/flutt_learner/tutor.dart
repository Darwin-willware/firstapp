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
        title: Text("Bottom Navigation Bar Widget"),
        
      ),
     body: Center(
      child: body[_currentIndex],
     ),
     bottomNavigationBar: BottomNavigationBar(
      type : BottomNavigationBarType.fixed,
      items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
         BottomNavigationBarItem(icon: Icon(Icons.video_file),label: 'Videos'),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
           BottomNavigationBarItem(icon: Icon(Icons.subscriptions),label: 'SubScriptions'),
      ],
      currentIndex: _currentIndex,
      onTap: (int newIndex){
       setState(() {
          _currentIndex = newIndex;
       });
      },
      ),
    );
  }
}

