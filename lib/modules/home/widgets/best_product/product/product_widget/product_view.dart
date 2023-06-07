import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'product_item.dart';

class ProductWidget extends StatelessWidget {
  final List<ProductModel> products;
  const ProductWidget({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      shrinkWrap: true,
      padding: EdgeInsets.only(top: 20.h, bottom: 150.h),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0.w,
          mainAxisSpacing: 20.h,
          childAspectRatio: 0.8),
      itemBuilder: (BuildContext context, int index) {
        return ProductItemWidget(
          productModel: products[index],
        );
      },
    );
  }
}
