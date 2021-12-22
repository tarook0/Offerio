import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/constant.dart';

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
      columnWidths: {2:FractionColumnWidth(.2),3:FractionColumnWidth(.3)},
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
                child: Text('When ',style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(),
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
            SizedBox(),
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
              TextFormField(
                cursorColor: persian,
                decoration: InputDecoration(
                  hintText: 'e.g: 30',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: persian,
                      width: 2,
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              Text('Days or less from the expiredate',
              ),
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
              TextFormField(
                cursorColor: persian,
                decoration: InputDecoration(
                    hintText: '15',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: persian,
                      width: 2,
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              Text('Days or less from the expiredate'
              ),
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
              TextFormField(
                cursorColor: persian,
                decoration: InputDecoration(
                    hintText: '10',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: persian,
                      width: 2,
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              Text('Days or less from the expiredate'
              ),
            ]
        ),

      ],
    );
  }
}
