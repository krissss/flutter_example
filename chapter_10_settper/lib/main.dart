import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'alert dialog',
      home: Scaffold(
          appBar: AppBar(
            title: Text('alert dialog'),
          ),
          body: Center(
            child: MyHome(),
          )),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  int currentStep = 0;
  List<Step> steps = [
    Step(
      title: Text('Step 1'),
      content: Text('Hello'),
      isActive: true,
    ),
    Step(
      title: Text('Step 2'),
      content: Text('New'),
      isActive: true,
    ),
    Step(
      title: Text('Step 3'),
      content: Text('Flutter'),
      isActive: true,
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stepper(
        steps: steps,
        currentStep: currentStep,
        type: StepperType.horizontal,
        controlsBuilder: (BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
          return Row(
            children: <Widget>[
              FlatButton(
                child: Text('Next', style: TextStyle(color: Theme.of(context).buttonColor)),
                onPressed: onStepContinue,
                color: Theme.of(context).accentColor,
              ),
              FlatButton(
                child: Text('Prev'),
                onPressed: onStepCancel,
              )
            ],
          );
        },
        onStepTapped: (step) {
          setState(() {
            currentStep = step;
          });
          print('onStepTapped:$currentStep');
        },
        onStepCancel: () {
          setState(() {
            currentStep = currentStep > 0 ? currentStep - 1 : 0;
          });
          print('onStepCancel:$currentStep');
        },
        onStepContinue: () {
          setState(() {
            currentStep = currentStep < steps.length-1 ? currentStep + 1 : 0;
          });
          print('onStepContinue:$currentStep');
        },
      ),
    );
  }
}
