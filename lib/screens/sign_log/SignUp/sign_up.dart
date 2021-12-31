// ignore_for_file: prefer_const_constructors
// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/screens/sign_log/SignUp/signup_api.dart';
import 'package:http/http.dart' as http;

TextEditingController nameController=TextEditingController();
TextEditingController emailController=TextEditingController();
TextEditingController passwordController=TextEditingController();
TextEditingController confirmPasswordController=TextEditingController();
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  final _formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          //constraints: BoxConstraints.expand(),
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background3.png'), fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 45,
                      ),
                      Text(
                        'Create new account',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Pacifico',
                          color: charcoal,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          keyboardType: TextInputType.emailAddress,
                          controller:emailController,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              fontFamily: 'EBGaramond',
                              fontSize: 16.5,
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xff264653),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: charcoal,
                              width: 2,
                            )),
                          ),
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'please enter email';
                            } else if (!RegExp(
                                    "^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})")
                                .hasMatch(value)) {
                              return 'email is not correct';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          controller:nameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'UserName',
                            hintStyle: TextStyle(
                              fontFamily: 'EBGaramond',
                              fontSize: 16.5,
                            ),
                            prefixIcon: Icon(
                              Icons.account_box,
                              color: charcoal,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: charcoal,
                              width: 2,
                            )),
                          ),
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'please enter name';
                            } else if (value.isNotEmpty &&
                                (value.length < 4 || value.length > 8)) {
                              return 'username should be 4 to 8 letters';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: TextFormField(
                          obscureText: true,
                          controller:passwordController,
                          cursorColor: Colors.grey,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontFamily: 'EBGaramond',
                              fontSize: 16.5,
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: charcoal,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: charcoal,
                              width: 2,
                            )),
                          ),
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'please enter password';
                            }
                            if (value.isNotEmpty &&
                                (value.length < 6 || value.length > 10)) {
                              return 'please enter 6 to 10 characters';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          controller:confirmPasswordController,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'confirm password',
                            hintStyle: TextStyle(
                              fontFamily: 'EBGaramond',
                              fontSize: 16.5,
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: charcoal,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: charcoal,
                              width: 2,
                            )),
                          ),
                          validator: (String value) {
                            if (value.isNotEmpty &&
                                (value.length < 6 || value.length > 10)) {
                              return 'please enter 6 to 10 characters';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          start: 18,
                        ),
                        child: OutlinedButton(
                          onPressed: () {
                            if (!_formkey.currentState.validate()) {
                              return;
                            } else { setState(() {
                              postdata(name: nameController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                                  password_confirmation: confirmPasswordController
                                      .text);
                            });

                            }
                            //Navigator.pushNamed(context, 'fourth');
                          },
                          style: OutlinedButton.styleFrom(
                              minimumSize: Size(100, 35),
                              side: BorderSide(width: 1.5, color: charcoal),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: charcoal,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

