import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/screens/Home/home.dart';

import 'SignUp/sign_up.dart';
import 'SignUp/signup_api.dart';

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

    Timer(Duration(seconds: 10), () {
      if (x == 201) {
        () => Navigator.pushNamed(context, 'fourth');
        // () => Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => 'fourth',
        //   ),
        // ),
      } else {
        print("erorr");
      }
    });
  }

  @override
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
                  "A whole offerio store\n at your fingertips",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
