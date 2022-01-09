import 'package:flutter/material.dart';
import 'package:my_app/moudels/icon-list.dart';
import 'package:my_app/moudels/search-bar.dart';
import '../../moudels/navBar.dart';
import '../../constant.dart';
import '../../moudels/app_bar.dart';
import 'add_a_product/add_product.dart';
import '../search/home_search.dart';
import '../Profile/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
        title: Text('offerio', style: kTitleStyle),
        centerTitle: false,
        backgroundColor: charcoal,
      ),
      bottomNavigationBar: const navBar(),
    );
  }
}
