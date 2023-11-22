import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}

class _learnToBuildState extends State<learnToBuild> {
  List data = [];
  //https://retool.com/api-generator
  //https://reqres.in/api/users?page=2
  Future<void> fetchdata() async {
    final res = await http.get(Uri.parse("https://retoolapi.dev/shA1ty/data"));
    print(res.statusCode);
    print(res.body.toString());

    setState(() {
      data = jsonDecode(res.body);
    });
  }
  @override
  Widget build(BuildContext context) {
    fetchdata();
    return Scaffold(
      appBar: AppBar(
        title: Text('OutlineD Button'),
      ),
      body: 
      Container(
        //color: Colors.blueAccent,
        height: 240,
        child: ListView.separated(itemBuilder: (context,index){
          return Container(
            width: 210,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          );
        }, 
        separatorBuilder: (context, index) => SizedBox(width: 25,),
         itemCount: data.length,
         scrollDirection: Axis.horizontal,
         padding: EdgeInsets.only(
          left: 20,
          right: 20
         ),
         ),
      ),
    );
  }
}