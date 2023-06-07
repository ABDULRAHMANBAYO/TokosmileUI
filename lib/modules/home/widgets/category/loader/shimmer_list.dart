import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/modules/home/widgets/category/loader/shimmer_loader.dart';

class CategoryShimmerList extends StatelessWidget {
  const CategoryShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.w),
      child: SizedBox(
        height: 62.h,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            width: 35.w,
          ),
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return const CategoryShimmer();
          },
        ),
      ),
    );
  }
}
