import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/generated/l10n.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'package:moniepoint_test/shared/utils/asset_images.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_asset_image.dart';
import 'package:spring/spring.dart';

class SellerInfoWidget extends StatelessWidget {
  final ProductModel productModel;
  const SellerInfoWidget({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Spring.slide(
      slideType: SlideType.slide_in_bottom,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.current.sellerInformation,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black[5],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      height: 65.h,
                      width: 65.w,
                      padding: EdgeInsets.only(left: 7.w),
                      decoration: BoxDecoration(
                          color: AppColors.grayScale[30],
                          shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          productModel.shopName,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.black[5],
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    Container(
                      height: 18.h,
                      width: 18.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.w,
                        ),
                        borderRadius: BorderRadius.circular(18.r),
                        color: AppColors.grayScale[30],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productModel.shopName,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black[5],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Text(
                          S.current.active("5 Min ago"),
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grayScale[25],
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                          child: VerticalDivider(
                            color: AppColors.grayScale[25],
                            thickness: 0.5.w,
                          ),
                        ),
                        Text(
                          S.current.feedbackRate("96.7%"),
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grayScale[25],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 75.w),
              child: TextButton.icon(
                onPressed: () {},
                icon: CustomAssetImage(
                  url: AssetResources.shopIcon,
                  height: 20.h,
                  width: 20.w,
                  color: AppColors.green,
                ),
                label: Text(
                  S.current.visitStore,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.green,
                  ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                      (states) {
                    // Color borderColor = states
                    //             .contains(MaterialState.disabled) ||
                    //         onPressed == null
                    //     ? (color ?? AppColors.green).withOpacity(0.5)
                    //     : color ?? AppColors.green;
                    return RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      side: BorderSide(width: 1, color: AppColors.green),
                    );
                  }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
