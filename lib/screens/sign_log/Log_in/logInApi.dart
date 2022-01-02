// ignore: file_names
// ignore_for_file: non_constant_identifier_names, unused_import, file_names, prefer_typing_uninitialized_variables

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/constant.dart';
import 'package:my_app/screens/sign_log/SignUp/signup_api.dart';

var x1;
var error1;
Future logInPostdata({
  required String email,
  required String password,
}) async {
  //if running on real device keep it like this "http://192.168.1.107:8000/api/signup"
  //if running on emulator keep it like this "https://10.0.2.2:8000/api/login" (not sure if you can remove the s or not)
  final response = await http.post(Uri.parse(EmulatorUrl + "login"),
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
  x1 = response.statusCode;
  if (response.statusCode == 201) {
    responsedataToken = jsonDecode(x)['token'];
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}
