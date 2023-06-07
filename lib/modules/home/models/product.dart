import 'dart:convert';

import 'package:moniepoint_test/modules/home/models/store_review.dart';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(
    json.decode(str).map((x) => ProductModel.fromJson(x)));

String productModelToJson(List<ProductModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModel {
  String id;
  List<String> image;
  String name;
  String description;
  String shopName;
  String categoryName;
  String color;
  String brandName;
  String material;
  String condition;
  String heavy;
  List<String> productFeature;
  num totalRating;
  num quantitySold;
  num amount;
  int reviewCount;
  bool isFavorite;
  List<StoreReview> reviews;

  ProductModel({
    required this.id,
    required this.image,
    required this.name,
    required this.description,
    required this.shopName,
    required this.categoryName,
    required this.color,
    required this.brandName,
    required this.material,
    required this.condition,
    required this.heavy,
    required this.productFeature,
    required this.totalRating,
    required this.quantitySold,
    required this.amount,
    required this.reviewCount,
    required this.isFavorite,
    required this.reviews,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        image: List<String>.from(json["image"].map((x) => x)),
        name: json["name"],
        description: json["description"],
        shopName: json["shopName"],
        categoryName: json["categoryName"],
        color: json["color"],
        brandName: json["brandName"],
        material: json["material"],
        condition: json["condition"],
        heavy: json["heavy"],
        productFeature: List<String>.from(json["productFeature"].map((x) => x)),
        totalRating: json["totalRating"],
        quantitySold: json["quantitySold"],
        amount: json["amount"],
        reviewCount: json["reviewCount"],
        isFavorite: json["isFavorite"],
        reviews: List<StoreReview>.from(
            json["reviews"].map((x) => StoreReview.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": List<dynamic>.from(image.map((x) => x)),
        "name": name,
        "description": description,
        "shopName": shopName,
        "categoryName": categoryName,
        "color": color,
        "brandName": brandName,
        "material": material,
        "condition": condition,
        "heavy": heavy,
        "totalRating": totalRating,
        "quantitySold": quantitySold,
        "amount": amount,
        "reviewCount": reviewCount,
        "isFavorite": isFavorite,
        "reviews": List<dynamic>.from(reviews.map((x) => x.toJson())),
      };
}
