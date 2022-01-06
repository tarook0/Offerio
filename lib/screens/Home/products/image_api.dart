import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/screens/Home/products/product_list.dart';
import 'dart:io';

import '../../../constant.dart';
var imageFile;
 Future getImage({required String n}) async{
   try{
    final imageResponse = await http.get(
      Uri.parse(Eurl + "images/$n"),
      headers: <String, String>{
        "Content-Type": "multipart/form-data",
        "Accept": "application/json"
      },
    );
    imageFile =imageResponse.body;
  }
  catch(ert){
     print(ert.toString());
  }
}
