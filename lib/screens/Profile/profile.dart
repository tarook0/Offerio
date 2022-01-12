// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/moudels/navBar.dart';
import 'package:my_app/screens/Home/add_a_product/add_product.dart';
import 'package:my_app/moudels/app_bar.dart';
import 'package:my_app/screens/Profile/my_products.dart';
import 'package:my_app/screens/Profile/profile_api.dart';
import 'package:my_app/screens/Profile/profile_info.dart';
import 'package:my_app/screens/Profile/profile_pic.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}


class _ProfileState extends State<Profile> {
var nnn;
var eee;
  void initState() {
    super.initState();
    //getUserdata();}
    setState(() {
      nnn = username;
      eee = emailaddress;
    });
  }
//functions to pick image from gallery or camera and set it as profile image
  File? _imageprofile;
  final pickerprofile = ImagePicker();

  Future profileimagefromgallery() async {
    final pickedimageprofile = await pickerprofile.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedimageprofile != null) {
        _imageprofile = File(pickedimageprofile.path);
      } else {
        print('null');
        addprofileimage(imageprofile:"images/profilepic.png");
      }
      Navigator.pop(context);
    });
  }

  Future profileimagefromCamera() async {
    final pickedimagecamera = await pickerprofile.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedimagecamera != null) {
        _imageprofile = File(pickedimagecamera.path);
      } else {
        print('null');
      }
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: profileimagepressed,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: _imageprofile == null
                            ? AssetImage('images/profilepic.png')
                            : FileImage(_imageprofile!) as ImageProvider,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        'Name:',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                         nnn,
                        style: TextStyle(
                        fontSize: 16,
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        'Email:',
                        style: TextStyle(
                          fontSize: 16,
                        ),),
                    SizedBox(width: 5,),
                    Text(
                     eee,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My products:',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      FloatingActionButton(
                        heroTag: "btn1",
                        onPressed: () {Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => myproducts(),
                            ),
                        );
                        },
                        child: Icon(Icons.arrow_forward),
                        backgroundColor: sandybrown,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//functions to build the bottom slide sheet that has options for image
  void profileimagepressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Camera'),
                  trailing: Icon(Icons.camera_alt_outlined),
                  onTap: profileimagefromCamera,
                ),
                ListTile(
                  title: Text('Gallery'),
                  trailing: Icon(Icons.photo),
                  onTap: profileimagefromgallery,
                ),
              ],
            ),
          );
        });
  }
}
