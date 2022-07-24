import 'package:adscase/data/models/users/geolocation.dart';

// address of user
class Address {
  Address({
    required this.geolocation,
    required this.city,
    required this.street,
    required this.number,
    required this.zipcode,
  });

  Geolocation geolocation;
  String city;
  String street;
  int number;
  String zipcode;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        geolocation: Geolocation.fromJson(json["geolocation"]),
        city: json["city"],
        street: json["street"],
        number: json["number"],
        zipcode: json["zipcode"],
      );
}
