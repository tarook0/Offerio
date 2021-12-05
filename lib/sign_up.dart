import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          //constraints: BoxConstraints.expand(),
          width: double.infinity,
          decoration: BoxDecoration(

            image: DecorationImage(image: AssetImage('images/background3.png'),
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
                    SizedBox( height:45,),
                    Text(
                      'Create new account',
                      style:TextStyle(
                        fontSize: 30,
                        fontFamily: 'Pacifico',
                        color:Color(0xff264653),
                      ),
                    ),
                    SizedBox(height:40,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,),
                      child: TextField(
                        cursorColor: Colors.grey,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontFamily: 'EBGaramond',
                            fontSize: 16.5,
                          ),
                          prefixIcon:Icon( Icons.email,
                            color: Color(0xff264653),),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color:Color(0xff264653),width: 2,)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 4,),
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
                          prefixIcon:Icon( Icons.account_box,
                            color:Color(0xff264653),),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color:Color(0xff264653),width: 2,)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 4,),
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
                          prefixIcon:Icon( Icons.visibility,
                            color: Color(0xff264653),),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color:Color(0xff264653),width: 2,)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 4,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,),
                      child: TextField(
                        cursorColor: Colors.grey,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'PhoneNumber',
                          hintStyle: TextStyle(
                            fontFamily: 'EBGaramond',
                            fontSize: 16.5,
                          ),
                          prefixIcon:Icon( Icons.phone,
                            color:Color(0xff264653),),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color:Color(0xff264653),width: 2,)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 18,),
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
                          'Sign up',
                          style: TextStyle(
                            color: Color( 0xff264653),
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
      ],);

  }
}
