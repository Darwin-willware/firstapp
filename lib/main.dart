import 'package:flutter/material.dart';
import 'package:firstapp/flutt_learner/tutor.dart';
void main(){
  runApp(const FetchApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: Scaffold(),
    );
  }
}
class FetchApp extends StatelessWidget{
  const FetchApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: learnToBuild(),
    );
  }
}