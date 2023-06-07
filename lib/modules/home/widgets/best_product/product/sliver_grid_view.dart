import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/product_widget/product_item.dart';

class SliverProductGridView extends StatelessWidget {
  final List<ProductModel> products;
  const SliverProductGridView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(top: 20.h, bottom: 150.h),
      sliver: SliverGrid.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0.w,
              mainAxisSpacing: 20.h,
              childAspectRatio: 0.8),
          itemBuilder: (BuildContext context, int index) {
            return ProductItemWidget(
              productModel: products[index],
            );
          }),
    );
  }
}
