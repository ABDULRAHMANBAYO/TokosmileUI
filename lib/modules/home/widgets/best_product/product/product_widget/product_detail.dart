import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/product_widget/about_item.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/product_widget/buy_now_button.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/product_widget/description.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/pagination.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/product_widget/products.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/review/rating_review_sold.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/product_widget/seller_info.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/product_widget/shipping_info.dart';
import 'package:moniepoint_test/modules/home/widgets/custom_app_bar.dart';
import 'package:moniepoint_test/shared/utils/asset_images.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_asset_image.dart';
import 'package:moniepoint_test/shared/utils/custom_spacer_divider.dart';
import 'package:moniepoint_test/shared/widgets/appbar.dart';
import 'package:moniepoint_test/shared/widgets/cached_image.dart';
import 'package:spring/spring.dart';
import 'product_name.dart';
import '../review/rating_review.dart';

class ProductDetailView extends StatefulWidget {
  final ProductModel productModel;
  const ProductDetailView({super.key, required this.productModel});

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  final SpringController springController =
      SpringController(initialAnim: Motion.play);

  late ProductModel productModel;
  int imageIndex = 0;

  @override
  void initState() {
    productModel = widget.productModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MoniepointTestAppBar(
        backgroundColor: Colors.white,
        trailing: Row(
          children: [
            CustomAssetImage(
              url: AssetResources.filledHeartIcon,
              height: 32.h,
              width: 32.w,
            ),
            CustomAssetImage(
              url: AssetResources.shareIcon,
              height: 32.h,
              width: 32.w,
            ),
            Stack(
              alignment: Alignment.topRight,
              children: [
                CustomAssetImage(
                  url: AssetResources.shoppingCartIcon,
                  height: 32.h,
                  width: 32.w,
                ),
                const CustomBadge(
                  count: "9+",
                ),
              ],
            ),
            SizedBox(
              width: 16.w,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        // padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spring.slide(
              springController: springController,
              slideType: SlideType.slide_in_bottom,
              delay: const Duration(milliseconds: 100),
              animDuration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
              extend: 0,
              withFade: false,
              animStatus: (AnimStatus status) {
                debugPrint("AnimStatus: $status");
              },
              child: Container(
                height: 312.h,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: AppColors.grayScale[15],
                ),
                child: Row(
                  children: [
                    Column(
                      children: List.generate(
                        productModel.image.take(4).length,
                        (index) => GestureDetector(
                          onTap: () => setState(() => imageIndex = index),
                          child: Container(
                            height: 35.h,
                            width: 35.w,
                            margin: EdgeInsets.only(left: 16.w, top: 13.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              border: Border.all(
                                color: imageIndex == index
                                    ? AppColors.black[5]!
                                    : AppColors.grayScale[15]!,
                              ),
                              color: AppColors.grayScale[15],
                            ),
                            child: MoniepointTestCacheImage(
                              imgUrl: productModel.image[index],
                              height: 35.h,
                              width: 35.w,
                              borderRadius: 4,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 11.h, bottom: 11.h, right: 37.w),
                      child: MoniepointTestCacheImage(
                        imgUrl: productModel.image[imageIndex],
                        height: 291.h,
                        width: 255.w,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            StoreProductName(
              productModel: productModel,
            ),
            RatingReviewSoldWidget(
              productModel: productModel,
            ),
            AboutItemWidget(
              productModel: productModel,
            ),
            DescriptionWidget(
              productModel: productModel,
            ),
            const CustomSpaceDivider(),
            ShippingInfo(
              productModel: productModel,
            ),
            const CustomSpaceDivider(),
            SellerInfoWidget(
              productModel: productModel,
            ),
            const CustomSpaceDivider(),
            Spring.slide(
              slideType: SlideType.slide_in_bottom,
              child: RatingsAndReview(
                productModel: productModel,
              ),
            ),
            PaginationView(
              currentPage: 1,
              totalPages: 10,
              onPageChange: (int page) {},
            ),
            const ProductsGridView(),
          ],
        ),
      ),
      bottomNavigationBar: BuyNotButtonWidget(
        productModel: productModel,
        productQuantity: 1,
      ),
    );
  }
}
