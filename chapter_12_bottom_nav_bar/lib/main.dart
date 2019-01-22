import 'package:chapter_12_bottom_nav_bar/navs/first.dart';
import 'package:chapter_12_bottom_nav_bar/navs/second.dart';
import 'package:chapter_12_bottom_nav_bar/navs/third.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nav bar',
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
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nav bar'),
        backgroundColor: Colors.blue,
      ),
      body: TabBarView(
        children: [First(), Second(), Third()],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: tabs,
          controller: controller,
        ),
      ),
    );
  }
}
