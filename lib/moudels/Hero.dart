// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/screens/Home/products/product_list.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero({Key? key, required this.photo, required this.width})
      : super(key: key);

  final String photo;
  final double width;

  Widget build(BuildContext context) {
    return SizedBox(
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            //onTap: onTap,
            child: Image.network(
              '${Eurl}images/${photo}',
              fit: BoxFit.cover,
              width: 75,
              height: 75,
            ),
          ),
        ),
      ),
    );
  }
}
