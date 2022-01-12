// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:my_app/moudels/Hero.dart';
import 'package:my_app/moudels/app_bar.dart';
import 'package:my_app/screens/Home/products/prosplash.dart';
import 'package:my_app/screens/search/home_screen_name.dart';
import 'package:my_app/screens/search/search%20api.dart';
import '../../constant.dart';

// class HomeSearch extends StatefulWidget {
//   @override
//   State<HomeSearch> createState() => _HomeSearchState();
// }

// class _HomeSearchState extends State<HomeSearch> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('search for a products'),
//         actions: [
//           // Navigate to the Search Screen
//           IconButton(
//               onPressed: () => Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (_) => SearchPage())),
//               icon: Icon(Icons.search))
//         ],
//       ),
//     );
//   }
// }

// Search Page
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
              //padding: EdgeInsets.symmetric(horizontal: 20),
              //constraints: BoxConstraints.expand(),
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/search.png'), fit: BoxFit.cover),
              ),
            child: Scaffold(
              appBar: buildAppBar(),
              backgroundColor: Colors.transparent,
              body: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        cursorColor: Colors.grey,
                        controller: searchController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.search,
                              color: charcoal,
                            ),
                            onPressed: () {
                              getnamedata(name: searchController.text);
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => home_screen_name(
                                  sname: searchController.text,
                                ),
                              ));
                            },
                          ),
                          hintText: 'seacrh for product ...',
                          hintStyle: TextStyle(
                            fontFamily: 'EBGaramond',
                            fontSize: 20,
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: charcoal,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: charcoal,
                              width: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      );

  }
}
