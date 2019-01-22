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
        )
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('press me'),
      onPressed: () {
        showDialog(context: context, builder: (BuildContext context) => AlertDialog(
          title: Text('alert title'),
          content: Text('Hello world'),
        ));
      },
    );
  }
}