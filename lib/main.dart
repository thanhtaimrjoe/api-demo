import 'package:api_demo/dataservice.dart';
import 'package:api_demo/serverinfo.dart';
import 'package:api_demo/startpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  
  Future<List<ServerInfo>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchServerInfo();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serverstatus monitor',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: StartPage(title: 'Serverstatus monitor', serverInfo: futureData),
    );
  }

}
