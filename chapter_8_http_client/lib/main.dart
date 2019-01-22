import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Http Client',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Http client"),
          ),
          body: HttpGet(),
        ));
  }
}

class HttpGet extends StatefulWidget {
  @override
  HttpGetState createState() => HttpGetState();
}

class HttpGetState extends State<HttpGet> {
  final url = 'http://www.canslife.com/api/v2/app/banner?type=20';
  List data;

  Future<String> getJsonData() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    if (response.statusCode == 200) {
      var responseJson = json.decode(response.body);
      setState(() {
        data = responseJson['data']['values'];
      });
    } else {
      print("Request failed with status: ${response.statusCode}.");
    }

    return "Successfull";
  }

  @override
  void initState() {
    super.initState();

    this.getJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data == null ? 0 : data.length,
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: Image.network(data[index]['src']),
        );
      },
    );
  }
}
