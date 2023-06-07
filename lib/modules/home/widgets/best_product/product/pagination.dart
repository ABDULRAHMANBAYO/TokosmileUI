import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/generated/l10n.dart';
import 'package:moniepoint_test/shared/utils/asset_images.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_asset_image.dart';
import 'package:spring/spring.dart';

class PaginationView extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int) onPageChange;
  const PaginationView(
      {super.key,
      required this.currentPage,
      required this.totalPages,
      required this.onPageChange});

  @override
  Widget build(BuildContext context) {
    List<int> getPageRange() {
      if (totalPages <= 5) {
        // If total pages are less than or equal to 5, show all pages
        return List.generate(totalPages, (index) => index + 2);
      } else {
        // If total pages are more than 5, show subset of pages with ellipsis
        List<int> pages = [1, 2, 3, 4];
        int endPage = currentPage + 2;

        if (endPage < totalPages) {
          pages.add(-1); // Ellipsis
        }

        return pages;
      }
    }

    return Spring.slide(
      slideType: SlideType.slide_in_bottom,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap:
                  currentPage > 1 ? () => onPageChange(currentPage - 1) : null,
              child: Container(
                height: 24.h,
                width: 24.w,
                decoration: BoxDecoration(
                  color: AppColors.grayScale[35],
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: CustomAssetImage(
                  url: AssetResources.arrowLeftIcon,
                  height: 18.h,
                  width: 18.w,
                ),
              ),
            ),
            SizedBox(width: 16.w),
            for (int i in getPageRange())
              InkWell(
                onTap: i > 0 ? () => onPageChange(i) : null,
                child: i > 0
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          i.toString(),
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: currentPage == i
                                ? AppColors.green
                                : AppColors.grayScale[25],
                          ),
                        ),
                      )
                    : Text(
                        '...',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: currentPage == i
                              ? AppColors.green
                              : AppColors.grayScale[25],
                        ),
                      ),
              ),
            SizedBox(width: 16.w),
            GestureDetector(
              onTap: currentPage < totalPages
                  ? () => onPageChange(currentPage + 1)
                  : null,
              child: Container(
                height: 24.h,
                width: 24.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grayScale[35]!.withOpacity(0.9),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: CustomAssetImage(
                  url: AssetResources.arrowRightIcon,
                  height: 18.h,
                  width: 18.w,
                ),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                S.current.seeMore,
                style: GoogleFonts.plusJakartaSans(
                    color: AppColors.green,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
