import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/configs/app_startup.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'package:moniepoint_test/modules/home/routes/route.dart';
import 'package:moniepoint_test/shared/navigation/navigation_service.dart';
import 'package:moniepoint_test/shared/utils/asset_images.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_asset_image.dart';
import 'package:moniepoint_test/shared/widgets/cached_image.dart';
import 'product_info.dart';

class ProductItemWidget extends StatelessWidget {
  final ProductModel productModel;
  const ProductItemWidget({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<NavigationService>().toWithParameters(
          routeName: HomeRoutes.productDetail,
          args: {"productModel": productModel},
        );
      },
      child: Container(
        height: 237.h,
        width: 163.5.w,
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 126.h,
                  width: 168.w,
                  padding: EdgeInsets.only(top: 6.h),
                  decoration: BoxDecoration(
                    color: AppColors.grayScale[55],
                  ),
                  child: MoniepointTestCacheImage(
                    height: 126,
                    imgUrl: productModel.image.first,
                    boxFit: BoxFit.fill,
                  ),
                ),
                ProductInfoWidget(
                  productModel: productModel,
                ),
              ],
            ),
            Container(
              height: 31.h,
              width: 35.w,
              color: AppColors.grayScale[15],
              child: CustomAssetImage(
                url: !productModel.isFavorite
                    ? AssetResources.heartIcon
                    : AssetResources.filledHeartIcon,
                height: 20.h,
                width: 20.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
