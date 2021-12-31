// ignore: file_names
// ignore_for_file: non_constant_identifier_names, unused_import, file_names

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void postdata({
  required String email,
  required String password,
}) async {
  final response = await http.post(Uri.parse("http://10.0.2.2:8000/api/login"),
      headers: <String, String>{
        'Charset': 'utf-8',
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(
        {
          "email": email,
          "password": password,
        },
      ));
  print(response.statusCode);
  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    // Within the `FirstScreen` widget

  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}
