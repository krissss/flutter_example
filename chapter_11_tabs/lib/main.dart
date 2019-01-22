import 'package:chapter_11_tabs/tabs/first.dart';
import 'package:chapter_11_tabs/tabs/second.dart';
import 'package:chapter_11_tabs/tabs/third.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tabs',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  TabController controller;
  List<Widget> tabs = [
    Tab(
      icon: Icon(Icons.home),
    ),
    Tab(
      icon: Icon(Icons.list),
    ),
    Tab(
      icon: Icon(Icons.person),
    ),
  ];

  @override
  void initState() {
    super.initState();

    controller = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  TabBar getTabBar() {
    return TabBar(
      tabs: tabs,
      controller: controller,
    );
  }

  TabBarView getTabBarView(List<Widget> tabs) {
    return TabBarView(
      children: tabs,
      controller: controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tabs'),
        backgroundColor: Colors.blue,
        bottom: getTabBar(),
      ),
      body: getTabBarView([First(), Second(), Third()]),
    );
  }
}

