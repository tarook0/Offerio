// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

final Color charcoal = Color(0xff264653);
final Color persian = Color(0xff2A9D8F);
final Color crayoalla = Color(0xffE9C46A);
final Color sandybrown = Color(0xffF4A261);
final Color sienna = Color(0xffE76F51);
final Color white = Colors.white;
const double kPadding = 8.0;

final TextStyle kTitleStyle = TextStyle(
  fontFamily: 'Pacifico',
  fontSize: 15,
  fontWeight: FontWeight.bold,
  color: charcoal,
);

final TextStyle kDescriptionStyle = TextStyle(
  color: persian,
  fontSize: 13,
);
final String Eurl = "http://192.168.1.4:8000/api/";
//"http://192.168.1.107:8000/api/"  EDMA Url
// "http://192.168.1.4:8000/api/" TAREK Url
//  "http://10.0.2.2:8000/api/" when running on emulator

// ignore: prefer_typing_uninitialized_variables
var responsedataToken;
