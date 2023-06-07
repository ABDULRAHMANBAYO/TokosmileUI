import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'package:moniepoint_test/shared/utils/asset_images.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_asset_image.dart';
import 'package:spring/spring.dart';

class StoreProductName extends StatelessWidget {
  final ProductModel productModel;
  const StoreProductName({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Spring.slide(
      slideType: SlideType.slide_in_bottom,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 13.h,
            ),
            Row(
              children: [
                CustomAssetImage(
                    url: AssetResources.shopIcon, height: 16.h, width: 16.w),
                Text(
                  productModel.shopName,
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grayScale[20]),
                ),
              ],
            ),
            SizedBox(
              height: 13.h,
            ),
            SizedBox(
              width: 289.w,
              child: Text(
                productModel.description,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black[5],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
          ],
        ),
      ),
    );
  }
}
