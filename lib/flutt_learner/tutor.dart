
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
   bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
     appBar: AppBar(
      title: Text("CheckBoxListTile Widget",
      style: TextStyle(
        color: Colors.black
      ),
      ),
      backgroundColor: Colors.transparent,
     ),
     body: Center(
      child: CheckboxListTile(
        title: const Text('CheckBox List Tile'),
        value: _isChecked, 
        onChanged: (bool? newValue){
          setState(() {
            _isChecked = newValue!;
          });
        },
        activeColor: Colors.orangeAccent,
        checkColor: Colors.white,
        controlAffinity: ListTileControlAffinity.leading,
        tileColor: Colors.black12,
        //to set initial state of a checkbox either true as checked or false as unchecked
        tristate: true,
        subtitle: const Text('SubTitle'),
        ),
     ),
    );
    
  }
}

