import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/generated/l10n.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:spring/spring.dart';

class ShippingInfo extends StatelessWidget {
  final ProductModel productModel;
  const ShippingInfo({super.key, required this.productModel});

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
              S.current.shippingInformation,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black[5],
              ),
            ),
            SizedBox(height: 16.h),
            ShippingInfoItem(
              title: S.current.delivery,
              subTitle: "Shipping from Jarkata, Indonesia",
            ),
            SizedBox(height: 16.h),
            ShippingInfoItem(
              title: S.current.shipping,
              subTitle: "FREE International Shipping",
            ),
            SizedBox(height: 16.h),
            ShippingInfoItem(
              title: S.current.arrive,
              subTitle: "Estimated arrival on 25 - 27 Oct 2022",
            ),
          ],
        ),
      ),
    );
  }
}

class ShippingInfoItem extends StatelessWidget {
  final String title, subTitle;
  const ShippingInfoItem(
      {super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$title: ",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.grayScale[25],
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
