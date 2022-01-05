// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/moudels/app_bar.dart';
import 'package:my_app/moudels/navBar.dart';

class product_detail extends StatelessWidget {
  final assetPath, productPrice, productName;
  product_detail({this.assetPath, this.productName, this.productPrice});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('offerio',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'bla bla',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
                color: charcoal,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          // Hero(
          //   tag: assetPath,
          //   child: Image.asset(assetPath,
          //       height: 150.0, width: 100.0, fit: BoxFit.contain),
          // ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: charcoal,
              ),
              child: const Center(
                child: Text(
                  'Contucts us',
                  style: TextStyle(
                    fontFamily: 'VarelaRound',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const navBar(),
    );
  }
}
