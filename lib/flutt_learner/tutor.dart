import 'package:flutter/material.dart';

class learnToBuild extends StatefulWidget {
  const learnToBuild({super.key});

  @override
  State<learnToBuild> createState() => _learnToBuildState();
}

class _learnToBuildState extends State<learnToBuild> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stepper Widget"),),
      body: Center(
        child: Stepper(
          onStepTapped: (int newIndex){
            setState(() {
              _currentStep = newIndex;
            });
          },
          currentStep: _currentStep,
          onStepContinue: () {
            //condition to check if its not the last one
            if(_currentStep != 2){
              setState(() {
                _currentStep +=1;
              });
            }
          },
          onStepCancel: () {
            if(_currentStep !=0){
              setState(() {
                _currentStep -= 1;
              });
            }
          },
          steps: const [
            Step(title: Text("step 001"), content: Text("Information for step 1")),
            Step(title: Text("step 002"), content: Text("Information for step 2")),
            Step(title: Text("step 003"), content: Text("Information for step 3")),
          ], 

        ),
      ),
    );
  }
}