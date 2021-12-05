// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:line_icons/line_icons.dart';

import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Shop',
      theme: ThemeData.dark(),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
