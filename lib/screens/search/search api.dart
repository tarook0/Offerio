// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

import '../../constant.dart';

SearchRequest searchRequestFromJson(String str) =>
    SearchRequest.fromJson(json.decode(str));

String searchRequestToJson(SearchRequest data) => json.encode(data.toJson());

class SearchRequest {
  SearchRequest({
    required this.searchBy,
    required this.keyword,
  });

  String searchBy;
  String keyword;

  factory SearchRequest.fromJson(Map<String, dynamic> json) => SearchRequest(
        searchBy: json["searchBy"],
        keyword: json["keyword"],
      );

  Map<String, dynamic> toJson() => {
        "searchBy": searchBy,
        "keyword": keyword,
      };
}

SearchForProducts searchForProductsFromJson(String str) =>
    SearchForProducts.fromJson(json.decode(str));

String searchForProductsToJson(SearchForProducts data) =>
    json.encode(data.toJson());

class SearchForProducts {
  SearchForProducts({
    required this.msg,
    required this.num,
    required this.items,
  });

  String msg;
  int num;
  List<Item> items;

  factory SearchForProducts.fromJson(Map<String, dynamic> json) =>
      SearchForProducts(
        msg: json["msg"],
        num: json["num"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "msg": msg,
        "num": num,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.userId,
    required this.categoryId,
    required this.imgName,
    required this.price,
  });

  int id;
  String name;
  String description;
  String userId;
  String categoryId;
  String imgName;
  String price;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        userId: json["user_id"],
        categoryId: json["category_id"],
        imgName: json["imgName"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "user_id": userId,
        "category_id": categoryId,
        "imgName": imgName,
        "price": price,
      };
}

Future<List<Item>> getcategorydata({required String idcategory}) async {
  final searchResponse =
      await http.post(Uri.parse(Eurl + "search"), headers: <String, String>{
    'Charset': 'utf-8',
<<<<<<< HEAD
  }, body: {
    'searchBy': 'category_id',
    'Keyword': idcategory,
  });

=======
    "Content-Type": "application/json",
  },
  body:jsonEncode({
    'searchBy':'category_id',
    'keyword': "$idcategory",
  }),
  );
  print(searchResponse.statusCode);
>>>>>>> bbd4d2c4ad7add803cafe6818945eb29cd673a65
  if (searchResponse.statusCode == 200) {
    final parsed = json.decode(searchResponse.body);
    final c = parsed['items'].cast<Map<String, dynamic>>();
    return c.map<Item>((json) => Item.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}
