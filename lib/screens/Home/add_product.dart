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
        title: Text('Add Product'),
        backgroundColor: charcoal,
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18),
                child: Text('If you want to sell a product , then add it here :',style: TextStyle(fontSize: 23,fontFamily: 'EBGaramond'),),
              ),
              Text('Product name',),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
    decoration: InputDecoration(
    hintText: 'what is your product?',
    fillColor: charcoal.withOpacity(0.2),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,),
        contentPadding: const EdgeInsets.symmetric(
        vertical: 0.0,
        horizontal: 10,
    ),
                  ),),
              ),
              Text('Product quantity',),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'how many of the product is there?',
                    fillColor: charcoal.withOpacity(0.2),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10,
                    ),
                  ),),
              ),
              Text('Product price',),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'how much is your product?',
                    fillColor: charcoal.withOpacity(0.2),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10,
                    ),
                  ),),
              ),
              Text('Expire date',),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'what is your product expire date?',
                    fillColor: charcoal.withOpacity(0.2),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10,
                    ),
                  ),),
              ),
              Text('Contact',),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'what is your product?',
                    fillColor: charcoal.withOpacity(0.2),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10,
                    ),
                  ),),
              ),
              Text('add product image'),
            ],
          ),
        ),
      ),
      );

  }
}
