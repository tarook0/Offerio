// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/moudels/app_bar.dart';
import 'package:my_app/moudels/navBar.dart';
import 'package:my_app/screens/Home/products_api/like_pro_api.dart';
import 'package:my_app/screens/Home/products_api/product_details_api.dart';
import 'package:like_button/like_button.dart';

class product_detail extends StatefulWidget {
  @override
  State<product_detail> createState() => _product_detailState();
}

var Dname = name;
var Dimage = imgnamee;
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
var likes;
var idk;
var dliked;
var views;
Color col = Colors.grey;

class _product_detailState extends State<product_detail> {
  void initState() {
    super.initState();
    setState(() {
      amounnt = amount;
      Dname = name;
      Dimage = imgnamee;
      Dcontact = contact;
      Ddescription = description;
      ap = aprice;
      bp = bprice;
      dp = dprice;
      cp = cprice;
      ad = firstdis;
      bd = seconddis;
      cd = thirddis;
      ex = expiree;
      views=view;
      idk = ide;
      dliked = liked;
    });
  }

  depressed({required k}) {
    likeProduct(productID: k);
    setState(() {
      dliked = !dliked;
      likes = dlikes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: charcoal,
        elevation: 0.0,
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushNamed(context, 'fourth');
          },
        ),
        title: const Text('Offerio',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color:Colors.white,
      ),),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: sandybrown.withOpacity(0.3),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25), )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
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
                  Text(
                    Dname,
                    style: TextStyle(
                      fontFamily: 'EBGaramond',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: charcoal,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                ],
              ),
            ),

            // Text('$likes'),
            SizedBox(
              height: 15,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        depressed(k: ide);
                      },
                      icon: Icon(
                        dliked ? Icons.favorite : Icons.favorite_outline,
                        color: dliked ? sandybrown : charcoal,
                        size: 30,
                      )),
                  Column(
                    children: [
                      Icon(Icons.visibility_outlined,color: sandybrown,),
                      Text('$views',style: TextStyle(color: sandybrown),),
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Description :',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'EBGaramond'),
                ),
                SizedBox(width: 10,),
                Text(
                  Ddescription,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Text(
                  'Contact :',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'EBGaramond',
                  ),
                ),
                SizedBox(width: 10,),
                Text(
                  Dcontact,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Amount :',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'EBGaramond',
                  ),
                ),
                SizedBox(width: 10,),
                Text(
                  amounnt,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Expire date :',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'EBGaramond',
                  ),
                ),
                SizedBox(width: 10,),
                Text(
                  ex,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'first discount :',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  ad,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '$ap  \$',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'second discount :',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  bd,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '$bp  \$',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'third discount :',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  cd,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '$cp  \$',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
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
