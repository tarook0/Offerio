// ignore_for_file: file_names

import 'package:my_app/constant.dart';
import 'package:my_app/screens/Home/products/product.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/screens/Home/products/product_list.dart';
import 'dart:async';
import 'dart:convert';

import 'image_api.dart';

// @override
// void initState() {
//   getImage(n: imageName);
// }

Future<List<Products>> fetchPost() async {
  final response = await http.get(Uri.parse(Eurl + 'products'));

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    return parsed.map<Products>((json) => Products.fromMap(json)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}
