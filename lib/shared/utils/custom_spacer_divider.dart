import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';

class CustomSpaceDivider extends StatelessWidget {
  final double? height;
  final double? width;
  const CustomSpaceDivider({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width ?? 16.w, vertical: height ?? 16.h),
          child: Divider(
            color: AppColors.grayScale[20],
          ),
        ),
      ],
    );
  }
}
