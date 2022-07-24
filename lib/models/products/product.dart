import 'package:adscase/models/products/category.dart';

// product entity
class Product {
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    this.image,
    this.rating,
  });

  int id;
  String title;
  double price;
  String description;
  Category category;
  String? image; // use '?' if the product doesn't have image
  Rating? rating; // use '?' if the product doesn't have rating

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category: categoryValues.map![json["category"]]!,
        image: json["image"],
        rating: Rating.fromJson(json["rating"]),
      );
}
