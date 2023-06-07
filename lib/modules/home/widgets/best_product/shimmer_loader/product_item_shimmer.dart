import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/shared/utils/shimmer.dart';

class ProductItemShimmer extends StatelessWidget {
  const ProductItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 237.h,
      width: 163.5.w,
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerWidget.rectangle(
            height: 126.h,
            width: 165.w,
            borderRadius: 4.r,
          ),
          SizedBox(
            height: 11.h,
          ),
          ShimmerWidget.rectangle(
            height: 15.h,
            width: 27.w,
            borderRadius: 8.r,
          ),
          SizedBox(
            height: 4.h,
          ),
          ShimmerWidget.rectangle(
            height: 30.h,
            width: 165.w,
            borderRadius: 8.r,
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            children: [
              ShimmerWidget.rectangle(
                height: 20.h,
                width: 20.w,
                borderRadius: 4.r,
              ),
              SizedBox(
                width: 3.w,
              ),
              ShimmerWidget.rectangle(
                height: 13.h,
                width: 16.w,
                borderRadius: 8.r,
              ),
              SizedBox(
                width: 3.w,
              ),
              ShimmerWidget.rectangle(
                height: 13.h,
                width: 25.w,
                borderRadius: 8.r,
              ),
              const Spacer(),
              ShimmerWidget.rectangle(
                height: 23.h,
                width: 63.w,
                borderRadius: 8.r,
              ),
            ],
          )
        ],
      ),
    );
  }
}
