import 'package:flutter/material.dart';
import '../../constant.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
        backgroundColor: charcoal,
      ),
      body: Center(
        child: Text('product', style: kTitleStyle),
      ),
    );
  }
}
