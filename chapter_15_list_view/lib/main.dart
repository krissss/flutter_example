import 'package:chapter_15_list_view/contact_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'List View',
  home: Scaffold(
    appBar: AppBar(
      title: Text('List View'),
    ),
    body: ContactPage(),
  ),
));
