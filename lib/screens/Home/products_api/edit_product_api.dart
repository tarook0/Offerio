import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../constant.dart';

Future editPro () async {
  final editresponse= await http.patch(Uri.parse(Eurl +"products/{id}"),
  headers:<String,String>{
    "Content-Type": "application/json",
    "Authorization": "Bearer $responsedataToken",
    "Accept": "application/json",
    //'Charset': 'utf-8',
      },
      body: jsonEncode({
      // "name": name,
      // "email": email,
      // "password": password,
      // "password_confirmation": password_confirmation,
      }),
  );

}