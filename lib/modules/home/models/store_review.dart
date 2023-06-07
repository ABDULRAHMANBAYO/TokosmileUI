import 'package:moniepoint_test/shared/models/user.dart';

class StoreReview {
  final String id;
  final User? user;
  final num rating;
  final String review;
  final String createdAt;
  final List<String> tags;

  StoreReview({
    required this.id,
    required this.user,
    required this.rating,
    required this.review,
    required this.createdAt,
    required this.tags,
  });

  factory StoreReview.fromJson(Map<String, dynamic> json) => StoreReview(
        id: json['id'],
        user: json['user'] == null ? null : User.fromJson(json['user']),
        rating: json['rating'],
        review: json['review'] ?? '',
        createdAt: json['createdAt'],
        tags: json['tags'] == null ? [] : List<String>.from(json['tags']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'user': user == null ? null : user!.toJson(),
        'rating': rating,
        'review': review,
        'createdAt': createdAt,
        'tags': tags,
      };
}
