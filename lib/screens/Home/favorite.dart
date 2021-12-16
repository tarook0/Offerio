// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/moudels/app_bar.dart';
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
      appBar: buildAppBar(),
      body: Center(
        child: Text('FAVORIT', style: kTitleStyle),
      ),
    );
  }
}
