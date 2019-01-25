import 'package:flutter/material.dart';

import 'home_model.dart';
import '../app/app_color.dart';

class HomeMenu extends StatelessWidget {
  final List<MenuInfo> infos;

  HomeMenu(this.infos);

  Widget _menuItem(MenuInfo info) {
    return Column(
      children: <Widget>[
        Image.asset(info.icon),
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(info.title, style: TextStyle(fontSize: 12, color: AppColor.gray)),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: infos.map((info) => _menuItem(info)).toList(),
      ),
    );
  }
}