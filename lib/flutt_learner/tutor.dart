
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}
  
  Future<String> getData() async{
    await Future.delayed(const Duration(seconds: 1));
    // throw 'An Error Occured'
    return 'It Works';
  }
class _learnToBuildState extends State<learnToBuild> {
  String selectedText = '';
  final String _selectableText = 'This is a Selectable Text you can Select it by right now';
  final TextStyle _styleblue = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.blue
  );
  final TextStyle _style = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
     appBar: AppBar(
      title: Text("SelectableText Widget",
      style: TextStyle(
        color: Colors.black
      ),
      ),
      backgroundColor: Colors.transparent,
     ),
     body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            selectedText,
          style: _styleblue,
          ),
          TextSelectionTheme(
            data: const TextSelectionThemeData(
            selectionColor:Colors.yellow,
          ), 
          child: SelectableText(_selectableText,
          style: _style,
          onSelectionChanged: (selection, cause) {
            setState(() {
              selectedText = _selectableText.substring(selection.start,selection.end);
            });
          },
          )
          )
        ],
      ),
     ),
    );
    
  }
}

