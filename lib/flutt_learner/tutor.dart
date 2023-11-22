
import 'package:flutter/material.dart';

class learnToBuild extends StatelessWidget {
  const learnToBuild({super.key});

  @override
  Widget build(BuildContext context) {
    double _volume = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("image Widget",
        style: TextStyle( 
          color: Colors.redAccent
        ),),
        backgroundColor: Colors.tealAccent,
      ),
      body:Container(
        height: 150,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(width: 2.0),
          borderRadius: BorderRadius.circular(5.0),
          image: DecorationImage(
            image: NetworkImage(
              'https://media.gcflearnfree.org/ctassets/topics/246/share_flower_fullsize.jpg'
              ),
              ),
        ),
        child: Center(
          child: Text('Flower',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
        ),
        // child: Image.network(
        //   'https://media.gcflearnfree.org/ctassets/topics/246/share_flower_fullsize.jpg',
        //   fit: BoxFit.fill,
        // ),
        //width: double.infinity,
        //child: Image(image:AssetImage('assets/images/oneimg.jpg'),fit: BoxFit.cover,),
       
      ),
      );
  }
}