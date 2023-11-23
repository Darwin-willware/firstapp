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
  DateTime _dateTime = DateTime(2100);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Show Date Picker  Widget"),
      ),
     body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${_dateTime.day}-${_dateTime.month}-${_dateTime.year}',
            style: const TextStyle(fontSize: 40),
          ),
          ElevatedButton(
            onPressed: () async{
              DateTime? _newDate = await showDatePicker(context: context,
               initialDate: _dateTime, 
               firstDate: DateTime(1800), lastDate: DateTime(3000));
               if(_newDate != null){
                setState(() {
                  _dateTime = _newDate;
                });
               }
            }, 
            child: const Text("Get Date"))
        ],
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