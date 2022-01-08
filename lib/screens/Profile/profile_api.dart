import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;
import 'package:my_app/moudels/product.dart';

import '../../constant.dart';

import 'dart:convert';

GetProfile getProfileFromJson(String str) => GetProfile.fromJson(json.decode(str));

String getProfileToJson(GetProfile data) => json.encode(data.toJson());

class GetProfile {
  GetProfile({
    required this.id,
    required this.name,
    required this.email,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    required this.products,
    required this.comments,
  });

  int id;
  String name;
  String email;
  dynamic emailVerifiedAt;
  dynamic createdAt;
  dynamic updatedAt;
  List<Product> products;
  List<Comment> comments;

  factory GetProfile.fromJson(Map<String, dynamic> json) => GetProfile(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    comments: List<Comment>.from(json["comments"].map((x) => Comment.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "email_verified_at": emailVerifiedAt,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
    "comments": List<dynamic>.from(comments.map((x) => x.toJson())),
  };
}

class Comment {
  Comment({
    required this.id,
    required this.userId,
    required this.productsId,
    required this.comment,
    required this.commenter,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String userId;
  String productsId;
  String comment;
  String commenter;
  DateTime createdAt;
  DateTime updatedAt;

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
    id: json["id"],
    userId: json["user_id"],
    productsId: json["products_id"],
    comment: json["comment"],
    commenter: json["commenter"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "products_id": productsId,
    "comment": comment,
    "commenter": commenter,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
class Product {
  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.userId,
    required this.categoryId,
    required this.contact,
    required this.imgName,
    required this.amount,
    required this.timestamp1,
    required this.timestamp2,
    required this.timestamp3,
    required this.timestamp4,
    required this.price1,
    required this.price2,
    required this.price3,
    required this.price4,
    required this.views,
  });

  int id;
  String name;
  String description;
  String userId;
  String categoryId;
  String contact;
  String imgName;
  String amount;
  String timestamp1;
  String timestamp2;
  String timestamp3;
  String timestamp4;
  String price1;
  String price2;
  String price3;
  String price4;
  String views;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    userId: json["user_id"],
    categoryId: json["category_id"],
    contact: json["contact"],
    imgName: json["imgName"],
    amount: json["amount"],
    timestamp1: json["timestamp-1"],
    timestamp2: json["timestamp-2"],
    timestamp3: json["timestamp-3"],
    timestamp4: json["timestamp-4"],
    price1: json["price-1"],
    price2: json["price-2"],
    price3: json["price-3"],
    price4: json["price-4"],
    views: json["views"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "user_id": userId,
    "category_id": categoryId,
    "contact": contact,
    "imgName": imgName,
    "amount": amount,
    "timestamp-1": timestamp1,
    "timestamp-2": timestamp2,
    "timestamp-3": timestamp3,
    "timestamp-4": timestamp4,
    "price-1": price1,
    "price-2": price2,
    "price-3": price3,
    "price-4": price4,
    "views": views,
  };
}

// var PRdata;
// var DecodedPRdata;
// var username = "none";
// var emailaddress= "none";


Future <List<GetProfile>> getUserdata() async{
  final profileResponse = await http.get(Uri.parse(Eurl+"profile"),headers: <String,String>{
    "Authorization" :  "Bearer $responsedataToken",
    'Charset': 'utf-8',
    "Content-Type": "application/json",
  });

  if (profileResponse.statusCode == 200) {
    final parsed = json.decode(profileResponse.body).cast<Map<String, dynamic>>();

    return parsed.map<GetProfile>((json) => GetProfile.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}
  //print(profileResponse.statusCode);
//   if (profileResponse.statusCode==200){
//
//     PRdata = profileResponse.body;
//     DecodedPRdata =jsonDecode(PRdata);
//     username = DecodedPRdata['name'];
//     emailaddress = DecodedPRdata['email'];
//   }
//
//
// }