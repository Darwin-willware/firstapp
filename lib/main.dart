import 'package:firstapp/flutt_learner/access_local.dart';
import 'package:firstapp/flutt_learner/chewyie.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/flutt_learner/video_player_page.dart';
import 'package:firstapp/flutt_learner/get_local_videos.dart';
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
      home: MyLocalVideoGetter(),
    );
  }
}