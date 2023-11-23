import 'package:flutter/material.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}

class _learnToBuildState extends State<learnToBuild> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visibility Widget"),
        actions: [
          TextButton(
            onPressed: (){
              setState(() {
                isVisible = !isVisible;
              });
            },
           child: Text("Hide center",
           style: TextStyle(
            color: Colors.black
           ),),
           )
        ],
      ),
     body: SizedBox(
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/threeimg.jpg',
              height: 100,
            ),
            Visibility(
              visible: isVisible,
              child: Image.asset(
                'assets/images/twoimg.jpg',
                height: 200,
                
              ),
            ),
            Image.asset(
              'assets/images/fourimg.jpg',
              height: 100,
            )
          ],
        ),
      ),
     )
    );
  }
}

