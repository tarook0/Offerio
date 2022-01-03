import 'package:flutter/material.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/screens/sign_log/log_out/log_out_api.dart';
import 'package:my_app/screens/sign_log/log_out/out_splashscreen.dart';
import 'navBar.dart';

class Otherbutton extends StatefulWidget {
  const Otherbutton({Key? key}) : super(key: key);

  @override
  _OtherbuttonState createState() => _OtherbuttonState();
}

class _OtherbuttonState extends State<Otherbutton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
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
          Icon(Icons.list, color: currentTab == 2 ? sandybrown : charcoal),
          Text(
            'Other',
            style: TextStyle(
                color: currentTab == 2 ? sandybrown : charcoal,
                fontFamily: 'EBGaramond',
                fontSize: 16),
          )
        ],
      ),
    );
  }

  void _selecteditem(int n) {
    if (n == 1) {
      Navigator.pushNamed(context, 'fifth');
    }
  }

  Column _buildbottomnavigationmenue() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap: () {
            _selecteditem(1);
          },
        ),
        ListTile(
          leading: Icon(Icons.language),
          title: Text('Language'),
          trailing: DropdownButton<String>(
              value: null,
              underline: Container(),
              icon: Icon(Icons.keyboard_arrow_down_outlined),
              elevation: 16,
              onChanged: (value) {
                setState(() {});
              },
              items: [
                DropdownMenuItem(
                  child: Text('arabic'),
                  value: 'dds',
                ),
                DropdownMenuItem(
                  child: Text('English'),
                  value: 'dsa',
                ),
              ]),
        ),
        ListTile(
          leading: Icon(Icons.people),
          title: Text('About us'),
        ),
        ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.pushNamed(context, 'ten');
            })
      ],
    );
  }

  void onButtonpressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 240,
            color: Color(0xff737373),
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
