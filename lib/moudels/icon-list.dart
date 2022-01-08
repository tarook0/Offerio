// ignore: file_names
// ignore_for_file: prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:my_app/screens/Home/products/product_details.dart';
import 'package:my_app/screens/search/searchresults.dart';
import '../constant.dart';
import 'icon-model.dart';

final catId = 0;

class iconlist extends StatefulWidget {
  const iconlist({Key? key}) : super(key: key);

  @override
  _iconlistState createState() => _iconlistState();
}

class _iconlistState extends State<iconlist> {
  @override
  Widget buildIconList() => Padding(
        padding: const EdgeInsets.only(bottom: kPadding),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: <
                Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => searchresults(),
                            ),
                          );

                          print('hello');
                        },
                      ),
                      backgroundImage: AssetImage('assets/icons/fruit.png'),
                      radius: 25,
                    ),
                    Text(
                      'Fruit',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      child: GestureDetector(
                        onTap: () {
                          print('hello');
                        },
                      ),
                      backgroundImage: AssetImage('assets/icons/veggies.png'),
                      radius: 25,
                    ),
                    Text(
                      'Veggies',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      child: GestureDetector(
                        onTap: () {
                          print('hello');
                        },
                      ),
                      backgroundImage: AssetImage('assets/icons/meat-icon.png'),
                      radius: 25,
                    ),
                    Text(
                      'Meat',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      child: GestureDetector(
                        onTap: () {
                          print('hello');
                        },
                      ),
                      backgroundImage:
                          AssetImage('assets/icons/Candy-icon.png'),
                      radius: 25,
                    ),
                    Text(
                      'Candy',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      child: GestureDetector(
                        onTap: () {
                          print('hello');
                        },
                      ),
                      backgroundImage: AssetImage('assets/icons/sauce.png'),
                      radius: 25,
                    ),
                    Text(
                      'Sauce',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      child: GestureDetector(
                        onTap: () {
                          print('hello');
                        },
                      ),
                      backgroundImage: AssetImage(
                        'assets/icons/icon_1.png',
                      ),
                      radius: 25,
                    ),
                    Text(
                      'Beverages',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      child: GestureDetector(
                        onTap: () {
                          print('hello');
                        },
                      ),
                      backgroundImage: AssetImage('assets/icons/drugs.png'),
                      radius: 25,
                    ),
                    Text(
                      'Drugs',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      child: GestureDetector(
                        onTap: () {
                          print('hello');
                        },
                      ),
                      backgroundImage: AssetImage('assets/icons/icon_3.png'),
                      radius: 25,
                    ),
                    Text(
                      'Makeup',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

// //final List<IconModel> headerImages = IconModel.icons;
// Widget buildIconList() => Padding(
//     padding: const EdgeInsets.only(bottom: kPadding),
//     child: SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 4.0),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   CircleAvatar(child: GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (context) => product_detail(),
//                         ),
//                       );


//                       print('hello');},),
//                     backgroundImage: AssetImage('assets/icons/fruit.png'),radius: 25,),
//                   Text('Fruit',style: TextStyle(fontSize: 12),),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   CircleAvatar(child: GestureDetector(
//                     onTap: () {print('hello');},),
//                     backgroundImage: AssetImage('assets/icons/veggies.png'),radius: 25,),
//                   Text('Veggies',style: TextStyle(fontSize: 12),),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   CircleAvatar(child: GestureDetector(
//                     onTap: () {print('hello');},),
//                     backgroundImage: AssetImage('assets/icons/meat-icon.png'),radius: 25,),
//                   Text('Meat',style: TextStyle(fontSize: 12),),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   CircleAvatar(child: GestureDetector(
//                     onTap: () {print('hello');},),
//                     backgroundImage: AssetImage('assets/icons/Candy-icon.png'),radius: 25,),
//                   Text('Candy',style: TextStyle(fontSize: 12),),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   CircleAvatar(child: GestureDetector(
//                     onTap: () {print('hello');},),
//                     backgroundImage: AssetImage('assets/icons/sauce.png'),radius: 25,),
//                   Text('Sauce',style: TextStyle(fontSize: 12),),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   CircleAvatar(child: GestureDetector(
//                     onTap: () {print('hello');},),
//                     backgroundImage: AssetImage('assets/icons/icon_1.png',),
//                     radius: 25,),
//                   Text('Beverages',style: TextStyle(fontSize: 12),),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   CircleAvatar(child: GestureDetector(
//                     onTap: () {print('hello');},),
//                     backgroundImage: AssetImage('assets/icons/drugs.png'),radius: 25,),
//                   Text('Drugs',style: TextStyle(fontSize: 12),),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   CircleAvatar(child: GestureDetector(
//                     onTap: () {print('hello');},),
//                     backgroundImage: AssetImage('assets/icons/icon_3.png'),radius: 25,),
//                   Text('Makeup',style: TextStyle(fontSize: 12),),
//                 ],
//               ),
//             ),
//           ]
//           ),
//       ),
//       ),
//     );
