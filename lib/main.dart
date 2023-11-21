import 'package:firstapp/HomeScreen.dart';
import 'package:firstapp/currency.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/flutt_learner/flutWidget.dart';
import 'package:firstapp/flutt_learner/elevated.dart';
import 'package:firstapp/flutt_learner/video_player_page.dart';
void main(){
  runApp(const FetchApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: currencyconvertermaterial(),
    );
  }
}
class FetchApp extends StatelessWidget{
  const FetchApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyOwnPlayer(),
    );
  }
}