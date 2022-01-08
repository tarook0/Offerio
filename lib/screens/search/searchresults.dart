import 'package:flutter/material.dart';
import 'package:my_app/moudels/Hero.dart';
import 'package:my_app/moudels/app_bar.dart';
import 'package:my_app/screens/Home/add_a_product/splah-edit.dart';
import 'package:my_app/screens/Home/products/prosplash.dart';
import 'package:my_app/screens/Home/products_api/delete_product_api.dart';
import 'package:my_app/screens/Profile/profile_api.dart';
import 'package:my_app/screens/search/search%20api.dart';

import '../../constant.dart';

class searchresults extends StatefulWidget {
  const searchresults ({Key? key}) : super(key: key);

  @override
  _searchresultsState createState() => _searchresultsState();
}

class _searchresultsState extends State<searchresults> {

  late Future<List<Item>> futuresearch;

  @override
  void initState() {
    super.initState();
    futuresearch = getcategorydata(idcategory: '');
    // getImage(n: imageName);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: FutureBuilder<List<Item>>(
        future: futuresearch,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => splachedit(productIDD: idp,),),);

                  }, icon:Icon( Icons.edit,color: sandybrown,)),
                  IconButton(onPressed: (){
                    var D=deletepro(d1:idp);
                    if(D==200){
                      Navigator.pop(context);  // pop current page
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => myproducts(),
                        ),
                      );
                    }
                    //  Navigator.pushReplacement(
                    //    context,
                    // MaterialPageRoute(
                    //        builder: (context) => myproducts(),),);}
                  },
                      icon:Icon( Icons.delete,color: sandybrown,))
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
              child: Divider(thickness: 2.5,),
            ),
          ],
        ),
      ),
    ),
  );
}


