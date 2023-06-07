import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/generated/l10n.dart';
import 'package:moniepoint_test/shared/utils/asset_images.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_asset_image.dart';
import 'package:moniepoint_test/shared/widgets/forms/search_input.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Expanded(
            child: SearchInput(
              textPlaceholder: S.current.search,
              prefixWidget: CustomAssetImage(
                  url: AssetResources.searchIcon, height: 20.h, width: 20.w),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Stack(
            alignment: Alignment.topRight,
            children: [
              CustomAssetImage(
                  url: AssetResources.shoppingCartIcon,
                  height: 25.h,
                  width: 25.w),
              const CustomBadge(
                count: "2",
              )
            ],
          ),
          SizedBox(
            width: 20.w,
          ),
          Stack(
            alignment: Alignment.topRight,
            children: [
              CustomAssetImage(
                  url: AssetResources.messageIcon, height: 25.h, width: 25.w),
              const CustomBadge(
                count: "9+",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomBadge extends StatelessWidget {
  final String count;
  const CustomBadge({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      width: 15.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.pink,
        borderRadius: BorderRadius.all(
          Radius.circular(2.r),
        ),
      ),
      child: Text(
        count,
        style: GoogleFonts.plusJakartaSans(
            fontSize: 8.sp, fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }
}
