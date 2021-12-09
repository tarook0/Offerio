// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import '../constant.dart';

AppBar buildAppBar() => AppBar(
      backgroundColor: persian,
      centerTitle: false,
      title: Text(
        'Offero',
        // style: kTitleStyle,
      ),
      actions: [
        Padding(
          padding: EdgeInsets.all(18.0),
        ),
      ],
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(160)),
    );
