import 'package:flutter/material.dart';
import 'package:my_app/screens/Home/products/product_details.dart';
import '../../../constant.dart';
import 'product.dart';

class producte_item extends StatelessWidget {
  final Products product;
  const producte_item({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
//Widget _buildCard(String name, String price, String imagePath, bool yourProduct,
//    bool isFavorit, context) {
        GestureDetector(
      // padding: const EdgeInsets.only(top: 5, bottom: 5.0, right: 5.0, left: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => product_detail(
                  assetPath: product.imgName,
                  productPrice: product.price,
                  productName: product.name)));
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
                    product.likeesCount == 1
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
              Hero(
                tag: '$product.imgName',
                child: Container(
                  height: 75.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('$product.imgName'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                " $product.price",
                // style: kDescriptionStyle2,
              ),
              Text(
                "$product.name",
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
                    if (product.id != product.userId) ...[
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
                    if (product.id == product.userId) ...[
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
}
