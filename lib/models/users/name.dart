// name of user
class Name {
  Name({
    required this.firstname,
    this.lastname,
  });

  String firstname;
  String? lastname; // use '?' if the user doesn't have lastname

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        firstname: json["firstname"],
        lastname: json["lastname"],
      );

  Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
      };
}
