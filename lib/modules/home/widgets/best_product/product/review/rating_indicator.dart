import 'package:flutter/material.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/review/rating_indicator_item.dart';

class RatingIndicator extends StatelessWidget {
  final num totalRating;
  const RatingIndicator({super.key, required this.totalRating});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      RatingIndicatorItem(ratingLabel: 5, rating: 1500),
      RatingIndicatorItem(ratingLabel: 4, rating: 710),
      RatingIndicatorItem(ratingLabel: 3, rating: 140),
      RatingIndicatorItem(ratingLabel: 2, rating: 10),
      RatingIndicatorItem(ratingLabel: 1, rating: 4),
    ]
        // List.generate(
        //   5,
        //   (index) => RatingIndicatorItem(
        //     rating: 70,
        //     ratingLabel: index + 1,
        //   ),
        // ),
        );
  }
}
