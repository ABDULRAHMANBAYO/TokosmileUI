import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/generated/l10n.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:spring/spring.dart';

class AboutItemWidget extends StatelessWidget {
  final ProductModel productModel;
  const AboutItemWidget({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Spring.slide(
      slideType: SlideType.slide_in_bottom,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AboutItem(
                  title: S.current.brand,
                  subTitle: productModel.brandName,
                ),
                SizedBox(width: 20.w),
                AboutItem(
                  title: S.current.color,
                  subTitle: productModel.color,
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AboutItem(
                  title: S.current.category,
                  subTitle: productModel.categoryName,
                ),
                SizedBox(width: 20.w),
                AboutItem(
                  title: S.current.material,
                  subTitle: productModel.material,
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AboutItem(
                  title: S.current.condition,
                  subTitle: productModel.condition,
                ),
                SizedBox(width: 20.w),
                AboutItem(
                  title: S.current.heavy,
                  subTitle: productModel.heavy,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AboutItem extends StatelessWidget {
  final String title, subTitle;
  const AboutItem({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$title: ",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.grayScale[20],
          ),
        ),
        SizedBox(width: 12.w),
        Text(
          subTitle,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.black[5],
          ),
        ),
      ],
    );
  }
}
