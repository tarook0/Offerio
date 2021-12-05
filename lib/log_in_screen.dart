// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          //constraints: BoxConstraints.expand(),
          width: double.infinity,
          decoration: BoxDecoration(

            image: DecorationImage(image: AssetImage('images/background2.png'),
                fit:BoxFit.cover ),

          ),),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: SafeArea(

                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment:MainAxisAlignment.start ,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 50,),
                        Text('Welcome ',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontFamily: 'Pacifico',
                          ),),
                        Container(
                          margin: EdgeInsets.only(left: 100,),
                          child: Text('back !',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontFamily: 'Pacifico',
                            ),),
                        ),
                        SizedBox(height: 68,),
                        Text('Log in  ',
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontFamily: 'EBGaramond',
                          ),),
                        SizedBox(height: 25,),


                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,),
                          child: TextField(
                            cursorColor: Colors.grey,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'UserName',
                              hintStyle: TextStyle(
                                fontFamily: 'EBGaramond',
                                fontSize: 16.5,
                              ),
                              suffixIcon:Icon( Icons.account_box,
                                color: Colors.white38,),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color:Color(0xff264653),width: 2,)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,),
                          child: TextField(
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
                              suffixIcon:Icon( Icons.visibility,
                                color: Colors.white38,),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color:Color(0xff264653),width: 2,)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 85,),
                        Center(
                          child: OutlinedButton(
                            onPressed: () {

                            },

                            style: OutlinedButton.styleFrom(
                                minimumSize: Size(100,35),
                                side: BorderSide(width: 1.5,color:  Color(0xff264653)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                )
                            ),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Color( 0xff264653),
                                fontSize: 16,
                              ),
                            ),


                          ),
                        ),
                      ]
                  )
              ),
            ),
          ),
        ),
      ],
    );
  }
}

