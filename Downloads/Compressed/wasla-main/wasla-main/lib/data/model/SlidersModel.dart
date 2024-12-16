// To parse this JSON data, do
//
//     final slidersModel = slidersModelFromJson(jsonString);

import 'dart:convert';

SlidersModel slidersModelFromJson(String str) => SlidersModel.fromJson(json.decode(str));

String slidersModelToJson(SlidersModel data) => json.encode(data.toJson());

class SlidersModel {
  SlidersModel({
    required this.msg,
    required this.status,
    required this.sliders,
  });

  String msg;
  bool status;
  List<Slider> sliders;

  factory SlidersModel.fromJson(Map<String, dynamic> json) => SlidersModel(
    msg: json["msg"],
    status: json["status"],
    sliders: List<Slider>.from(json["sliders"].map((x) => Slider.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "msg": msg,
    "status": status,
    "sliders": List<dynamic>.from(sliders.map((x) => x.toJson())),
  };
}

class Slider {
  Slider({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.image,
    required this.imageUrl,
  });

  int id;
  DateTime createdAt;
  DateTime updatedAt;
  String image;
  String imageUrl;

  factory Slider.fromJson(Map<String, dynamic> json) => Slider(
    id: json["id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    image: json["image"],
    imageUrl: json["image_url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "image": image,
    "image_url": imageUrl,
  };
}
