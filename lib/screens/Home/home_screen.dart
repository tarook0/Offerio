import 'package:flutter/material.dart';
import 'package:my_app/moudels/app_bar.dart';

import '../../constant.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Text('home', style: kTitleStyle),
      ),
    );
  }
}
