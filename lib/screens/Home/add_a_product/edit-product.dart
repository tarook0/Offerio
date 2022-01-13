import 'dart:io';
import 'package:flutter/material.dart';
import 'package:my_app/moudels/RadiolistCat.dart';
import 'package:my_app/screens/Home/add_a_product/add_product_upload.dart';
import 'package:my_app/screens/Home/products_api/edit_product_api.dart';
import '../../../constant.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:my_app/moudels/date_picker.dart';
import 'package:my_app/moudels/product_prices.dart';
import 'package:my_app/screens/Home/products_api/product_details_api.dart';

class editProduct extends StatefulWidget {
  const editProduct({Key? key}) : super(key: key);

  @override
  _editProductState createState() => _editProductState();
}

class _editProductState extends State<editProduct> {
  File? _editimage;
  final editpicker = ImagePicker();
  Future imagefromCamera() async {
    final editpickedimage =
        await editpicker.pickImage(source: ImageSource.camera);
    setState(() {
      if (editpickedimage != null) {
        _editimage = File(editpickedimage.path);
      } else {
        print('null');
      }
    });
  }

  Future imagefromGallery() async {
    final editpickedimage =
        await editpicker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (editpickedimage != null) {
        _editimage = File(editpickedimage.path);
      } else {
        print('null');
      }
    });
  }

  TextEditingController _editproductnameTEC = TextEditingController();
  TextEditingController _editproductdescriptionTEC = TextEditingController();
  TextEditingController _editproductcontactTEC = TextEditingController();
  TextEditingController _editproductamountTEC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
        backgroundColor: charcoal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18),
                child: Text(
                  'Here you can update your product info :',
                  style: TextStyle(fontSize: 23, fontFamily: 'EBGaramond'),
                ),
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1.5,
                color: sandybrown,
              ),

              //PRODUCT INFORMATION
              Text(
                'Product name',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _editproductnameTEC,
                  decoration: InputDecoration(
                    hintText: 'what is your product?',
                    fillColor: charcoal.withOpacity(0.2),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10,
                    ),
                  ),
                ),
              ),
              Text(
                'Product description',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _editproductdescriptionTEC,
                  decoration: InputDecoration(
                    hintText: 'describe your product',
                    fillColor: charcoal.withOpacity(0.2),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10,
                    ),
                  ),
                ),
              ),
              Text(
                'Product quantity',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _editproductcontactTEC,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'how many of the product is there?',
                    fillColor: charcoal.withOpacity(0.2),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10,
                    ),
                  ),
                ),
              ),

              Text(
                'Contact',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _editproductamountTEC,
                  decoration: InputDecoration(
                    hintText: 'Email or Phone Number',
                    fillColor: charcoal.withOpacity(0.2),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10,
                    ),
                  ),
                ),
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1.5,
                color: charcoal,
              ),
              Text(
                'Product price',
              ),
              SizedBox(
                height: 20,
              ),
              Text('please fill the table below'),
              ProductPrice(),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1.5,
                color: sandybrown,
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1.5,
                color: charcoal,
              ),

              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1.5,
                color: sandybrown,
              ),
              Text(
                'Product type',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RadioListCat(),
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1.5,
                color: sandybrown,
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1.5,
                color: charcoal,
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1.5,
                color: sandybrown,
              ),
              Center(
                child: OutlinedButton(
                  onPressed: () async {
                    if (_editproductnameTEC!= null) {
                      name = _editproductnameTEC.text;
                    }
                    if (_editproductamountTEC.text != null) {
                      amount = _editproductamountTEC.text;
                    }
                    if (_editproductdescriptionTEC.text != null) {
                      description = _editproductdescriptionTEC.text;
                    }
                    if (_editproductcontactTEC.text != null) {
                      contact = _editproductcontactTEC.text;
                    }
                    print(name);
                    if (Price1.text != null) {
                      aprice = Price1.text;
                    }
                    if (Price2.text != null) {
                      bprice = Price2.text;
                    }
                    if (Price3.text != null) {
                      cprice = Price3.text;
                    }
                    if (Price4.text != null) {
                      dprice = Price4.text;
                    }
                    if (Price2.text != null) {
                      aprice = Price1.text;
                    }


                    var d1 = disday1.text;
                    var m1 = dismonth1.text;
                    var y1 = disyear1.text;

                    var d2 = disday2.text;
                    var m2 = dismonth2.text;
                    var y2 = disyear2.text;

                    var d3 = disday3.text;
                    var m3 = dismonth3.text;
                    var y3 = disyear3.text;
                     var time1="$d1-$m1-$y1";
                     var time2="$d2-$m2-$y2";
                    var time3="$d3-$m3-$y3";
                    await editPro(
                        E1: '$ide',
                        name:name,
                        desc: description,
                        contact: contact,
                        amount: amount,
                        firstprice: aprice,
                        secondprice:bprice,
                        thirdprice: cprice,
                        forthprice: dprice,
                        timestamp1: time1,
                        timestamp2: time2,
                        timestamp3: time3);
                  },
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(100, 35),
                      side: BorderSide(width: 1.5, color: charcoal),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      )),
                  child: Text(
                    'Edit product',
                    style: TextStyle(
                      color: charcoal,
                      fontSize: 17.5,
                      fontFamily: 'EBGaramond',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
