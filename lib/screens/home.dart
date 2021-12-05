import 'package:flutter/material.dart';
import '../constant.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorit'),
      ),
      body: Center(
        child: Text('Favorit', style: kTitleStyle),
      ),
    );
  }
}
