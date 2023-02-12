//FlutterアプリケーションからNode.jsサーバーにデータを要求するサンプルコード：

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> fetchData() async {
  var url = Uri.https('http://localhost:3000/data');
  final response = await http.get(url);//'https://localhost:3000/data');
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load data');
  }
}
