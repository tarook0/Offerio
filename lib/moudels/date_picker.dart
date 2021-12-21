import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:my_app/screens/Home/add_product.dart';

class DateExpirePicker extends StatefulWidget {
  const DateExpirePicker({Key? key}) : super(key: key);

  @override
  _DateExpirePickerState createState() => _DateExpirePickerState();
}

class _DateExpirePickerState extends State<DateExpirePicker> {
  DateTime  todaydate =DateTime.now();
  //void today(){
    late int  d = todaydate.day  ;
    late int  m = todaydate.month;
    late int  y = todaydate.year;

  late int  max =2050;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: buildDatepicker(),
    );
  }
  Widget buildDatepicker() => CupertinoDatePicker(
    initialDateTime: todaydate.add(Duration(days: 7)),
    mode: CupertinoDatePickerMode.date,
   minimumDate:  DateTime(y,m,d),

    onDateTimeChanged: (date) => setState(() {
      this.todaydate =date;
    }),
  );
}




