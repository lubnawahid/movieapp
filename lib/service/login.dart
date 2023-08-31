import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../screen/home.dart';

Future<void> login(String  username,String password,BuildContext context) async {
  final Map<String, String> requestData = {
    'username': username,
    'password': password,
  };
  final responce=await http.post(Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    body: jsonEncode(requestData),
  );
  print(requestData);
  if(responce.statusCode==200) {
    final responceData = json.decode(responce.body);

    if (responceData) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Homepage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid username or password')),
      );
    }
  }
}