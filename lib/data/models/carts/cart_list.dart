// list of cart
class CartList {
  CartList({
    required this.productId,
    required this.quantity,
  });

  int productId;
  int quantity;

  factory CartList.fromJson(Map<String, dynamic> json) => CartList(
        productId: json["productId"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "productId": productId,
        "quantity": quantity,
      };
}
