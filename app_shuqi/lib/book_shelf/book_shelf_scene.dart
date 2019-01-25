import 'package:flutter/material.dart';

import '../public.dart';

class BookShelfScene extends StatefulWidget {
  @override
  BookShelfSceneState createState() => BookShelfSceneState();
}

class BookShelfSceneState extends State<BookShelfScene> {
  ScrollController scrollerController;

  Future<void> fetchData() async {}

  Widget buildNavigationBar() {

  }

  @override
  Widget build(BuildContext context) {
    return Container();
    // return Scaffold(
    //   backgroundColor: AppColor.white,
    //   body: Stack(
    //     children: <Widget>[
    //       RefreshIndicator(
    //         onRefresh: fetchData,
    //         child: ListView(
    //           padding: EdgeInsets.only(top: 0),
    //           controller: scrollerController,
    //           children: <Widget>[
                
    //           ],
    //         ),
    //       ),
    //       buildNavigationBar(),
    //     ],
    //   ),
    // );
  }
}
