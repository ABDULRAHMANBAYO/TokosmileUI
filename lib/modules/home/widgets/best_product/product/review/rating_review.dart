import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/generated/l10n.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/review/moniepoint_star_rating.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/review/rating_indicator.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/review/review.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_extension.dart';
import 'package:moniepoint_test/shared/widgets/cached_image.dart';

class RatingsAndReview extends StatelessWidget {
  final ProductModel productModel;
  const RatingsAndReview({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.current.ratingsAndReviews,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.black[5],
            ),
          ),
          SizedBox(height: 29.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: productModel.totalRating.toString(),
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 32.sp,
                            color: AppColors.black[20],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: '/ 5.0',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14.sp,
                            color: AppColors.grayScale[25],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 19.05.h),
                  MoniepointStarRating(
                    itemSize: 20.w,
                    initialRating: 3.9,
                  ),
                  SizedBox(height: 38.h),
                  Text(
                    getDisplayText(productModel.reviewCount, S.current.reviews),
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grayScale[25]),
                  ),
                ],
              ),
              SizedBox(width: 15.w),
              Expanded(
                child: RatingIndicator(
                  totalRating: productModel.totalRating,
                  // ratingLabel: productModel.totalRating,
                ),
              ),
            ],
          ),
          Text(
            S.current.reviewWithImages,
            style: GoogleFonts.plusJakartaSans(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black[5]),
          ),
          SizedBox(height: 10.h),
          Row(
            children: productModel.image
                .take(4)
                .map(
                  (e) => Container(
                    width: 67.w,
                    height: 64.h,
                    margin: EdgeInsets.only(
                        right: productModel.image.indexOf(e) == 3 ? 0.w : 25.w),
                    decoration: BoxDecoration(
                        color: AppColors.grayScale[45],
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        MoniepointTestCacheImage(
                          imgUrl: e,
                          width: 67.w,
                          height: 64.h,
                          borderRadius: 8,
                        ),
                        Visibility(
                          visible: productModel.image.indexOf(e) == 3 &&
                              productModel.image.length > 4,
                          child: Text(
                            '${productModel.image.length - 4}+',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          SizedBox(height: 24.h),
          Divider(
            color: AppColors.grayScale[20],
          ),
          SizedBox(height: 16.h),
          ReviewWidget(
            productModel: productModel,
          ),
        ],
      ),
    );
  }
}
