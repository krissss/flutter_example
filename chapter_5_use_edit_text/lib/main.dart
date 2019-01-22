import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edit text',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Edit text'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: MyEditText(),
        ),
      ),
    );
  }
}

class MyEditText extends StatefulWidget {
  @override
  MyEditTextState createState() => MyEditTextState();
}

class MyEditTextState extends State<MyEditText> {
  List results = [];
  final TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(hintText: "placeholder"),
          onSubmitted: (String str) {
            setState(() {
              results.add(str);
              controller.text = "";
            });
          },
          controller: controller,
        ),
        Text(
          results.join('\n'),
          style: TextStyle(fontSize: 12.0),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
