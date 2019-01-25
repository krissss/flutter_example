import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  final String title;

  HomeSection(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(15, 15, 0, 5),
      child: Row(
        children: <Widget>[
          Image.asset('img/home_tip.png'),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('$title',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
