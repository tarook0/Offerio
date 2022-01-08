// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/moudels/app_bar.dart';
import 'package:my_app/moudels/navBar.dart';
import 'package:my_app/screens/Home/products_api/product_details_api.dart';

class product_detail extends StatefulWidget {


   @override
  State<product_detail> createState() => _product_detailState();
}
var Dname=name;
var Dimage=imgnamee;
var Dcontact;
var Ddescription;
var amounnt;
var ap;
var bp;
var cp;
var dp;
var ad;
var bd;
var cd;
var ex;

var Dcategory;
class _product_detailState extends State<product_detail> {
  void initState() {
    super.initState();
    setState(() {
      amounnt = amount;
      Dname=name;
      Dimage = imgnamee;
      Dcontact=contact;
      Ddescription= description;
      ap = aprice;
      bp=bprice;
      dp=dprice;
      cp=cprice;
      ad=firstdis;
      bd=seconddis;
      cd=thirddis;
      ex=expiree;
      //cati=category;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.pushNamed(context, 'fourth');
          },
        ),
        title: const Text('offerio',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
              Dname,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: charcoal,
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
        Padding(
               padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Hero(
                   tag: 'tag$Dimage',
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      //onTap: onTap,
                      child: Image.network(
                        '${Eurl}images/${Dimage}',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                    ),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Divider(thickness: 2,color: charcoal,),
            ),
            SizedBox(
              height: 15,
            ),
            Text('description :',style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'EBGaramond'
            ),),
              Text(Ddescription,style: TextStyle(
                fontSize: 15,
              ),),
              Text('contact :',style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
                  fontFamily: 'EBGaramond',
              ),),
              Text(Dcontact,style: TextStyle(
                fontSize: 15,
              ),),
            // Text('category :',style: TextStyle(
            //   fontSize: 20,
            //   fontWeight: FontWeight.bold,
            // ),),
            // Text(Dcategory,style: TextStyle(
            //   fontSize: 17,
            // ),),
            Text('expire date :',style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
                fontFamily: 'EBGaramond',
            ),),
            Text(ex,style: TextStyle(
              fontSize: 15,
            ),),

            SizedBox(
              height: 15.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('first discount :',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(
                    width: 20,
                  ),
                  Text(ad,style: TextStyle(
                    fontSize: 15,
                  ),),
                  SizedBox(
                    width: 20,
                  ),
                  Text('$ap  \$',style: TextStyle(
                    fontSize: 15,
                  ),),
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('second discount :',style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  width: 20,
                ),
                Text(bd,style: TextStyle(
                  fontSize: 15,
                ),),
                SizedBox(
                  width: 20,
                ),
                Text('$bp  \$',style: TextStyle(
                  fontSize: 15,
                ),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('third discount :',style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  width: 20,
                ),
                Text(cd,style: TextStyle(
                  fontSize: 15,
                ),),
                SizedBox(
                  width: 20,
                ),
                Text('$cp  \$',style: TextStyle(
                  fontSize: 15,
                ),),
              ],
            ),
              SizedBox(
                height: 15.0,),

          ],
        ),
      ),
    );
  }
}





























// // ignore_for_file: prefer_typing_uninitialized_variables
//
// import 'package:flutter/material.dart';
// import 'package:my_app/constant.dart';
// import 'package:my_app/moudels/app_bar.dart';
// import 'package:my_app/moudels/navBar.dart';
// import'package:my_app/moudels/Hero.dart';
//
//
// class product_detail extends StatelessWidget {
//   final assetPath, productPrice, productName;
//   product_detail({this.assetPath, this.productName, this.productPrice});
//   @override
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Color(0xFF545D68)),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         title: const Text('offerio',
//             style: TextStyle(
//                 fontFamily: 'Varela',
//                 fontSize: 20.0,
//                 color: Color(0xFF545D68))),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 15,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20.0),
//               child: Text(
//                 productName,
//                 style: TextStyle(
//                   fontFamily: 'Varela',
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: charcoal,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 15.0,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 40),
//               child: Hero(
//                 tag: 'tag$assetPath',
//                 child: Material(
//                   color: Colors.transparent,
//                   child: GestureDetector(
//                     //onTap: onTap,
//                     child: Image.network(
//                       '${Eurl}images/${assetPath}',
//                       fit: BoxFit.cover,
//                       height: 300,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Text('name'),
//             //Text(Dname),
//             Text('description'),
//             //Text(Ddescription),
//             Text('contact'),
//             //Text(Dcontact),
//             Text('category'),
//             //Text(Dcategory),
//             SizedBox(
//               height: 15.0,
//             ),
//             Center(
//               child: Container(
//                 width: MediaQuery.of(context).size.width - 50.0,
//                 height: 50.0,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(25.0),
//                   color: charcoal,
//                 ),
//                 child: const Center(
//                   child: Text(
//                     'contact',
//                     style: TextStyle(
//                       fontFamily: 'VarelaRound',
//                       fontSize: 14.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//
//     );
//   }
//
// }