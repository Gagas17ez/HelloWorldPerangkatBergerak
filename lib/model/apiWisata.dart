// To parse this JSON data, do
//
//     final wisata = wisataFromJson(jsonString);

import 'dart:convert';

List<Wisata> wisataFromJson(String str) =>
    List<Wisata>.from(json.decode(str).map((x) => Wisata.fromJson(x)));

String wisataToJson(List<Wisata> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Wisata {
  Wisata({
    required this.id,
    required this.name,
    required this.dessc,
    required this.time,
    required this.price,
    required this.img1,
    required this.img2,
    required this.img3,
    required this.location,
    required this.open,
    required this.imageasset,
  });

  String? id;
  String? name;
  String? dessc;
  String? time;
  String price;
  String img1;
  String img2;
  String img3;
  String location;
  String open;
  String imageasset;

  factory Wisata.fromJson(Map<String, dynamic> json) => Wisata(
        id: json["id"],
        name: json["name"],
        dessc: json["dessc"],
        time: json["time"],
        price: json["price"],
        img1: json["img1"],
        img2: json["img2"],
        img3: json["img3"],
        location: json["location"],
        open: json["open"],
        imageasset: json["imageasset"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "dessc": dessc,
        "time": time,
        "price": price,
        "img1": img1,
        "img2": img2,
        "img3": img3,
        "location": location,
        "open": open,
        "imageasset": imageasset,
      };
}
