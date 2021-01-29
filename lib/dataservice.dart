import 'dart:async';
import 'dart:convert';
import 'package:api_demo/serverinfo.dart';
import 'package:http/http.dart' as http;

Future<List<ServerInfo>> fetchServerInfo() async {
  final respone = await http.get("http://10.0.2.2:8080/api/listProduct");

  if (respone.statusCode == 200) {
    var responeJson = json.decode(respone.body);
    print('1111111111');
    return (responeJson as List).map((p) => ServerInfo.fromJson(p)).toList();
  } else {
    throw Exception('Failed to load server data');
  }
}