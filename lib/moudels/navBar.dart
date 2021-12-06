// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/screens/Home/add_product.dart';
import 'package:my_app/screens/Home/favorite.dart';
import 'package:my_app/screens/Home/home.dart';
import 'package:my_app/screens/Home/profile.dart';
import 'package:my_app/screens/Home/search.dart';

import '../constant.dart';

class navBar extends StatefulWidget {
  const navBar({Key? key}) : super(key: key);

  @override
  _navBarState createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int currentTab = 0;
  final List<Widget> screens = [
    Home(),
    Favorite(),
    Profile(),
    Search(),
    Product(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
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
                        currentScreen = Home();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_outlined,
                            color: currentTab == 0 ? Colors.red : sandybrown),
                        Text(
                          'Home',
                          style: TextStyle(
                              color: currentTab == 0 ? Colors.red : sandybrown),
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
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite,
                            color: currentTab == 1 ? Colors.red : sandybrown),
                        Text(
                          'Favorit',
                          style: TextStyle(
                              color: currentTab == 1 ? Colors.red : sandybrown),
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
                        currentScreen = Search();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_outlined,
                            color: currentTab == 2 ? Colors.red : sandybrown),
                        Text(
                          'Search',
                          style: TextStyle(
                              color: currentTab == 2 ? Colors.red : sandybrown),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_balance_outlined,
                            color: currentTab == 3 ? Colors.red : sandybrown),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color: currentTab == 3 ? Colors.red : sandybrown),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
