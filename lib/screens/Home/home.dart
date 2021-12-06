import 'package:flutter/material.dart';
import '../../moudels/navBar.dart';
import '../../constant.dart';
import 'add_product.dart';
import 'favorite.dart';
import 'profile.dart';
import 'search.dart';

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
        title: Text('offero', style: kTitleStyle),
        centerTitle: false,
        backgroundColor: persian,
      ),
      bottomNavigationBar: const navBar(),
    );
  }
}