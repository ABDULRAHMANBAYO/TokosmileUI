import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/shared/utils/shimmer.dart';

class CategoryShimmer extends StatefulWidget {
  const CategoryShimmer({super.key});

  @override
  State<CategoryShimmer> createState() => _CategoryShimmerState();
}

class _CategoryShimmerState extends State<CategoryShimmer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShimmerWidget.rectangle(
          height: 40.h,
          width: 40.w,
          borderRadius: 8.r,
        ),
        SizedBox(
          height: 4.h,
        ),
        ShimmerWidget.rectangle(
          height: 15.h,
          width: 35.w,
          borderRadius: 8.r,
        )
      ],
    );
  }
}
