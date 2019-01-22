import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyButton(),
    );
  }
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() => MyButtonState();
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> strs = ['Hello', 'World', 'My', 'Flutter'];
  String displayedStr = 'welcome';

  void onPress() {
    setState(() {
      displayedStr = strs[counter];
      counter = counter < strs.length-1 ? counter + 1 : 0;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(displayedStr, style: TextStyle(fontSize: 40.0)),
              Padding(padding: const EdgeInsets.all(20.0)),
              RaisedButton(
                child: Text('press me', style: TextStyle(color: Colors.white)),
                color: Colors.red,
                onPressed: onPress,
              )
            ],
          ),
        ),
      ),
    );
  }
}
