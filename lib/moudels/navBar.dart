

// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/moudels/otherlist.dart';
import 'package:my_app/screens/Home/add_a_product/add_product.dart';
import 'package:my_app/screens/Home/favorite.dart';
import 'package:my_app/screens/Home/home.dart';
import 'package:my_app/screens/Home/home_screen.dart';
import 'package:my_app/screens/Profile/profile.dart';
import 'package:my_app/screens/Profile/profile_api.dart';
import '../constant.dart';


int currentTab = 0;
class navBar extends StatefulWidget {
  const navBar({Key ? key}) : super(key: key);

  @override
  _navBarState createState() => _navBarState();
}

class _navBarState extends State<navBar> {

  final List<Widget> screens = [
    Home(),
    Favorite(),
    Profile(),
    Product(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = homeScreen();
String  selectedCurrency = 'english' ;
 bool _buttonappear=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Visibility(
        visible:_buttonappear ,
        child: FloatingActionButton(
          backgroundColor: persian,
          tooltip: 'add a product',
          child: Icon(Icons.add),
          onPressed: () {
            setState(
              () {
                currentScreen = Product();
                currentTab = 4;
                _buttonappear=false;
              },
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = homeScreen();
                        currentTab = 0;
                        _buttonappear=true;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_outlined,
                            color: currentTab == 0 ? sandybrown : charcoal),
                        Text(
                          'Home',
                          style: TextStyle(
                              color: currentTab == 0 ? sandybrown : charcoal,fontFamily: 'EBGaramond',fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Favorite();
                        currentTab = 1;
                        _buttonappear=true;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite_border,
                            color: currentTab == 1 ? sandybrown : charcoal),
                        Text(
                          'Favorite',
                          style: TextStyle(
                              color: currentTab == 1 ? sandybrown : charcoal,fontFamily: 'EBGaramond',fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              //Right Tab Bar Icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 3;
                        _buttonappear=true;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person_outline,
                            color: currentTab == 3 ? sandybrown : charcoal),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color: currentTab == 3 ? sandybrown : charcoal,fontFamily: 'EBGaramond',fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Otherbutton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  }

