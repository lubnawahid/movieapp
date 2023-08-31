import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../screen/login.dart';

Future<void> registration(String  username,String password,BuildContext context) async {
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
            builder: (context) => Login()),
      );
    } else {
      ScaffoldMessenger(child: SnackBar(content: Text('invalid username or password')));
    }
  }
}