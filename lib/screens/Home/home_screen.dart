// ignore_for_file: avoid_print, unnecessary_cast

import 'package:flutter/material.dart';
import 'package:my_app/back-to-front/products-handler.dart';
import 'package:my_app/moudels/Hero.dart';
import 'package:my_app/moudels/app_bar.dart';
import 'package:my_app/moudels/icon-list.dart';
import 'package:my_app/moudels/search-bar.dart';
import 'package:my_app/screens/Home/products/ProductsApi.dart';
import 'package:my_app/screens/Home/products/image_api.dart';
import 'package:my_app/screens/Home/products/product.dart';
import 'package:my_app/screens/Home/products/product_details.dart';
import 'package:my_app/screens/Home/products/product_list.dart';
import 'package:my_app/screens/Profile/profile_api.dart';
import '../../constant.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  // void initState() {
  //   super.initState();
  //   getUserdata();
  // }

  // void getProducts() {
  //   serverHandler().getProduct().then((value) => print(value));
  // }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          buildSearchBar(),
          buildIconList(),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15.0),
            width: MediaQuery.of(context).size.width - 80,
            height: MediaQuery.of(context).size.height - 80,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                productsList(),
                productsList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
