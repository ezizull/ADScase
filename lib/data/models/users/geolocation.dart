// geolocation of user address
class Geolocation {
  Geolocation({
    required this.lat,
    required this.long,
  });

  String lat;
  String long;

  factory Geolocation.fromJson(Map<String, dynamic> json) => Geolocation(
        lat: json["lat"],
        long: json["long"],
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "long": long,
      };
}
