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
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: TextField(
          cursorColor: Colors.grey,
          controller: searchController,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search_outlined, color: sandybrown),
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
              fontSize: 17,
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
      // appBar: AppBar(
      //   // The search area here
      //   foregroundColor: charcoal,
      //   title: Container(
      //     width: double.infinity,
      //     height: 100,
      //     decoration: BoxDecoration(
      //         color: Colors.white, borderRadius: BorderRadius.circular(5)),
      //     child: Center(
      //       child: TextField(
      //         controller: searchController,
      //         decoration: InputDecoration(
      //             prefixIcon: Icon(Icons.search),
      //             suffixIcon: IconButton(
      //               icon: Icon(Icons.search),
      //               onPressed: () {
      //                 getnamedata(name: searchController.text);
      //                 Navigator.of(context).push(MaterialPageRoute(
      //                   builder: (context) => home_screen_name(
      //                     sname: searchController.text,
      //                   ),
      //                 ));
      //               },
      //             ),
      //             hintText: 'Search...',
      //             border: InputBorder.none),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
