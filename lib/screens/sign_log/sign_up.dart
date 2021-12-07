// ignore_for_file: prefer_const_constructors
// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Signup extends StatefulWidget {


  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  final _formkey =GlobalKey<FormState>();
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
                          color: Color(0xff264653),
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
                                  color: Color(0xff264653),
                                  width: 2,
                                )),
                          ),
                          validator: (String  value){
                            if (value.isEmpty ){
                              return 'please enter email';
                            }
                           else if (!RegExp("^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})").hasMatch(value)){
                              return 'email is not correct';
                            }
                            else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 4,) ,
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: TextFormField(
                          cursorColor: Colors.grey,
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
                              color: Color(0xff264653),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xff264653),
                              width: 2,
                            )),
                          ),
                          validator: (String  value){
                            if (value.isEmpty ){
                              return 'please enter name';
                            }
                            else if (value.isNotEmpty && (value.length<4 || value.length>8)){
                              return 'username should be 4 to 8 letters';
                            }
                            else {
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
                              Icons.visibility,
                              color: Color(0xff264653),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xff264653),
                              width: 2,
                            )),
                          ),
                          validator: (String  value){
                            if (value.isEmpty ){
                              return 'please enter password';
                            }
                            if (value.isNotEmpty && (value.length<6 || value.length>10)){
                              return 'please enter 6 to 10 characters';
                            }
                            else {
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
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'PhoneNumber',
                            hintStyle: TextStyle(
                              fontFamily: 'EBGaramond',
                              fontSize: 16.5,
                            ),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Color(0xff264653),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xff264653),
                              width: 2,
                            )),
                          ),
                          validator: (String  value){

                            if (value.isNotEmpty && (value.length<10 || value.length>10)){
                              return 'not correct';
                            }
                            else {
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
                            if (!_formkey.currentState.validate()){
                              return;
                            }
                            else
                              Navigator.pushNamed(context, 'fourth');

                          },
                          style: OutlinedButton.styleFrom(
                              minimumSize: Size(100, 35),
                              side: BorderSide(
                                  width: 1.5, color: Color(0xff264653)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Color(0xff264653),
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

class SignupTextfields extends StatelessWidget {
  SignupTextfields({  this.x, this.y});
  bool x;
  TextInputType y ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: x,
      cursorColor: Colors.grey,
      keyboardType: y,

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
          color: Color(0xff264653),
          width: 2,
        )),
      ),
    );
  }
}
