import 'package:api_demo/serverinfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  final String title;
  final Future<List<ServerInfo>> serverInfo;

  StartPage({Key key, this.title, this.serverInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ahihi
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: FutureBuilder<List<ServerInfo>>(
          future: this.serverInfo,
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return CircularProgressIndicator();
              default:
                if (snapshot.hasError)
                  return new Text('Error: ${snapshot.error}');
                else
                  return _buildGridView(context, snapshot.data);
            }
          },
        ),
      ),
    );
  }

  Widget _buildGridView(BuildContext context, List<ServerInfo> serverInfo) {
    return MyText(info: serverInfo);
  }
}

class MyText extends StatelessWidget {
  MyText({this.info});

  final List<ServerInfo> info;

  @override
  Widget build(BuildContext context) {
    String list = "";
    for (var item in info) {
      list = list + " name : " + item.productName;
    }
    return Text('Hello, my data is: $list');
  }
}
