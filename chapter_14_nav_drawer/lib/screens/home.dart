import 'package:chapter_14_nav_drawer/screens/account.dart';
import 'package:chapter_14_nav_drawer/screens/setting.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Drawer getNavDrawer(BuildContext context) {
    var headerChild = DrawerHeader(
      child: Text('Header'),
    );
    var aboutChild = AboutListTile(
      child: Text('About'),
      applicationName: "Application Name",
      applicationVersion: "v1.0.0",
      applicationIcon: Icon(Icons.adb),
      icon: Icon(Icons.info),
    );

    ListTile getNavListTile(IconData icon, String s, String routeName) {
      return ListTile(
        leading: Icon(icon),
        title: Text(s),
        onTap: () {
          setState(() {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var myNavChild = [
      headerChild,
      getNavListTile(Icons.settings, "Settings", SettingScreen.routeName),
      getNavListTile(Icons.home, "Home", '/'),
      getNavListTile(Icons.account_box, "Account", AccountScreen.routeName),
      aboutChild,
    ];

    ListView listView = ListView(
      children: myNavChild,
    );

    return Drawer(child: listView);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nav drawer'),
      ),
      body: Container(
        child: Center(
          child: Text('home'),
        ),
      ),
      drawer: getNavDrawer(context),
    );
  }
}
