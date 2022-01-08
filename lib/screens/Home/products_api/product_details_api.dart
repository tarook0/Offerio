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
var imgnamee;
var amount;
var firstdis;
var seconddis;
var thirddis;
var expiree;
var z;
var aprice;
var bprice;
var cprice;
var dprice;
var ide;

Future getdetails({required String proid}) async{
  final detailsresponse = await http.get(Uri.parse(Eurl +"products/$proid"),  //add the product id in the link instead of {id}
  headers: <String,String>{
    "Content-Type": "application/json",
    "Authorization": "Bearer $responsedataToken",
    "Accept": "application/json",
    //'Charset': 'utf-8',
      }

  );
  z=detailsresponse.statusCode;
  print(detailsresponse.statusCode);
  if(detailsresponse.statusCode==200){

    detailsbody=detailsresponse.body;
    DEdetailsbody = jsonDecode(detailsbody);
    ide=DEdetailsbody["id"];
    name=DEdetailsbody["name"];
    description=DEdetailsbody["description"];
    category=DEdetailsbody["category-id"];
    contact=DEdetailsbody["contact"];
    imgnamee=DEdetailsbody["imgName"];
    amount=DEdetailsbody["amount"];
    firstdis=DEdetailsbody[ "timestamp-1"];
    seconddis=DEdetailsbody[ "timestamp-2"];
    thirddis=DEdetailsbody[ "timestamp-3"];
    expiree=DEdetailsbody[ "timestamp-4"];
    aprice=DEdetailsbody["price-1"];
    bprice=DEdetailsbody["price-2"];
    cprice=DEdetailsbody["price-3"];
    dprice=DEdetailsbody["price-4"];
  }
}