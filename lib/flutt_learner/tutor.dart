import 'package:flutter/material.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}

class _learnToBuildState extends State<learnToBuild> {
  String title = "Pop Menu Widget";
  String firstPage = "First Page";
    String secondPage = "Second Page";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          PopupMenuButton(itemBuilder: (context)=>[
            PopupMenuItem(child: Text(firstPage),
            value: firstPage,
            ),
            PopupMenuItem(child: Text(secondPage),
            value: secondPage,
            )
          ],
          onSelected: (String newValue){
               setState(() {
                 title = newValue;
               });
          },
          )
        ],
      ),
     
    );
  }
}

