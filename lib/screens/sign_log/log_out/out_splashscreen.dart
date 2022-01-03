// ignore_for_file: unused_import, camel_case_types, import_of_legacy_library_into_null_safe, file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/screens/Home/home.dart';
import 'package:my_app/screens/sign_log/Log_in/logInApi.dart';
import 'package:my_app/screens/sign_log/Log_in/log_in_screen.dart';
import 'dart:io' show Platform;
import 'log_out_api.dart';

class outsplashScreen extends StatefulWidget {
  const outsplashScreen({Key? key}) : super(key: key);

  @override
  _outsplashScreenState createState() => _outsplashScreenState();
}

class _outsplashScreenState extends State<outsplashScreen> {
  @override
  void initState() {
    super.initState();

    logout();
    Timer(const Duration(seconds: 5), () {
      if (exit == 200) {
        if(Platform.isAndroid){
           SystemNavigator.pop();
        }else {
          exit(0);
        }

      } else if (exit != 200) {
        Navigator.pushNamed(context, 'fourth');
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
                Text(
                  "GoodBye..",
                  style: TextStyle(
                    color: Colors.white,
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
