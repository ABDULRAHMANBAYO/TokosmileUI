import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/generated/l10n.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_extension.dart';
import 'package:spring/spring.dart';

class RatingReviewSoldWidget extends StatefulWidget {
  final ProductModel productModel;
  const RatingReviewSoldWidget({super.key, required this.productModel});

  @override
  State<RatingReviewSoldWidget> createState() => _RatingReviewSoldWidgetState();
}

class _RatingReviewSoldWidgetState extends State<RatingReviewSoldWidget> {
  String selectedType = S.current.aboutItem;
  @override
  Widget build(BuildContext context) {
    return Spring.slide(
      slideType: SlideType.slide_in_bottom,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Icon(
                        Icons.star,
                        color: AppColors.yellow,
                        size: 17.sp,
                      ),
                    ),
                    Text(
                      "${widget.productModel.totalRating} ${S.current.ratings}",
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grayScale[20]),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Badge(
                    backgroundColor: AppColors.grayScale[20]!,
                  ),
                ),
                Text(
                  getDisplayText(
                      widget.productModel.reviewCount, S.current.reviews),
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grayScale[20]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Badge(
                    backgroundColor: AppColors.grayScale[20]!,
                  ),
                ),
                Text(
                  getDisplayText(
                      widget.productModel.quantitySold, S.current.sold),
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grayScale[20]),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 23.w,
                ),
                tabItem(
                    title: S.current.aboutItem,
                    isSelected:
                        selectedType == S.current.aboutItem ? true : false),
                SizedBox(
                  width: 65.w,
                ),
                tabItem(
                    title: S.current.reviews,
                    isSelected:
                        selectedType == S.current.reviews ? true : false)
              ],
            ),
            SizedBox(height: 15.h),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1.5.h,
                  decoration: BoxDecoration(
                    color: AppColors.grayScale[35],
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),
                Container(
                  width: 35 / 100 * MediaQuery.of(context).size.width,
                  height: 2.h,
                  decoration: BoxDecoration(
                    color: AppColors.green,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }

  Widget tabItem({required String title, required bool isSelected}) {
    return Text(
      title,
      style: GoogleFonts.plusJakartaSans(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: isSelected ? AppColors.green : AppColors.grayScale[20],
      ),
    );
  }
}
