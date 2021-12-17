// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/screens/Home/add_product.dart';
import 'package:my_app/screens/Home/favorite.dart';
import 'package:my_app/screens/Home/home.dart';
import 'package:my_app/screens/Home/home_screen.dart';
import 'package:my_app/screens/Home/profile.dart';

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

    Product(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = homeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: persian,
        child: Icon(Icons.add),
        onPressed: () {
          setState(
            () {
              currentScreen = Product();
              currentTab = 4;
            },
          );
        },
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
          MaterialButton(
             minWidth: 40,
             onPressed: () {
               onButtonpressed();
               setState(() {
                 currentTab = 2;
               });
             },
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(Icons.list,
                     color: currentTab == 2 ? sandybrown : charcoal),
                 Text(
                   'Other',
                   style: TextStyle(
                       color: currentTab == 2 ? sandybrown : charcoal,fontFamily: 'EBGaramond',fontSize: 16),
                 )
               ],
             ),
           ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _selecteditem( int n ){
    if (n==1){
      Navigator.pushNamed(context, 'fifth');
    }
  }
  /*DropdownButton _languageoptions(){
    return DropdownButton<String>(
      items: <String>['arabic', 'english']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }*/
  Column _buildbottomnavigationmenue (){
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap:(){ _selecteditem(1);},

        ),
        ListTile(
          leading: Icon(Icons.language),
          title: Text('Language'),
          trailing: GestureDetector(child: Icon(Icons.keyboard_arrow_down_outlined),
          onTap:(){

          }),
        ),
        ListTile(
          leading: Icon(Icons.people),
          title: Text('About us'),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Logout'),
        )
      ],
    );
  }
  void onButtonpressed (){
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        height: 240,
        color : Color(0xff737373),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 50,
          ),
          child: Container(
            child: _buildbottomnavigationmenue(),
            decoration: BoxDecoration(
                color: white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),

            ),
          ),
        ),
      );
    });

  }
}
