import 'dart:convert';
import'package:flutter/material.dart';
import 'package:http/http.dart' as http;




void postdata ({required String name ,required String email ,
  required String password ,
  required String password_confirmation}) async {


  final response = await http.post(
    Uri.parse("https://127.0.0.1:8000/api/products"), body: {
    "name": name,
    "email": email,
    "password": password,
    "password_confirmation": password_confirmation,
  },
    headers: <String, String>{
      'Content-Type': 'application/x-www-form-urlencoded',
      'Accept': "*/*",
      'connection': 'keep-alive',
      'Accept-Encoding' : 'gzip, deflate, br',
    },

  );
  print(response.body);
}
