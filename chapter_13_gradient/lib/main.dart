import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    title: 'graidient',
    home: Scaffold(
      appBar: AppBar(
        title: Text('graidient'),
      ),
      body: Container(
        child: Center(
          child: Text('hello world'),
        ),
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: <Color>[Colors.black, Colors.white])),
      ),
    )));
