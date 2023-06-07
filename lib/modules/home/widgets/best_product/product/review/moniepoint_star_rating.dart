import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';

class MoniepointStarRating extends StatelessWidget {
  final double itemSize;
  final bool ignoreGestures;
  final double initialRating;
  final void Function(double)? onRatingUpdate;

  const MoniepointStarRating({
    super.key,
    this.onRatingUpdate,
    required this.itemSize,
    this.initialRating = 0,
    this.ignoreGestures = true,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: initialRating,
      minRating: 0,
      direction: Axis.horizontal,
      allowHalfRating: true,
      glow: false,
      ignoreGestures: ignoreGestures,
      itemCount: 5,
      itemSize: itemSize,
      unratedColor: AppColors.grayScale[40],
      itemPadding: EdgeInsets.symmetric(horizontal: 1.w),
      itemBuilder: (_, index) => Icon(
        Icons.star,
        color: AppColors.yellow,
        size: 17.sp,
      ),
      onRatingUpdate: (val) {
        if (onRatingUpdate != null) onRatingUpdate!(val);
      },
    );
  }
}
