import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_extension.dart';

class ProductInfoWidget extends StatelessWidget {
  final ProductModel productModel;
  final bool isFromProductDetails;
  const ProductInfoWidget(
      {super.key,
      required this.productModel,
      this.isFromProductDetails = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isFromProductDetails?0: 7.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 11.h,
          ),
          Text(
            productModel.name,
            style: GoogleFonts.plusJakartaSans(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.grayScale[20]),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            productModel.description,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.black[5],
            ),
          ),
          SizedBox(
            height: 23.h,
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child: Icon(
                    Icons.star,
                    color: AppColors.yellow,
                    size: 12.sp,
                  ),
                ),
                Text(
                  productModel.totalRating.toString(),
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grayScale[20]),
                ),
                SizedBox(
                  height: 10.h,
                  child: VerticalDivider(
                    color: AppColors.grayScale[20],
                    thickness: 0.5.w,
                  ),
                ),
                Text(
                  productModel.reviewCount.toString(),
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grayScale[20]),
                ),
                const Spacer(),
                Text(
                  productModel.amount.toDouble().formatCurrency().toString(),
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.green),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
