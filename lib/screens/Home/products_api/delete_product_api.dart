import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../constant.dart';

Future<int> deletepro({required String d1}) async {
  try{
    final deleteresponse = await http.delete(Uri.parse(Eurl+"products/$d1"), //add the product id in the link instead of {id}
      headers: <String,String>{
        "Content-Type": "application/json",
        "Authorization": "Bearer $responsedataToken",
        "Accept": "application/json",
        //'Charset': 'utf-8',
      }
    );
    //print(deleteresponse.statusCode);
   return deleteresponse.statusCode;
  }
  catch(error1){
    print(error1.toString());
    return 0;
  }
}
