import 'dart:convert';

import 'package:flutter/material.dart';
 import 'package:http/http.dart' as http;
 class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
   
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rest Api"),
        backgroundColor: Colors.lightBlueAccent,
        
      ),
      body: ListView.builder
      (itemCount: users.length,
        itemBuilder:(context,index){
          final user = users[index];
          final name =  user['name']['first'];
          final email = user['email'];
          final image = user['picture']['thumbnail'];
          return ListTile(
            leading:ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(image),
            ),
            title: Text(name),
            subtitle: Text(email),
          );
        }
         ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchUsers),
    );
  }
  void fetchUsers()async{
      print("fetch users");
      const url = 'https://randomuser.me/api/?results=5';
      final urlp = Uri.parse(url);
      final response =await http.get(urlp);
      final body = response.body;
      final json = jsonDecode(body);
      setState(() {
        users = json['results'];
      });
      print('fetch completed');
  }
}