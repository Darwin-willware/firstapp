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
      appBar: AppBar(title: 
      Text("SLIVER Widget",
      style: TextStyle(
        color: Color.fromARGB(255, 207, 27, 243)
        ),
        ), 
      elevation: 0.0,
      backgroundColor: Colors.transparent,
       actions: [
        IconButton(onPressed: (){
          showSearch(context: context,
           delegate: CustomSearchDelegate(),);
        }, 
        icon: const Icon(Icons.search,color: Colors.black,),
        )
       ],
       ),
       body: Center(
       child: ChoiceChip(
        avatar: Image.asset('assets/images/fiveimg.jpg'),
        label: Text("Choice Chip"),
        selected: _isSelected,
        onSelected: (newBoolValue){
          setState(() {
            _isSelected = newBoolValue;
          });
        },
        ),
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