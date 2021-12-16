class Product {
  String? name;
  String? imageName;
  int? amount;
  int? timestamp_1;
  int? timestamp_2;
  int? timestamp_3;
  int? timestamp_4;
  double? price_1;
  double? price_2;
  double? price_3;
  double? price_4;

  Product.fromMap(Map<dynamic, dynamic> map) {
    name = map['name'];
    imageName = map['imageName'];
    amount = map['amount'];
    timestamp_1 = map['timestamp_1'];
    timestamp_2 = map['timestamp_2'];
    timestamp_3 = map['timestamp_3'];
    price_1 = map['price_1'];
    price_2 = map['price_2'];
    price_3 = map['price_3'];
  }
}
