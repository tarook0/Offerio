// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import '../constant.dart';

Widget buildSearchBar() => Padding(
      padding: const EdgeInsets.symmetric( horizontal: 12),
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          hintText: 'seacrh for product or profile',
            hintStyle: TextStyle(
              fontFamily: 'EBGaramond',
              fontSize: 17,
            ),

            prefixIcon: Icon(Icons.search,color: charcoal,),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: charcoal,
              ),

            ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: charcoal,
            width: 1.5,
          )
        )),

      ),
    );
