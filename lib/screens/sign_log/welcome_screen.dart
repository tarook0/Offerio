// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/constant.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background1.png'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 120,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 9),
              child: Text(
                'Make money... Save money',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'EBGaramond',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 9),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'second');
                },
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(120, 42),
                    side: BorderSide(width: 1.5, color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    )),
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: white,
                    fontSize: 16,
                    fontFamily: 'EBGaramond',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 9),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'third');
                },
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(120, 42),
                    side: BorderSide(width: 1.5, color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    )),
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: white,
                    fontSize: 16,
                    fontFamily: 'EBGaramond',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
