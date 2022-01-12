import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../constant.dart';

var PRdata;
var DecodedPRdata;
var username = "none";
var emailaddress= "none";

Future  Profileinfo() async{
  final profilein = await http.get(Uri.parse(Eurl+"profile"),headers: <String,String>{
    "Authorization" :  "Bearer $responsedataToken",
    'Charset': 'utf-8',
    "Content-Type": "application/json",
  });
  print(profilein.statusCode);
  if (profilein.statusCode==200){

    PRdata = profilein.body;
    DecodedPRdata =jsonDecode(PRdata);
    username = DecodedPRdata['name'];
    emailaddress = DecodedPRdata['email'];
  }}