import 'dart:convert';
import 'base.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());

class User extends BaseModel {
  User({
    this.id,
    this.email,
    this.lastName,
    this.firstName,
    this.fullName,
    this.imageUrl,
  });

  String? id;
  String? email;
  String? lastName;
  String? firstName;
  String? fullName;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? status;
  String? imageUrl;
  String? dateOfBirth;
  String? gender;
  String? phoneNumber;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        email: json["email"],
        lastName: json["last_name"],
        firstName: json["first_name"],
        fullName:
            json["full_name"] ?? "${json["first_name"]} ${json["last_name"]}",
        imageUrl: json["profile_pic"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "_id": id,
        "email": email,
        "last_name": lastName,
        "first_name": firstName,
        "image_url": imageUrl,
      };
}
