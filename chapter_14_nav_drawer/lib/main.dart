import 'package:chapter_14_nav_drawer/screens/account.dart';
import 'package:chapter_14_nav_drawer/screens/home.dart';
import 'package:chapter_14_nav_drawer/screens/setting.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomeScreen(),
  routes: <String, WidgetBuilder> {
    SettingScreen.routeName: (BuildContext context) => SettingScreen(),
    AccountScreen.routeName: (BuildContext context) => AccountScreen(),
  },
));
