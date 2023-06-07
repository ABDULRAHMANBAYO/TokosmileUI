import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/modules/home/models/banner.dart';
import 'package:moniepoint_test/shared/widgets/cached_image.dart';

class BannerWidget extends StatelessWidget {
  final BannerModel banner;
  const BannerWidget({
    super.key,
    required this.banner,
  });

  @override
  Widget build(BuildContext context) {
    return MoniepointTestCacheImage(
      imgUrl: banner.image,
      height: 300.h,
      width: MediaQuery.of(context).size.width,
      memCacheHeight: null,
      memCacheWidth: null,
    );
  }
}
