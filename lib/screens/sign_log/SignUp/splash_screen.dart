import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/screens/Home/home.dart';
//import 'package:my_app/screens/sign_log/Log_in/logInApi.dart';
//import 'package:my_app/screens/sign_log/Log_in/log_in_screen.dart';
import 'package:my_app/main.dart';
import 'sign_up.dart';
import 'signup_api.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();

    postdata(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        password_confirmation: confirmPasswordController.text);

    Timer(const Duration(seconds: 8), () {
      if (y == 201) {
        Navigator.pushNamed(context, 'fourth');
      } else if (y != 201) {
        Navigator.pushNamed(context, 'third');
      }
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [charcoal, persian],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: const [
                // Image.asset(
                //   'assets/images/grocery.png',
                //   width: 300.0,
                //   height: 300.0,
                // ),
                Text(
                  "A whole Offerio store..\n at your fingertips",
                  style: TextStyle(
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                    fontSize: 23,
                    fontFamily: 'EBGaramond',
                  ),
                ),
              ],
            ),
            SpinKitThreeBounce(color:  sandybrown,size: 50,),
          ],
        ),
      ),
    );
  }
}
