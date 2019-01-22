import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'stateless widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double myTextSize = 30.0;
    final double myIconSize = 40.0;
    final TextStyle myTextStyle = TextStyle(color: Colors.grey, fontSize: myTextSize);

    var column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        MyCard(
          title: Text('import_contacts', style: myTextStyle),
          icon: Icon(Icons.import_contacts, size: myIconSize, color: Colors.red)
        ),
        MyCard(
          title: Text('insert_emoticon', style: myTextStyle),
          icon: Icon(Icons.insert_emoticon, size: myIconSize, color: Colors.blue)
        ),
        MyCard(
          title: Text('headset', style: myTextStyle),
          icon: Icon(Icons.headset, size: myIconSize, color: Colors.yellow)
        ),
        MyCard(
          title: Text('help_outline', style: myTextStyle),
          icon: Icon(Icons.help_outline, size: myIconSize, color: Colors.green)
        ),
        MyCard(
          title: Text('import_contacts', style: myTextStyle),
          icon: Icon(Icons.import_contacts, size: myIconSize, color: Colors.red)
        ),
        MyCard(
          title: Text('insert_emoticon', style: myTextStyle),
          icon: Icon(Icons.insert_emoticon, size: myIconSize, color: Colors.blue)
        ),
        MyCard(
          title: Text('headset', style: myTextStyle),
          icon: Icon(Icons.headset, size: myIconSize, color: Colors.yellow)
        ),
        MyCard(
          title: Text('help_outline', style: myTextStyle),
          icon: Icon(Icons.help_outline, size: myIconSize, color: Colors.green)
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(child: column),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget icon;
  final Widget title;

  MyCard({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 1.0
      ),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              this.title,
              this.icon,
            ],
          ),
        ),
      ),
    );
  }
}