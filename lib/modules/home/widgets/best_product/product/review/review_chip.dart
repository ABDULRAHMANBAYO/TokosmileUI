import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';

class ReviewChip extends StatelessWidget {
  final String title;
  const ReviewChip({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      backgroundColor: AppColors.green.withOpacity(0.07),
      side: BorderSide(color: AppColors.green),
      label: Text(
        title,
        style: GoogleFonts.plusJakartaSans(
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.green),
      ),
      onPressed: () {},
    );
  }
}
