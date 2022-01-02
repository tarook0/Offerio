import 'package:flutter/material.dart';
import 'package:my_app/constant.dart';
late var val = null;

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
                  groupValue:val,
                  onChanged: (newvalue) {
                    setState(() {
                      val=newvalue;
                    });
                  }),
              RadioListTile(
                  title: Text('veggies'),
                  contentPadding: EdgeInsets.all(0.5),
                  activeColor: persian,
                  value: 2,
                  groupValue: val,
                  onChanged: (newvalue) {
                    setState(() {
                      val=newvalue;
                    });
                  }),
              RadioListTile(
                  title: Text('meat'),
                  contentPadding: EdgeInsets.all(0.5),
                  activeColor: persian,
                  value: 3,
                  groupValue: val,
                  onChanged: (newvalue) {
                    setState(() {
                      val=newvalue;
                    });
                  }),
              RadioListTile(
                  title: Text('candy'),
                  contentPadding: EdgeInsets.all(0.5),
                  activeColor: persian,
                  value: 4,
                  groupValue: val,
                  onChanged: (newvalue) {
                    setState(() {
                      val=newvalue;
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
                  value: 5,
                  groupValue:val,
                  onChanged: (newvalue) {
                    setState(() {
                      val=newvalue;
                    });
                  }),
              RadioListTile(
                  title: Text('Beverages'),
                  contentPadding: EdgeInsets.all(0.5),
                  activeColor: persian,
                  value: 6,
                  groupValue: val,
                  onChanged: (newvalue) {
                    setState(() {
                      val=newvalue;
                    });
                  }),
              RadioListTile(
                  title: Text('drugs'),
                  contentPadding: EdgeInsets.all(0.5),
                  activeColor: persian,
                  value: 7,
                  groupValue: val,
                  onChanged: (newvalue) {
                    setState(() {
                      val=newvalue;
                    });
                  }),
              RadioListTile(
                  title: Text('makeup'),
                  contentPadding: EdgeInsets.all(0.5),
                  activeColor: persian,
                  value: 8,
                  groupValue: val,
                  onChanged: (newvalue) {
                    setState(() {
                      val=newvalue;
                    });
                  }),
            ],
          ),
        )
      ],
    );
  }
}

