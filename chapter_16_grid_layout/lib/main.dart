import 'package:chapter_16_grid_layout/grid_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final MyGridView myGridView = MyGridView();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'grid layout',
      home: Scaffold(
        appBar: AppBar(
          title: Text('grid layout'),
        ),
        body: myGridView.build(),
      ),
    );
  }
}
