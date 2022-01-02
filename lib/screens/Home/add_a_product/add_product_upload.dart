import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../constant.dart';

void postUserdata({
  required String name,
  required String desc,
  required String contact,
  required String amount,
  required String image,
  required String date,
  required String category,
  required String firstprice,
  required String secondprice,
  required String thirdprice,
  required String forthprice,
  required String date3,
  required String date2,
  required String date1,
}) async {
  final request = await http.MultipartRequest(
    "post",
    Uri.parse(Eurl + "products"),
  );
  request.files.add(await http.MultipartFile.fromPath('image', image));

  request.headers.addAll({
    "Authorization": "Bearer $responsedataToken",
    "Content-Type": "application/json",
    "Accept": "application/json",
    'Charset': 'utf-8',
  });

  request.fields['name'] = name;
  request.fields['contact'] = contact;
  request.fields['amount'] = amount;
  request.fields['description'] = desc;
  request.fields['price-1'] = firstprice;
  request.fields['price-2'] = secondprice;
  request.fields['price-3'] = thirdprice;
  request.fields['price-4'] = forthprice;
  request.fields['category_id'] = category;
  request.fields['timestamp-4'] = date;
  request.fields['timestamp-3'] = date3;
  request.fields['timestamp-2'] = date2;
  request.fields['timestamp-1'] = date1;

  var res = await request.send();
  print(res.statusCode);
}
