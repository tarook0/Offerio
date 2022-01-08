import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/screens/Home/add_a_product/edit-product.dart';
import 'package:my_app/screens/Home/home.dart';
//import 'package:my_app/screens/sign_log/Log_in/logInApi.dart';
//import 'package:my_app/screens/sign_log/Log_in/log_in_screen.dart';
import 'package:my_app/main.dart';
import 'package:my_app/screens/Home/products/product_details.dart';
import 'package:my_app/screens/Home/products_api/product_details_api.dart';
import 'package:my_app/screens/Profile/profile_api.dart';
import 'package:my_app/screens/Home/products/product_list.dart';


class splachedit extends StatefulWidget {
  final  productIDD;
  splachedit({this.productIDD});

  @override
  _splacheditState createState() => _splacheditState();
}
var cati;
class _splacheditState extends State<splachedit> {
  @override
  void initState() {
    super.initState();

    getdetails(proid: widget.productIDD);

    Timer(const Duration(seconds: 5), () {
      if (z == 200) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => editProduct(),
          ),
        );
      } else if (z != 200) {
        print('error');
      }
    });
    setState(() {
      cati=category;
    });
    if (cati==1){Dcategory='fruit';}
    else if (cati==2){Dcategory='veggies';}
    else if (cati==3){Dcategory='meat';}
    else if (cati==4){Dcategory='candy';}
    else if (cati==5){Dcategory='sauce';}
    else if (cati==6){Dcategory='beverages';}
    else if (cati==7){Dcategory='drugs';}
    else if (cati==8){Dcategory='makeup';}
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color:Colors.white38,
          width: double.infinity,
          height: double.infinity,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpinKitThreeBounce(
                color: sandybrown,
                size: 50,
              ),
            ],
          )

      ),
    );
  }
}
// decoration: BoxDecoration(
//   gradient: LinearGradient(
//     begin: Alignment.topRight,
//     end: Alignment.bottomLeft,
//     colors: [charcoal, persian],
//   ),
// ),
// child: Column(
//   crossAxisAlignment: CrossAxisAlignment.center,
//   mainAxisAlignment: MainAxisAlignment.spaceAround,
//   children: [
//     Column(
//       children: const [
//         Text(
//           "A whole Offerio store..\n at your fingertips",
//           style: TextStyle(
//             color: Colors.white,
//             //fontWeight: FontWeight.bold,
//             fontSize: 23,
//             fontFamily: 'EBGaramond',
//           ),
//         ),
//       ],
//     ),