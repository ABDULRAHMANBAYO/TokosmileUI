import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/modules/home/models/category.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/widgets/cached_image.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AppColors.grayScale[15],
          ),
          child: MoniepointTestCacheImage(
            imgUrl: category.icon,
            boxFit: BoxFit.scaleDown,
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          category.name,
          style: GoogleFonts.plusJakartaSans(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.grayScale[20]),
        ),
      ],
    );
  }
}
