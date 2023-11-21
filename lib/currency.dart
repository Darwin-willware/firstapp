import 'package:flutter/material.dart';
// create a stateful widget
class currencyconvertermaterial extends StatefulWidget{
  const currencyconvertermaterial({super.key});
  @override
  State <currencyconvertermaterial> createState() =>
  _currencyconvertermaterialstate();
}
class _currencyconvertermaterialstate 
extends  State<currencyconvertermaterial>{
  //declare variables
  double result = 0;
  final TextEditingController tec = TextEditingController();
  // function to get output
  void convert(){
    result = double.parse(tec.text)*81;
    setState(() {
      
    });
  }
  @override
  void dispose(){
    tec.dispose();
    super.dispose();
  }
   @override
   Widget build(BuildContext context){
     final border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(9),
     );
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        elevation: 0,
        title: const Text('Currency Converter'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text('INR ${result!= 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                 style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 221, 198, 121),
                 ),
                 ),
             TextField(
              controller: tec,
              style: const TextStyle(
                color:Colors.indigoAccent
                ),
                decoration: InputDecoration(
                  hintText: 'Enter here in USD',
                  hintStyle: const TextStyle(
                    color: Colors.limeAccent,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_rounded),
                  prefixIconColor: Colors.tealAccent,
                  filled: true,
                  fillColor: Colors.amber,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
             ),
             const SizedBox(height: 12),
             ElevatedButton(onPressed: convert,
             style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.lightBlueAccent,
              minimumSize: const Size(double.infinity,50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
             ),
             child: const Text('Convert'),
             )
            ]),
          ),
        ),
    );
   }
}