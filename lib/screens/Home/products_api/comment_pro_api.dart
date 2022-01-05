import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;

import '../../../constant.dart';

Future commentproduct({required productID, required comment}) async{
  try{
    final commentresponse = await http.post(Uri.parse(Eurl +"comment"),
    headers: <String,String>{
      "Content-Type": "application/json",
      "Authorization": "Bearer $responsedataToken",
      "Accept": "application/json",
      //'Charset': 'utf-8',
    },
      body: {
      "products_id" :productID,
        "comment" : comment,
      }
    );
  }
  catch(ero){
    print(ero.toString());
  }
}