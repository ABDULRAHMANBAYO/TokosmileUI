import 'package:flutter/material.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;
  final BoxDecoration decoration;

  const ShimmerWidget.rectangle(
      {super.key,
      this.width = double.infinity,
      this.height,
      this.borderRadius = 0})
      : decoration = const BoxDecoration(shape: BoxShape.rectangle);

  const ShimmerWidget.circle(
      {super.key,
      this.width = double.infinity,
      this.height,
      this.borderRadius = 0})
      : decoration = const BoxDecoration(shape: BoxShape.circle);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.grayScale[10]!,
      highlightColor: Colors.white,
      child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius!),
            color: Colors.grey[400],
          )),
    );
  }
}
