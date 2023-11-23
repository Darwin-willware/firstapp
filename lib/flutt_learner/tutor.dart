import 'package:flutter/material.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}

class _learnToBuildState extends State<learnToBuild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
      Text("showSearch Widget",
      style: TextStyle(
        color: Colors.black
        ),
        ), 
      elevation: 0.0,
       backgroundColor: Colors.transparent,
       actions: [
        IconButton(onPressed: (){
          showSearch(context: context,
           delegate: CustomSearchDelegate(),);
        }, 
        icon: const Icon(Icons.search),
        )
       ],
       ),
      
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchterms= [
    'Apple',
    'Banana',
    'Pear',
    'Watermelons',
    'Oranges',
    'BlueBerries',
    'Strawberries',
    'Raspberries',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
        return [
          IconButton(
            onPressed: () {
              query = '';
            },
           icon: const Icon(Icons.clear),
           ), 
        ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
         return IconButton(onPressed: () {
          close(context, null);
         }, icon: const Icon(Icons.arrow_back)
         );
  }

  @override
  Widget buildResults(BuildContext context) {
             List<String> matchQuery = [];
             for(var fruit in searchterms){
              if(fruit.toLowerCase().contains(query.toLowerCase())){
                matchQuery.add(fruit);
              }
             }
             return ListView.builder(
              itemCount: matchQuery.length,
              itemBuilder: (context, index){
                var result = matchQuery[index];
                return ListTile(
                  title: Text(result),
                );
              }
              );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
        List<String> matchQuery = [];
        for(var fruit in searchterms){
              if(fruit.toLowerCase().contains(query.toLowerCase())){
                matchQuery.add(fruit);
              }
             }
              return ListView.builder(
              itemCount: matchQuery.length,
              itemBuilder: (context, index){
                var result = matchQuery[index];
                return ListTile(
                  title: Text(result),
                );
              }
              );
  }
}