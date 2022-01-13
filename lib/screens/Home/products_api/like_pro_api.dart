import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../constant.dart';


Future likeProduct({required productID,}) async{
try{
  final likeresponse = await http.post(Uri.parse(Eurl +"like"),
  headers: <String,String>{
    "Authorization": "Bearer $responsedataToken",
    "Accept": "application/json",
    "Content-Type": "application/json",
  },
  body: jsonEncode({
        "products_id" :productID,
       })

  );
  print(likeresponse.statusCode);

}
catch(error){
  print(error.toString());

}}