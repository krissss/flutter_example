import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'load image',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(
          title: Text('load image'),
        ),
        body: Column(
          children: <Widget>[
            LocalImage(),
            NetworkImage(),
          ],
        ),
      ),
    );
  }
}

class LocalImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('local image'),
        Image.asset('assets/images/read_icon_vip.png'),
      ],
    );
  }
}

class NetworkImage extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('network image'),
        Image.network('https://cdnqn.canslife.com/1/xYLq4QRm9f_ha2vth5UHtnTx3ABY1f4f.jpg')
      ],
    );
  }
}