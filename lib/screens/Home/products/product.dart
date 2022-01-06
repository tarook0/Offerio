// To parse this JSON data, do
//
//     final products = productsFromMap(jsonString);

import 'dart:convert';

List<Products> productsFromMap(String str) =>
    List<Products>.from(json.decode(str).map((x) => Products.fromMap(x)));

String productsToMap(List<Products> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Products {
  final int? id;
  final String? name;
  final String? description;
  final String? userId;
  final String? categoryId;
  final String? imgName;
  final int? likeesCount;
  final String? price;
  Products({
    required this.id,
    required this.name,
    required this.description,
    required this.userId,
    required this.categoryId,
    required this.imgName,
    required this.likeesCount,
    required this.price,
  });
  factory Products.fromMap(Map<dynamic, dynamic> json) => Products(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        userId: json["user_id"],
        categoryId: json["category_id"],
        imgName: json["imgName"],
        likeesCount: json["likeesCount"],
        price: json["price"],
      );

  Map<dynamic, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "user_id": userId,
        "category_id": categoryId,
        "imgName": imgName,
        "likeesCount": likeesCount,
        "price": price,
      };
}
