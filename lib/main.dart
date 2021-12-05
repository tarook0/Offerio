import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'log_in_screen.dart';
import 'sign_up.dart';
import 'profile.dart';

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
      initialRoute:'forth' ,
      routes: {
        'one' :(context) => WelcomeScreen(),
        'second':(context) =>Login(),
        'third' :(context) => Signup(),
        'forth'  :(context) => Profile(),
      },
    );
  }
}