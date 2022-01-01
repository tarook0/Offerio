import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/screens/sign_log/SignUp/sign_up.dart';
import 'package:my_app/screens/sign_log/SignUp/signup_api.dart';


class loadingscreen extends StatefulWidget {
  const loadingscreen({Key? key}) : super(key: key);

  @override
  _loadingscreenState createState() => _loadingscreenState();
}

class _loadingscreenState extends State<loadingscreen> {
  @override

  void initState(){
    super.initState();
    postdata(name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        password_confirmation: confirmPasswordController
            .text);
    Timer(Duration(seconds: 7),(){
      if (x==201){
      Navigator.pushNamed(context, 'fourth');}
      else if(x!=201){
        Navigator.pushNamed(context, 'third');
      }
    });
  }



  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sienna.withOpacity(0.5),
    body: Center(
      child: SpinKitThreeBounce(
        color: charcoal,
        size: 100,
      ),
    ),
    );
  }
}
