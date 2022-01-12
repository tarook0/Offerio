import 'package:flutter/material.dart';
import 'package:my_app/moudels/Hero.dart';
import 'package:my_app/moudels/app_bar.dart';
import 'package:my_app/screens/Home/products/prosplash.dart';
import 'package:my_app/screens/search/search%20api.dart';

import '../../constant.dart';

class home_screen_name extends StatefulWidget {
  final sname;
  home_screen_name({this.sname});

  @override
  _home_screen_nameState createState() => _home_screen_nameState();
}

class _home_screen_nameState extends State<home_screen_name> {
  late Future<List<Item>> futuresearchName;
  @override
  void initState() {
    super.initState();
    futuresearchName = getnamedata(name: widget.sname);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: charcoal,),
      body: FutureBuilder<List<Item>>(
        future: futuresearchName,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) => _buildCard(
                  '${snapshot.data![index].name}',
                  '${snapshot.data![index].imgName}',
                  '${snapshot.data![index].id}',
                  '${snapshot.data![index].price}',
                  false,
                  false,
                  context),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

Widget _buildCard(String name, String imagePath, String idp, String price,
    bool yourProduct, bool isFavorit, context) {
  return Padding(
    padding: const EdgeInsets.only(top: 5, bottom: 5.0, right: 5.0, left: 5.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => splashScreenpro(productID: idp),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0,
            )
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //  Navigator.pushReplacement(
                  //    context,
                  // MaterialPageRoute(
                  //        builder: (context) => myproducts(),),);}
                ],
              ),
            ),
            PhotoHero(photo: imagePath, width: 75.0),
            const SizedBox(
              height: 7.0,
            ),
            Text(
              price,
              // style: kDescriptionStyle2,
            ),
            Text(
              name,
              style: kDescriptionStyle,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Divider(
                thickness: 2.5,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
