import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../constant.dart';

var detailsbody;
var DEdetailsbody;
var name;
var description ;
var category;
var contact;


Future getdetails() async{
  final detailsresponse = await http.get(Uri.parse(Eurl + "products/{id}"),  //add the product id in the link instead of {id}
  headers: <String,String>{
    "Content-Type": "application/json",
    "Authorization": "Bearer $responsedataToken",
    "Accept": "application/json",
    //'Charset': 'utf-8',
      }

  );
  print(detailsresponse.statusCode);
  if(detailsresponse.statusCode==200){
    detailsbody=detailsresponse.body;
    DEdetailsbody = jsonDecode(detailsbody);
    name=DEdetailsbody["name"];
    description=DEdetailsbody["description"];
    category=DEdetailsbody["category-id"];
    contact=DEdetailsbody["contact"];
  }
}