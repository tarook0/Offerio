import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;

import '../../constant.dart';
var PRdata;
var DecodedPRdata;
var username = "none";
var emailaddress= "none";


Future getUserdata() async{
  final profileResponse = await http.get(Uri.parse(Eurl+"profile"),headers: <String,String>{
    "Authorization" :  "Bearer $responsedataToken",
    'Charset': 'utf-8',
    "Content-Type": "application/json",
  });
  print(profileResponse.statusCode);
  if (profileResponse.statusCode==200){

    PRdata = profileResponse.body;
    DecodedPRdata =jsonDecode(PRdata);
    username = DecodedPRdata['name'];
    emailaddress = DecodedPRdata['email'];
  }


}