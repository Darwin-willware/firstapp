import 'package:flutter/material.dart';

class learnToBuild extends StatelessWidget {
  const learnToBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Routing",
        style: TextStyle(
          color: Colors.redAccent,
        ),
        ),
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: Text(" of Page 001",
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=>
              SecondPage()
              )
          );
        }),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("Page Routing",
        style: TextStyle(
          color: Colors.redAccent,
        ),
        ),
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: Text(" of Page 002",
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: (){
          Navigator.of(context).pop(
            MaterialPageRoute(
              builder: (context)=>
              FirstPage()
              )
          );
        }),
    );
  }
}