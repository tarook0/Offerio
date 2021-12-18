import 'package:flutter/material.dart';
import 'package:my_app/constant.dart';
var _val;

class RadioListCat extends StatefulWidget {
  const RadioListCat({Key? key}) : super(key: key);

  @override
  _RadioListCatState createState() => _RadioListCatState();
}

class _RadioListCatState extends State<RadioListCat> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              RadioListTile(
                  title: Text('fruit'),
                  contentPadding: EdgeInsets.all(0.5),
                  activeColor: persian,
                  value: 1,
                  groupValue:_val,
                  onChanged: (newvalue) {
                    setState(() {
                      _val=newvalue;
                    });
                  }),
              RadioListTile(
                  title: Text('veggies'),
                  contentPadding: EdgeInsets.all(0.5),
                  activeColor: persian,
                  value: 2,
                  groupValue: _val,
                  onChanged: (newvalue) {
                    setState(() {
                      _val=newvalue;
                    });
                  }),
              RadioListTile(
                  title: Text('meat'),
                  contentPadding: EdgeInsets.all(0.5),
                  activeColor: persian,
                  value: 3,
                  groupValue: _val,
                  onChanged: (newvalue) {
                    setState(() {
                      _val=newvalue;
                    });
                  }),
              RadioListTile(
                  title: Text('candy'),
                  contentPadding: EdgeInsets.all(0.5),
                  activeColor: persian,
                  value: 4,
                  groupValue: _val,
                  onChanged: (newvalue) {
                    setState(() {
                      _val=newvalue;
                    });
                  }),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              RadioListTile(
                  title: Text('Sauce'),
                  contentPadding: EdgeInsets.all(0.5),
                  activeColor: persian,
                  value: 10,
                  groupValue:_val,
                  onChanged: (newvalue) {
                    setState(() {
                      _val=newvalue;
                    });
                  }),
              RadioListTile(
                  title: Text('Beverages'),
                  contentPadding: EdgeInsets.all(0.5),
                  activeColor: persian,
                  value: 20,
                  groupValue: _val,
                  onChanged: (newvalue) {
                    setState(() {
                      _val=newvalue;
                    });
                  }),
              RadioListTile(
                  title: Text('drugs'),
                  contentPadding: EdgeInsets.all(0.5),
                  activeColor: persian,
                  value: 30,
                  groupValue: _val,
                  onChanged: (newvalue) {
                    setState(() {
                      _val=newvalue;
                    });
                  }),
              RadioListTile(
                  title: Text('makeup'),
                  contentPadding: EdgeInsets.all(0.5),
                  activeColor: persian,
                  value: 40,
                  groupValue: _val,
                  onChanged: (newvalue) {
                    setState(() {
                      _val=newvalue;
                    });
                  }),
            ],
          ),
        )
      ],
    );
  }
}

