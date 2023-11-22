

import 'package:flutter/material.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}

class _learnToBuildState extends State<learnToBuild> {
    String _value = '';
    void _onChanged(String value){
      setState(() {
        _value = value;
      });
    }
    void _onSubmit(String value){
        setState(() {
          _value = 'submit:${value}';
        });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: Text("TextField Widget",
          style: TextStyle(
            color: Colors.redAccent,
          ),),
         ),
         body: Column(
          children:<Widget> [
              Text(_value),
              TextField(
                decoration: new InputDecoration(
                  labelText: "Enter Number",
                  hintText: 'placeholder',
                  icon: new Icon(Icons.people)),
                  autocorrect: true,
                onChanged: _onChanged,
                onSubmitted: _onSubmit,
                //keyboardType: TextInputType.number,
              )
          ],
         ),
   );
  }
}