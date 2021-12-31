import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



void postUserdata ({ required String name, required String desc, required String contact, required String amount,
  required String image,
  required String date,
  required String category,
  required String firstprice,required String secondprice,required String thirdprice,required String forthprice,

})
async{


  final request = await http.MultipartRequest("post",Uri.parse("http://127.0.0.1:8000/api/products"));
  request.files.add(await http.MultipartFile.fromPath('image', image));

  request.fields['name']= name;
  request.fields['contact']= contact;
  request.fields['amount']= amount;
  request.fields['description']= desc;
  request.fields['price-1']= firstprice;
  request.fields['price-2']= secondprice;
  request.fields['price-3']= thirdprice;
  request.fields['price-4']= forthprice;
  request.fields['category_id']= category;
  request.fields['timestamp-4']= date;
  var res = await request.send();

}