import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/constant.dart';


TextEditingController Price1 = TextEditingController();
TextEditingController Price2 = TextEditingController();
TextEditingController Price3 = TextEditingController();
TextEditingController Price4 = TextEditingController();

TextEditingController disday1 = TextEditingController();
TextEditingController dismonth1 = TextEditingController();
TextEditingController disyear1 = TextEditingController();

TextEditingController disday2 = TextEditingController();
TextEditingController dismonth2 = TextEditingController();
TextEditingController disyear2 = TextEditingController();

TextEditingController disday3 = TextEditingController();
TextEditingController dismonth3 = TextEditingController();
TextEditingController disyear3 = TextEditingController();


class ProductPrice extends StatefulWidget {
  const ProductPrice({Key? key}) : super(key: key);

  @override
  _ProductPriceState createState() => _ProductPriceState();
}

class _ProductPriceState extends State<ProductPrice> {
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(width: 0.2,borderRadius: BorderRadius.circular(20)),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      //columnWidths: {2:FractionColumnWidth(.2),3:FractionColumnWidth(.3)},
      children: [
        //FIRST row of the table
        TableRow(
            children: [
              SizedBox(),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('price',style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('When\n(day) ',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('When \n (month) ',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text('When\n(year) ',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ),

            ]
        ),

        //SECOND row of the table
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 3),
              child: Text('Current price (before discount):',style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
            ),
            TextFormField(
              controller: Price1,
              cursorColor: persian,
              decoration: InputDecoration(focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: persian,
                    width: 2,
                  ),
              ),
              ),
            ),
            Text('now'),
            Text('now'),
            Text('now'),

          ]
        ),

        //THIRD row of the table
        TableRow(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 3),
                child: Text('price after discount 1:',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ),
              TextFormField(
                controller: Price2,
                cursorColor: persian,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: persian,
                      width: 2,
                    ),
                  ),
                ),
              ),
             TextFormField(controller: disday1, keyboardType: TextInputType.number,),
              TextFormField(controller: dismonth1, keyboardType: TextInputType.number,),
              TextFormField(controller: disyear1, keyboardType: TextInputType.number,),

]
        ),

        //FORTH row of the table
        TableRow(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 3),
                child: Text('price after discount 2:',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ),
              TextFormField(
                controller: Price3,
                cursorColor: persian,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: persian,
                      width: 2,
                    ),
                  ),
                ),
              ),
              TextFormField(controller: disday2, keyboardType: TextInputType.number,),
              TextFormField(controller: dismonth2, keyboardType: TextInputType.number,),
              TextFormField(controller: disyear2, keyboardType: TextInputType.number,),
            ]
        ),



        //FIFTH row of the table
        TableRow(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 3),
                child: Text('price after discount 3:',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ),
              TextFormField(
                controller: Price4,
                cursorColor: persian,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: persian,
                      width: 2,
                    ),
                  ),
                ),
              ),
              TextFormField(controller: disday3, keyboardType: TextInputType.number,),
              TextFormField(controller: dismonth3, keyboardType: TextInputType.number,),
              TextFormField(controller: disyear3, keyboardType: TextInputType.number,),
            ]
        ),

      ],
    );
  }
}
