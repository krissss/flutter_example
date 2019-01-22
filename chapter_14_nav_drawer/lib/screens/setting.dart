import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  static const String routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Center(
        child: Text('setting'),
      ),
    );
  }
}
