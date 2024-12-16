// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  ProfileModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.email,
    required this.image,
    required this.role,
    this.emailVerifiedAt,
    this.phoneVerifiedAt,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String firstName;
  String lastName;
  String phone;
  String email;
  String image;
  String role;
  dynamic emailVerifiedAt;
  dynamic phoneVerifiedAt;
  String status;
  DateTime createdAt;
  DateTime updatedAt;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    phone: json["phone"],
    email: json["email"],
    image: json["image"],
    role: json["role"],
    emailVerifiedAt: json["email_verified_at"],
    phoneVerifiedAt: json["phone_verified_at"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "phone": phone,
    "email": email,
    "image": image,
    "role": role,
    "email_verified_at": emailVerifiedAt,
    "phone_verified_at": phoneVerifiedAt,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
