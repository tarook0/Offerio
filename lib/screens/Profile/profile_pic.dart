import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;

import '../../constant.dart';

Future addprofileimage ({required String imageprofile}) async {
  try{
    final profilepicResponse = await http.MultipartRequest(
      "POST",
      Uri.parse(Eurl + "profile/picture"),
    );
    profilepicResponse.headers.addAll({
      "Authorization": "Bearer $responsedataToken",
      "Content-Type": "multipart/form-data",
      "Accept": "application/json"
    });
    profilepicResponse.files
        .add(await http.MultipartFile.fromPath('image', imageprofile));
    var resp = await profilepicResponse.send();
    print(resp.statusCode);
  }
  catch (e){
    print(e.toString());
  }
}