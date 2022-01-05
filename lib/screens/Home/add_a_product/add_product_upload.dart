import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../constant.dart';

Future postUserdata({
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
  required String timestamp3,
  required String timestamp2,
  required String timestamp1,
}) async {
  try{
    final request = await http.MultipartRequest(
      "POST",
      Uri.parse(Eurl + "products"),
    );
    request.headers.addAll({
      "Authorization": "Bearer $responsedataToken",
      "Content-Type" : "multipart/form-data",
      "Accept":"application/json"
      //"Charset": "utf-8",
      //"Accept-Encoding" : "gzip, deflate, br",
    });

    request.files.add(await http.MultipartFile.fromPath('image', image));




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
    request.fields['timestamp-3'] = timestamp3;
    request.fields['timestamp-2'] = timestamp2;
    request.fields['timestamp-1'] =timestamp1;

    var res = await request.send();
    print(res.statusCode);
    // print(timestamp1);
    // print(timestamp2);
    // print(timestamp3);
    // print(date);
    //(res.statusCode);
  }
  catch(errr){
    print (errr.toString());
  }
}
