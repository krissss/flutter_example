import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../public.dart';
import '../book_shelf/book_shelf_scene.dart';
import '../home/home_scene.dart';
import '../me/me_scene.dart';

class RootScene extends StatefulWidget {
  @override
  RootSceneState createState() => RootSceneState();
}

class RootSceneState extends State<RootScene> {
  int _tabIndex = 1;
  List<Image> _tabImages = [
    Image.asset('img/tab_bookshelf_n.png'),
    Image.asset('img/tab_bookstore_n.png'),
    Image.asset('img/tab_me_n.png'),
  ];
  List<Image> _tabSelectedImages = [
    Image.asset('img/tab_bookshelf_p.png'),
    Image.asset('img/tab_bookstore_p.png'),
    Image.asset('img/tab_me_p.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: <Widget>[
          BookShelfScene(),
          HomeScene(),
          MeScene(),
        ],
        index: _tabIndex,
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        activeColor: AppColor.primary,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: getTabIcon(0), title: Text('书架')),
          BottomNavigationBarItem(icon: getTabIcon(1), title: Text('书城')),
          BottomNavigationBarItem(icon: getTabIcon(2), title: Text('我的')),
        ],
        currentIndex: _tabIndex,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }

  Image getTabIcon(int index) {
    return index == _tabIndex ? _tabSelectedImages[index] : _tabImages[index];
  }
}
