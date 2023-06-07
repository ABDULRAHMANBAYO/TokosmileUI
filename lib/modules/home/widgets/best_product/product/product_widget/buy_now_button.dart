import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/generated/l10n.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'package:moniepoint_test/shared/utils/asset_images.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_asset_image.dart';
import 'package:moniepoint_test/shared/utils/custom_extension.dart';

class BuyNotButtonWidget extends StatefulWidget {
  final ProductModel productModel;
  final int productQuantity;
  const BuyNotButtonWidget(
      {super.key, required this.productModel, required this.productQuantity});

  @override
  State<BuyNotButtonWidget> createState() => _BuyNotButtonWidgetState();
}

class _BuyNotButtonWidgetState extends State<BuyNotButtonWidget> {
  late ProductModel productModel;
  @override
  void initState() {
    productModel = widget.productModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 150,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 25.h),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.current.totalPrice,
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.grayScale[20]),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                productModel.amount.toDouble().formatCurrency().toString(),
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.green),
              ),
            ],
          ),
          Container(
            height: 48.h,
            width: 211.w,
            decoration: BoxDecoration(
              color: AppColors.black[10],
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Row(
              children: [
                Container(
                  height: 48.h,
                  width: 71.w,
                  decoration: BoxDecoration(
                      color: AppColors.green,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.r),
                          bottomLeft: Radius.circular(4.r))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomAssetImage(
                          url: AssetResources.shoppingCartIcon,
                          height: 20.h,
                          width: 20.w,
                          color: Colors.white),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        widget.productQuantity.toString(),
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  S.current.buyNow,
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
