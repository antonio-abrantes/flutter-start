/**
 * Exemplos de uso de packages para Consumo de API's REST
 */

import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:uno/uno.dart';

void main(List<String> arguments) async {
  var url = 'https://jsonplaceholder.typicode.com/posts';
  // requestwithDartNative(url);
  // requestWithHttp(url);
  // requestWithDio(url);
  requestWithUno(url);
}

void requestWithUno(String url) async {
  final uno = new Uno();
  final response = await uno(url: url, method: 'get');
  print(response.data[0]);
}

void requestWithDio(String url) async {
  final response = await new Dio().get(url);
  print(response.data);
}

void requestWithHttp(String url) async {
  final response = await http.get(Uri.parse(url));
  final body = response.body;
  final json = jsonDecode(body);

  print(json);
}

void requestwithDartNative(String url) async {
  final client = HttpClient();

  // request
  final request = await client.openUrl('get', Uri.parse(url));
  request.headers.set('content-type', 'application/json');

  // response
  final response = await request.close();
  
  // Stream de dados
  final list = <String>[];
  await for (var data in response) {
    final string = utf8.decode(data);
    list.add(string);
  }

  final body = list.join();

  print(body);

  // response.listen((data) { 
  //   final string = utf8.decode(data);
  //   list.add(string);
  //   print(string);
  // }, onDone: () {
  //   print(list);
  // });
}
