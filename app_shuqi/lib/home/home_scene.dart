import 'package:flutter/material.dart';

import '../public.dart';
import 'home_list_view.dart';

class HomeScene extends StatefulWidget {
  @override
  HomeSceneState createState() => HomeSceneState();
}

class HomeSceneState extends State<HomeScene> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TabBar(
              labelColor: AppColor.darkGray,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              unselectedLabelColor: AppColor.gray,
              indicatorColor: AppColor.secondary,
              indicatorPadding: EdgeInsets.fromLTRB(8, 0, 8, 5),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              tabs: <Widget>[
                Tab(text: '精选'),
                Tab(text: '女生'),
                Tab(text: '男生'),
                Tab(text: '漫画'),
              ],
            ),
          ),
          backgroundColor: AppColor.white,
          elevation: 0,
        ),
        body: TabBarView(
          children: <Widget>[
            HomeListView(HomeListType.excellent),
            HomeListView(HomeListType.female),
            HomeListView(HomeListType.male),
            HomeListView(HomeListType.cartoon),
          ],
        ),
      ),
    );
  }
}