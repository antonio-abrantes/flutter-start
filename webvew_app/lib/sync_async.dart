import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:io';

Future main() async {
  final json = await fetch();
  print(json);
}

Future<Map> fetch() async {
  var url = 'https://jsonplaceholder.typicode.com/posts';
  var response = await http.get(Uri.parse(url));
  var json = jsonDecode(response.body);
  return json;
}

class Todo {
  
}