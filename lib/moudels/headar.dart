import 'package:flutter/material.dart';
import '../constant.dart';

List<Widget> buildHeader() => [
      const Padding(
        padding: EdgeInsets.only(
          left: 2 * kPadding,
          top: kPadding,
        ),
        child: Text(
          'Choose your products',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 2 * kPadding,
          vertical: kPadding,
        ),
        child: Text(
          ' Feel the Quality',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
    ];
