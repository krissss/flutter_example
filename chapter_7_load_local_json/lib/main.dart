import 'dart:convert';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'load local json',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(
          title: Text('load local json'),
        ),
        body: FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString('assets/json/test.json'),
          builder: (context, snapshot) {
            var data = json.decode(snapshot.data.toString());
            return Column(
              children: <Widget>[
                Text("name:${data['name']}"),
                Text("age:${data['age']}"),
              ],
            );
          },
        )
      ),
    );
  }
}
