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
import 'package:my_app/screens/search/searchresults.dart';
import '../../constant.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  void initState() {
    super.initState();
    //getUserdata();
  }

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
          Padding(
            padding: const EdgeInsets.only(bottom: kPadding),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          searchresults(catIDD: '1'),
                                    ),
                                  );
                                  print('hello');
                                },
                              ),
                              backgroundImage:
                                  AssetImage('assets/icons/fruit.png'),
                              radius: 25,
                            ),
                            Text(
                              'Fruit',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          searchresults(catIDD: '2'),
                                    ),
                                  );
                                  print('hello');
                                },
                              ),
                              backgroundImage:
                                  AssetImage('assets/icons/veggies.png'),
                              radius: 25,
                            ),
                            Text(
                              'Veggies',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          searchresults(catIDD: '3'),
                                    ),
                                  );
                                  print('hello');
                                },
                              ),
                              backgroundImage:
                                  AssetImage('assets/icons/meat-icon.png'),
                              radius: 25,
                            ),
                            Text(
                              'Meat',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          searchresults(catIDD: '4'),
                                    ),
                                  );
                                  print('hello');
                                },
                              ),
                              backgroundImage:
                                  AssetImage('assets/icons/Candy-icon.png'),
                              radius: 25,
                            ),
                            Text(
                              'Candy',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          searchresults(catIDD: '5'),
                                    ),
                                  );
                                  print('hello');
                                },
                              ),
                              backgroundImage:
                                  AssetImage('assets/icons/sauce.png'),
                              radius: 25,
                            ),
                            Text(
                              'Sauce',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          searchresults(catIDD: '6'),
                                    ),
                                  );
                                  print('hello');
                                },
                              ),
                              backgroundImage: AssetImage(
                                'assets/icons/icon_1.png',
                              ),
                              radius: 25,
                            ),
                            Text(
                              'Beverages',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          searchresults(catIDD: '7'),
                                    ),
                                  );
                                  print('hello');
                                },
                              ),
                              backgroundImage:
                                  AssetImage('assets/icons/drugs.png'),
                              radius: 25,
                            ),
                            Text(
                              'Drugs',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          searchresults(catIDD: '8'),
                                    ),
                                  );
                                  print('hello');
                                },
                              ),
                              backgroundImage:
                                  AssetImage('assets/icons/icon_3.png'),
                              radius: 25,
                            ),
                            Text(
                              'Makeup',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            //color:Colors.red,
            padding: EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width - 40,
            height: MediaQuery.of(context).size.height - 10,
            child: GridView.count(
              crossAxisCount: 1,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.6,
              children: <Widget>[
                Center(child: productsList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//Widget buildIconList() =>
