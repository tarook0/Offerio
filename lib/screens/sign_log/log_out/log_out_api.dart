import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../constant.dart';

var exit;
Future logout() async {
  final logoutresponse = await http.post(
    Uri.parse(Eurl + "logout"),
    headers: {
      "Content-Type": "application/json",
      "Authorization": "Bearer $responsedataToken",
      "Accept": "application/json",
      'Charset': 'utf-8',
    },
  );
  if (logoutresponse.statusCode == 201) {}
  print(logoutresponse.statusCode);
}
