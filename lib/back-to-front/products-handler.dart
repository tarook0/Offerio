// ignore: file_names
// ignore_for_file: unused_local_variable, avoid_print, file_names, unused_field
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../moudels/product.dart';

class serverHandler {
  final String _baseUrl = "";
  //get the list of products
  Future<List<Product>> getProduct() async {
    try {
      List<Product> products = [];
      http.Response response =
          await http.get(Uri.parse('$_baseUrl/api/products'));
      List productsList = (jsonDecode(response.body))['products'];
      for (Map m in productsList) {
        products.add(Product.fromMap(m));
      }
      return products;
    } catch (e) {
      print('server Handler:error:' + e.toString());
      rethrow;
    }
  }
}
