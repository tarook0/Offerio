// ignore: file_names
// ignore_for_file: prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import '../constant.dart';
import 'icon-model.dart';

final List<IconModel> headerImages = IconModel.icons;
Widget buildIconList() => Padding(
    padding: const EdgeInsets.only(bottom: kPadding),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          headerImages.length,
          (index) => Container(
            width: 100,
            child: Column(
              children: [
                Image.asset(headerImages[index].icon, height: 50, width: 50),
                Text(headerImages[index].title, textAlign: TextAlign.center),
              ],
            ),
          ),
        ),
      ),
    ));
