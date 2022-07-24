import 'package:adscase/models/users/address.dart';
import 'package:adscase/models/users/name.dart';

// user entity
class User {
  User({
    required this.address,
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.name,
    required this.phone,
    this.v,
  });

  Address address;
  int id;
  String email;
  String username;
  String password;
  Name name;
  String phone;
  int? v;

  factory User.fromJson(Map<String, dynamic> json) => User(
        address: Address.fromJson(json["address"]),
        id: json["id"],
        email: json["email"],
        username: json["username"],
        password: json["password"],
        name: Name.fromJson(json["name"]),
        phone: json["phone"],
        v: json["__v"],
      );
}
