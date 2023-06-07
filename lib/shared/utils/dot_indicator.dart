import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';

class DotIndicator extends StatefulWidget {
  final bool isActive;
  final Color? activeColor, inactiveColor;

  const DotIndicator(
      {super.key,
      required this.isActive,
      this.activeColor,
      this.inactiveColor});
  @override
  State<DotIndicator> createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  @override
  Widget build(BuildContext context) {
    return widget.isActive
        ? AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            height: 3.r,
            width: 14.r,
            margin: EdgeInsets.symmetric(horizontal: 2.r),
            decoration: BoxDecoration(
              color: widget.activeColor ?? AppColors.black[5],
              borderRadius: BorderRadius.all(
                Radius.circular(8.r),
              ),
            ),
          )
        : AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            height: 3.r,
            width: 3.r,
            margin: EdgeInsets.symmetric(horizontal: 2.r),
            decoration: BoxDecoration(
              color: widget.inactiveColor ?? AppColors.grayScale[20],
              borderRadius: BorderRadius.all(
                Radius.circular(3.r),
              ),
            ),
          );
  }
}
