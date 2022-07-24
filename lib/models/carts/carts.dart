import 'package:adscase/models/carts/cart.dart';

// all of chart
class Carts {
  Carts({
    required this.cart,
  });

  List<Cart> cart;

  factory Carts.fromJson(List<dynamic> json) => Carts(
        cart: List<Cart>.from(json.map((x) => Cart.fromJson(x))),
      );
}
