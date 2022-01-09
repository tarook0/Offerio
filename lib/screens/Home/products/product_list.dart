// ignore_for_file: unused_import, file_names

import 'package:flutter/material.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/moudels/Hero.dart';
import 'package:my_app/moudels/icon-list.dart';
import 'package:my_app/moudels/search-bar.dart';
import 'package:my_app/screens/search/home_search.dart';
import 'package:my_app/screens/Home/products/ProductsApi.dart';
import 'package:my_app/screens/Home/products/product_details.dart';
import 'package:my_app/screens/Home/home_screen.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/screens/Home/products/prosplash.dart';
import 'package:my_app/screens/Home/products_api/product_details_api.dart';

import 'image_api.dart';
import 'product.dart';
import 'dart:io';

class productsList extends StatefulWidget {
  const productsList({Key? key}) : super(key: key);

  @override
  State<productsList> createState() => _productsListState();
}

class _productsListState extends State<productsList> {
  late Future<List<Products>> futurePost;

  @override
  void initState() {
    super.initState();
    futurePost = fetchPost();
    // getImage(n: imageName);
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<Products>>(
      future: futurePost,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (_, index) => _buildCard(
                '${snapshot.data![index].name}',
                '${snapshot.data![index].price}',
                '${snapshot.data![index].imgName}',
                false,
                false,
                '${snapshot.data![index].id}',
                context),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

Widget _buildCard(String name, String price, String imagePath, bool yourProduct,
    bool isFavorit, String idd, context) {
  return Padding(
    padding: const EdgeInsets.only(top: 5, bottom: 5.0, right: 5.0, left: 5.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => splashScreenpro(productID: idd),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0,
            )
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // isFavorit
                  //     ? Icon(
                  //   Icons.favorite,
                  //   color: charcoal,
                  // )
                  //     : Icon(
                  //   Icons.favorite_border,
                  //   color: charcoal,
                  // ),
                ],
              ),
            ),
            PhotoHero(photo: imagePath, width: 75.0),
            const SizedBox(
              height: 7.0,
            ),
            Text(
              price,
              // style: kDescriptionStyle2,
            ),
            Text(
              name,
              style: kDescriptionStyle,
            ),
            Padding(
              padding: EdgeInsets.all(kPadding),
              child: Container(
                color: charcoal,
                height: 1.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 5.0,
                right: 5.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Details'),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
