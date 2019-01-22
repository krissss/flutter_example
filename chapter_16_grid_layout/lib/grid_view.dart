import 'package:flutter/material.dart';

class MyGridView {
  Card getChild(String s) {
    return Card(
      child: Center(
        child: Text(s),
      ),
    );
  }

  GridView build() {
    List data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    return GridView.count(
        crossAxisCount: 3,
        children: data.map((item) => getChild(item.toString())).toList());
  }
}
