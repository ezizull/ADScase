import 'package:adscase/data/models/carts/cart_list.dart';

// a chart entity
class Cart {
  // already a user don't need userid
  Cart({
    required this.id,
    required this.date,
    required this.cartlist,
    required this.v,
  });

  int id;
  DateTime date;
  List<CartList> cartlist;
  int v;

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        cartlist: List<CartList>.from(
            json["products"].map((x) => CartList.fromJson(x))),
        v: json["__v"],
      );
}
