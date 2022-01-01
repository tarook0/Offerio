// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/constant.dart';

Future<int> postdata(
    {required String name,
    required String email,
    required String password,
    required String password_confirmation}) async {
  final response = await http.post(
    //if running on real device keep it like this "http://192.168.1.107:8000/api/signup"
    //if running on emulator keep it like this "https://10.0.2.2:8000/api/signup" (not sure if you can remove the s or not)
    Uri.parse("http://10.0.2.2:8000/api/signup"),
    headers: <String, String>{
      "Content-Type": "application/json",
      "Accept": "application/json",
      'Charset': 'utf-8',
    },
    body: jsonEncode(
      {
        "name": name,
        "email": email,
        "password": password,
        "password_confirmation": password_confirmation,
      },
    ),
  );
  x = response.statusCode;
  print((response.body));
  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return response.statusCode;
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}
