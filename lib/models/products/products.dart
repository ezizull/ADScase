import 'package:adscase/models/products/product.dart';

// products entity to get all product
class Products {
  Products({
    required this.product,
  });

  // all list of product
  List<Product> product;

  factory Products.fromJson(List<dynamic> json) => Products(
        product: List<Product>.from(json.map((x) => Product.fromJson(x))),
      );
}
