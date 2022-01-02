import 'dart:io';
import 'package:flutter/material.dart';
import 'package:my_app/moudels/RadiolistCat.dart';
import 'package:my_app/screens/Home/add_a_product/add_product_upload.dart';
import '../../../constant.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:my_app/moudels/date_picker.dart';
import 'package:my_app/moudels/product_prices.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  File? _image;
  final picker = ImagePicker();
  Future imagefromCamera() async {
    final pickedimage = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedimage != null) {
        _image = File(pickedimage.path);
      } else {
        print('null');
      }
    });
  }

  Future imagefromGallery() async {
    final pickedimage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedimage != null) {
        _image = File(pickedimage.path);
      } else {
        print('null');
      }
    });
  }


  TextEditingController _productnameTEC = TextEditingController();
  TextEditingController _productdescriptionTEC = TextEditingController();
  TextEditingController _productcontactTEC = TextEditingController();
  TextEditingController _productamountTEC = TextEditingController();
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
                  'If you want to sell a product , then add it here :',
                  style: TextStyle(fontSize: 23, fontFamily: 'EBGaramond'),
                ),
              ),
              Divider(
                indent:10,
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
                  controller: _productnameTEC,
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
                  controller: _productdescriptionTEC,
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
                  controller:  _productcontactTEC,
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
                  controller:  _productamountTEC,
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
                indent:10,
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
                indent:10,
                endIndent: 10,
                thickness: 1.5,
                color: sandybrown,
              ),
              Divider(
                indent:10,
                endIndent: 10,
                thickness: 1.5,
                color: charcoal,
              ),
              Text(
                'Expire date',
              ),

              DateExpirePicker(),

              Divider(
                indent:10,
                endIndent: 10,
                thickness: 1.5,
                color: charcoal,
              ),
              Divider(
                indent:10,
                endIndent: 10,
                thickness: 1.5,
                color: sandybrown,
              ),
              Text(
                'Product type',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:RadioListCat(),),
              Divider(
                indent:10,
                endIndent: 10,
                thickness: 1.5,
                color: sandybrown,
              ),
              Divider(
                indent:10,
                endIndent: 10,
                thickness: 1.5,
                color: charcoal,
              ),
              Text('Add product image'),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      onPressed: imagefromCamera,
                      tooltip: 'pick image',
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: white,
                      ),
                      backgroundColor: charcoal.withOpacity(0.8),
                    ),
                  ),
                  Text('choose frome camera'),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      onPressed: imagefromGallery,
                      tooltip: 'pick image',
                      child: Icon(
                        Icons.image,
                        color: white,
                      ),
                      backgroundColor: charcoal.withOpacity(0.8),
                    ),
                  ),
                  Text('choose from Gallery'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                height: 200,
                child: Center(
                  child: _image == null
                      ? Text('no image was selected')
                      : Image.file(_image!),
                ),
              ),
              Divider(
                indent:10,
                endIndent: 10,
                thickness: 1.5,
                color: sandybrown,
              ),
              Center(
                child: OutlinedButton(
                  onPressed: () { setState(() {
                    var Pname = _productnameTEC.text;
                    var Pdescription = _productdescriptionTEC.text;
                    var Pcontact = _productcontactTEC.text;
                    var Pamount = _productamountTEC.text;

                    //prices after discounts
                    var Pprice1 = Price1.text;
                    var Pprice2 = Price1.text;
                    var Pprice3 = Price1.text;
                    var Pprice4 = Price1.text;


                    //expire date
                    String PExpiredate = "$maxD / $maxM / $maxY";

                    //discount dates
                    String Ptimestamp3= "$disday1 / $dismonth1 / $disyear1";
                    String Ptimestamp2= "$disday2 / $dismonth2 / $disyear2";
                    String Ptimestamp1= "$disday3 / $dismonth3 / $disyear3";


                    postUserdata (name: Pname,desc:Pdescription,contact:Pcontact,amount: Pamount,
                        image: _image!.path,
                        date: PExpiredate,
                        category: val.toString(),
                      firstprice:Pprice1 ,secondprice: Pprice2,thirdprice: Pprice3,forthprice: Pprice4,
                      date1: Ptimestamp1 , date2: Ptimestamp2, date3: Ptimestamp3
                    );
                  });

                  },
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(100, 35),
                      side: BorderSide(width: 1.5, color: charcoal),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      )),
                  child: Text(
                    'Add product',
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

