import 'package:flutter/material.dart';
import 'package:my_app/moudels/app_bar.dart';
import 'package:my_app/moudels/headar.dart';
import 'package:my_app/moudels/icon-list.dart';
import 'package:my_app/moudels/search-bar.dart';
import '../../constant.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [...buildHeader(), buildSearchBar(), buildIconList()],
        ),
      ),
    );
  }
}
