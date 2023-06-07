import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_extension.dart';

class RatingIndicatorItem extends StatelessWidget {
  final num rating;
  final int ratingLabel;
  const RatingIndicatorItem(
      {super.key, required this.rating, required this.ratingLabel});

  @override
  Widget build(BuildContext context) {
    final double containerWidth = 132.w;
    return Padding(
      padding: EdgeInsets.only(bottom: 22.h),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: AppColors.yellow,
            size: 17.sp,
          ),
          SizedBox(width: 9.65.w),
          Text(
            '$ratingLabel',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          12.horizontalSpace,
          Stack(
            children: [
              Container(
                width: 132.w,
                height: 6.h,
                decoration: BoxDecoration(
                  color: AppColors.grayScale[35],
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
              Container(
                width: (rating / 100) * ratingLabel,
                height: 6.h,
                decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
            ],
          ),
          SizedBox(width: 3.w),
          Text(
            getDisplayText(rating, ""),
            // '${rating > 0 ? rating.toStringAsFixed(0) : 0}',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
