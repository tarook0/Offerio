import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../constant.dart';

Future editPro ({required String E1,required String name,
  required String desc,
  required String contact,
  required String amount,
  required String firstprice,
  required String secondprice,
  required String thirdprice,
  required String forthprice,
  required String timestamp3,
  required String timestamp2,
  required String timestamp1,}) async {
  final editresponse= await http.patch(Uri.parse(Eurl +"products/$E1"),
  headers:<String,String>{
    "Content-Type": "application/json",
    "Authorization": "Bearer $responsedataToken",
    "Accept": "application/json",
    //'Charset': 'utf-8',
      },
      body: jsonEncode({
        "name": name,
        "description": desc,
        "contact": contact,
        "amount": amount,
        "timestamp-1": timestamp1,
        "timestamp-2": timestamp2,
        "timestamp-3": timestamp3,
        "price-1": firstprice,
        "price-2": secondprice,
        "price-3": thirdprice,
        "price-4": forthprice,
      }),

  );
  print(editresponse.statusCode);
}