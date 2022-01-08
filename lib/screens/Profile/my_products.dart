import 'package:flutter/material.dart';
import 'package:my_app/moudels/Hero.dart';
import 'package:my_app/screens/Home/products/prosplash.dart';
import 'package:my_app/screens/Profile/profile_api.dart';

import '../../constant.dart';

class myproducts extends StatefulWidget {
  const myproducts({Key? key}) : super(key: key);

  @override
  _myproductsState createState() => _myproductsState();
}

class _myproductsState extends State<myproducts> {

  late Future<List<GetProfile>> futureprofile;

  @override
  void initState() {
    super.initState();
    futureprofile = getUserdata();
    // getImage(n: imageName);
  }



  @override
    Widget build(BuildContext context) {
      return FutureBuilder<List<GetProfile>>(
        future: futureprofile,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) => _buildCard(
                  '${snapshot.data![index].products[index].name}',
                  '${snapshot.data![index].products[index].imgName}',
                  '${snapshot.data![index].products[index].id}',
                  '${snapshot.data![index].products[index].price4}',
                  false,
                  false,
                  context),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      );
    }
  }

  Widget _buildCard(String name, String imagePath, String idp, String price,bool yourProduct,
      bool isFavorit,context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5.0, right: 5.0, left: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => splashScreenpro(productID:idp),
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    isFavorit
                        ? Icon(
                      Icons.favorite,
                      color: charcoal,
                    )
                        : Icon(
                      Icons.favorite_border,
                      color: charcoal,
                    ),
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
                padding: EdgeInsets.all(kPadding),
                child: Container(
                  color: charcoal,
                  height: 1.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 5.0,
                  right: 5.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //todo Something special for the seller
                    if (!yourProduct) ...[
                      Icon(
                        Icons.call,
                        color: sandybrown,
                        size: 12,
                      ),
                      Text(
                        'to contact us',
                        style: kDescriptionStyle,
                      ),
                    ],
                    if (yourProduct) ...[
                      Icon(
                        Icons.edit,
                        color: sandybrown,
                        size: 12,
                      ),
                      Text(
                        'Edit your product',
                        style: kDescriptionStyle,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


