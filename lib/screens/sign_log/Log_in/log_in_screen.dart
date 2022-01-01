// ignore_for_file: prefer_const_constructors
// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/screens/sign_log/Log_in/logInApi.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;
  @override
  final _formkey1 = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          //constraints: BoxConstraints.expand(),
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/backgroundlogin.png'),
                fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: SafeArea(
                  child: Form(
                key: _formkey1,
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Welcome ',
                        style: TextStyle(
                          fontSize: 33,
                          color: charcoal,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 100,
                        ),
                        child: Text(
                          'back !',
                          style: TextStyle(
                            fontSize: 33,
                            color: charcoal,
                            fontFamily: 'Pacifico',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Log in  ',
                        style: TextStyle(
                          fontSize: 28,
                          color: charcoal,
                          fontFamily: 'EBGaramond',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: TextFormField(
                          controller: emailController,
                          cursorColor: Colors.grey,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'email',
                            hintStyle: TextStyle(
                              fontFamily: 'EBGaramond',
                              fontSize: 16.5,
                            ),
                            suffixIcon: Icon(
                              Icons.account_box,
                              color: Colors.black38,
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
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: TextFormField(
                          obscureText: _obscureText,
                          controller: passwordController,
                          cursorColor: Colors.grey,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontFamily: 'EBGaramond',
                              fontSize: 16.5,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.black38,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: charcoal,
                              width: 2,
                            )),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'please enter your password';
                            } else if (value.isNotEmpty &&
                                (value.length < 6 || value.length > 10)) {
                              return 'password should be 6 to 10 characters';
                            } else
                              return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 120,
                      ),
                      Center(
                        child: OutlinedButton(
                          onPressed: () {
                            if (!_formkey1.currentState.validate()) {
                              return;
                            } else {
                              setState(() {
                                // ignore: unrelated_type_equality_checks
                                postdata(
                                    email: emailController.text,
                                    password: passwordController.text);
                                Navigator.pushNamed(context, 'blabla');
                              });
                            }
                          },
                          style: OutlinedButton.styleFrom(
                              minimumSize: Size(100, 35),
                              side: BorderSide(width: 1.5, color: white),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              color: white,
                              fontSize: 17.5,
                              fontFamily: 'EBGaramond',
                            ),
                          ),
                        ),
                      ),
                    ]),
              )),
            ),
          ),
        ),
      ],
    );
  }
}
