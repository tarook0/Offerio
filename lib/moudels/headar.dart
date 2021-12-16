import 'package:flutter/material.dart';
import '../constant.dart';

List<Widget> buildHeader() => [
      const Padding(
        padding: EdgeInsets.only(

          top: kPadding,
        ),
        child: Center(
          child: Text(
            'Search',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'EBGaramond',
            ),
          ),
        ),
      ),

    ];
