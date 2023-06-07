import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moniepoint_test/shared/utils/shimmer.dart';

enum ImageType { svg, png }

class MoniepointTestCacheImage extends StatelessWidget {
  final String imgUrl;
  final double? height;
  final double? width;
  final BoxFit boxFit;
  final double borderRadius;
  final Widget? errorWidget;
  final int? memCacheHeight;
  final int? memCacheWidth;

  const MoniepointTestCacheImage(
      {Key? key,
      this.height,
      this.width,
      required this.imgUrl,
      this.borderRadius = 0,
      this.boxFit = BoxFit.cover,
      this.errorWidget,
      this.memCacheHeight = 400,
      this.memCacheWidth = 400})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: getImageType(imgUrl) == ImageType.svg
          ? svgImageViewer()
          : CachedNetworkImage(
              imageUrl: imgUrl,
              height: height,
              width: width,
              fit: boxFit,
              memCacheHeight: memCacheHeight,
              memCacheWidth: memCacheWidth,
              placeholder: (context, url) => const ShimmerWidget.rectangle(),
              errorWidget: (context, url, error) =>
                  errorWidget ?? const ShimmerWidget.rectangle(),
            ),
    );
  }

  Widget svgImageViewer() {
    return SvgPicture.network(
      imgUrl,
      height: height,
      width: width,
      fit: boxFit,
    );
  }

  ImageType getImageType(String url) {
    var path = url.split(".");
    String ext = path[path.length - 1];
    if (ext == "svg") return ImageType.svg;
    return ImageType.png;
  }
}
