// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'screens/Home/home.dart';
import 'screens/sign_log/log_in_screen.dart';
import 'screens/sign_log/sign_up.dart';
import 'screens/sign_log/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Offerio',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'one',
      routes: {
        'one': (context) => WelcomeScreen(),
        'second': (context) => Login(),
        'third': (context) => Signup(),
        'fourth': (context) => Home(),
      },
    );
  }
}
