import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../constant.dart';

Future logout() async{
  final logoutresponse = await http.post (Uri.parse(Eurl+"logout"),
    headers: {
      "Authorization" : responsedataToken,
      "Accept": "application/json",
      'Charset': 'utf-8',
    },


  );
  print(logoutresponse.statusCode);
}