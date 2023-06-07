import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/generated/l10n.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'package:moniepoint_test/shared/utils/asset_images.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_asset_image.dart';
import 'package:moniepoint_test/shared/utils/custom_spacer_divider.dart';
import 'package:spring/spring.dart';

class DescriptionWidget extends StatefulWidget {
  final ProductModel productModel;
  const DescriptionWidget({super.key, required this.productModel});

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Spring.slide(
      slideType: SlideType.slide_in_bottom,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSpaceDivider(
              width: 0.w,
            ),
            Text(
              S.current.description,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black[5],
              ),
            ),
            SizedBox(height: 16.h),
            Column(
              children: widget.productModel.productFeature
                  .map(
                    (e) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              height: 5.h,
                              width: 5.w,
                              margin: EdgeInsets.symmetric(horizontal: 4.w),
                              decoration: BoxDecoration(
                                color: AppColors.grayScale[20],
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                            ),
                            SizedBox(width: 6.h),
                            Expanded(
                              child: Text(
                                e,
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grayScale[25],
                                ),
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.h),
                      ],
                    ),
                  )
                  .toList(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Text(
                S.current.chatWithUs,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grayScale[25],
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  S.current.seeLess,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.green,
                  ),
                ),
                SizedBox(
                  width: 4.w,
                ),
                CustomAssetImage(
                    url: AssetResources.arrowUpIcon, height: 16.h, width: 16.w)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
