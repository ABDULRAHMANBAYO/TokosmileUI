import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/shared/utils/asset_images.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_asset_image.dart';

class FilterDropDown extends StatefulWidget {
  const FilterDropDown({super.key});

  @override
  State<FilterDropDown> createState() => _FilterDropDownState();
}

class _FilterDropDownState extends State<FilterDropDown> {
  String _selectedItem = 'Popular';
  final List<String> _dropdownItems = ['Popular', 'Best Buy'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115.w,
      height: 44.h,
      decoration: BoxDecoration(
        color: AppColors.grayScale[50],
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(
          color: AppColors.grayScale[35]!,
          width: 1.w,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 1),
        child: DropdownButton<String>(
            items: [
              ..._dropdownItems.map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    e,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black[5],
                    ),
                  ),
                ),
              ),
            ],
            onChanged: (value) {
              setState(() {
                _selectedItem = value!;
              });
            },
            value: _selectedItem,
            underline: const SizedBox(),
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.black[5],
            ),
            icon: CustomAssetImage(
              url: AssetResources.arrowDownIcon,
              height: 16.h,
              width: 16.w,
            ),
            isExpanded: true),
      ),
    );
  }
}
