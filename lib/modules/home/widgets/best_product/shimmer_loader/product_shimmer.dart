import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'product_item_shimmer.dart';
import 'title_shimmer.dart';

class ProductGridViewShimmer extends StatelessWidget {
  const ProductGridViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleShimmer(),
        GridView.builder(
          itemCount: 6,
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0.w,
              mainAxisSpacing: 20.h,
              childAspectRatio: 0.8),
          itemBuilder: (BuildContext context, int index) {
            return const ProductItemShimmer();
          },
        ),
      ],
    );
  }
}
