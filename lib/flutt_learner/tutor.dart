import 'package:flutter/material.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}


//FAKE FIREBASE STREAM TO GET STREAM OF INPUTS ONE AFTER ANOTHEER
Stream<int> generateStream = (() async*{
  await Future<void>.delayed(const Duration(seconds:2));
  yield 1;
  await Future<void>.delayed(const Duration(seconds:4));
  yield 2;
  await Future<void>.delayed(const Duration(seconds:1));
  yield 3;
})();

class _learnToBuildState extends State<learnToBuild> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            floating: false,
            snap: false,
            title: Text('Flutter'),
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('MAPP'),
              centerTitle: true,
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              const Text("SLIVER",
              style: TextStyle(fontSize: 600),
              ),
            ],
          ),
          ),
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