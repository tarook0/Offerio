// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import '../constant.dart';

Widget buildSearchBar() => Padding(
      padding: const EdgeInsets.all(2 * kPadding),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'search for product or profile',
            fillColor: Colors.black.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.search),
            focusColor: persian,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 0.0,
              horizontal: kPadding,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none,
            )),
      ),
    );
