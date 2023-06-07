import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/generated/l10n.dart';
import 'package:moniepoint_test/modules/home/models/store_review.dart';
import 'package:moniepoint_test/shared/utils/asset_images.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_asset_image.dart';
import 'package:moniepoint_test/shared/utils/custom_extension.dart';
import 'package:moniepoint_test/shared/widgets/cached_image.dart';
import 'review_chip.dart';

class ReviewItem extends StatelessWidget {
  final StoreReview storeReview;
  const ReviewItem({super.key, required this.storeReview});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            MoniepointTestCacheImage(
                imgUrl: storeReview.user!.imageUrl!, height: 30.h, width: 30.w),
            SizedBox(
              width: 10.w,
            ),
            Text(
              "${storeReview.user!.firstName!} ${replaceWithAsterisk(storeReview.user!.lastName!, 2, 4)}",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.black[5],
              ),
            ),
            const Spacer(),
            Icon(
              Icons.star,
              color: AppColors.yellow,
              size: 20.sp,
            ),
            SizedBox(
              width: 5.65.w,
            ),
            Text(
              storeReview.rating.toString(),
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.black[5],
              ),
            ),
            SizedBox(
              width: 18.w,
            ),
            CustomAssetImage(
                url: AssetResources.moreIcon, height: 24.h, width: 24.w)
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Wrap(
            children: storeReview.tags
                .take(3)
                .map(
                  (e) => Padding(
                    padding: EdgeInsets.only(
                      right: storeReview.tags.indexOf(e) == 2 ? 0 : 4.w,
                    ),
                    child: ReviewChip(
                      title: e,
                    ),
                  ),
                )
                .toList()),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          width: 309.w,
          child: Text(
            storeReview.review,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.black[5],
            ),
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: CustomAssetImage(
                url: AssetResources.helpIcon,
                height: 18.h,
                width: 18.w,
              ),
              label: Text(
                S.current.helpful,
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.green),
              ),
            ),
            Text(
              "Yesterdays",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.grayScale[25],
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Divider(
          color: AppColors.grayScale[35],
          thickness: 1,
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
