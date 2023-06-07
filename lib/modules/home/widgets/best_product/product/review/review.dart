import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/generated/l10n.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/review/filter_drop_down.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_extension.dart';
import 'review_item.dart';

class ReviewWidget extends StatefulWidget {
  final ProductModel productModel;
  const ReviewWidget({super.key, required this.productModel});

  @override
  State<ReviewWidget> createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  late ProductModel productModel;
  @override
  void initState() {
    productModel = widget.productModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.topReviews,
          style: GoogleFonts.plusJakartaSans(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.black[5]),
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          children: [
            Text(
              S.current.showingReviews(
                3,
                getDisplayText(
                    productModel.reviewCount, S.current.reviews.toLowerCase()),
              ),
              style: GoogleFonts.plusJakartaSans(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grayScale[25]),
            ),
            const Spacer(),
            const FilterDropDown(),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Column(
          children: productModel.reviews
              .map(
                (e) => ReviewItem(storeReview: e),
              )
              .toList(),
        )
      ],
    );
  }
}
