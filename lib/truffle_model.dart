import 'dart:convert';

List<Truffle> truffleFromJson(String str) =>
    List<Truffle>.from(json.decode(str).map((x) => Truffle.fromMap(x)));

class Truffle {
  int id;
  String title;
  String description;
  String imageUrl;
  int rating;
  int price;

  Truffle(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.rating,
      required this.price});

  factory Truffle.fromMap(Map<String, dynamic> json) => Truffle(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        imageUrl: json["image_url"],
        rating: json["rating"],
        price: json["price"],
      );
}
