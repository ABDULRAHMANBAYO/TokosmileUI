import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/shared/utils/shimmer.dart';

class TitleShimmer extends StatelessWidget {
  const TitleShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShimmerWidget.rectangle(
            height: 15.h,
            width: 27.w,
            borderRadius: 8.r,
          ),
          const Spacer(),
          ShimmerWidget.rectangle(
            height: 15.h,
            width: 27.w,
            borderRadius: 8.r,
          ),
        ],
      ),
    );
  }
}
