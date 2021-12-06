// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../constant.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorit'),
      ),
      body: Center(
        child: Text('Favorit', style: kTitleStyle),
      ),
    );
  }
}
