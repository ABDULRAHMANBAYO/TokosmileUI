import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class AppStyles {
  static var focusBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.r),
    borderSide: BorderSide(color: AppColors.grayScale[20]!, width: 1.w),
  );
  static var focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.r),
    borderSide: BorderSide(color: AppColors.grayScale[20]!, width: 1.w),
  );

  static var focusErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.r),
    borderSide: const BorderSide(color: Colors.red),
  );
}
