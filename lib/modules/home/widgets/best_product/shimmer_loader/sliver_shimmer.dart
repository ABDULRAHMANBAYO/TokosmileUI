import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/shimmer_loader/product_item_shimmer.dart';

class SliverGridViewShimmer extends StatelessWidget {
  const SliverGridViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0.w,
            mainAxisSpacing: 20.h,
            childAspectRatio: 0.8),
        itemBuilder: (BuildContext context, int index) {
          return const ProductItemShimmer();
        });
  }
}
