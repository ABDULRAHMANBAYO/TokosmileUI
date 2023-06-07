import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/generated/l10n.dart';
import 'package:moniepoint_test/modules/home/widgets/banner/banner_view.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/product_widget/products.dart';
import 'package:moniepoint_test/modules/home/widgets/category/categories.dart';
import 'package:moniepoint_test/modules/home/widgets/custom_app_bar.dart';
import 'package:moniepoint_test/shared/utils/asset_images.dart';
import 'package:moniepoint_test/shared/utils/colors.dart';
import 'package:moniepoint_test/shared/utils/custom_asset_image.dart';
import 'package:moniepoint_test/shared/widgets/forms/search_input.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  get yellowScale => null;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            backgroundColor: Colors.white,
            flexibleSpace: const FlexibleSpaceBar(
              background: BannerView(),
            ),
            pinned: true,
            title: SearchInput(
              textPlaceholder: S.current.search,
              prefixWidget: CustomAssetImage(
                  url: AssetResources.searchIcon, height: 20.h, width: 20.w),
            ),
            actions: [
              Center(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomAssetImage(
                        url: AssetResources.shoppingCartIcon,
                        height: 25.h,
                        width: 25.w),
                    const CustomBadge(
                      count: "2",
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Center(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomAssetImage(
                        url: AssetResources.messageIcon,
                        height: 25.h,
                        width: 25.w),
                    const CustomBadge(
                      count: "9+",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
            ],
          ),
          const SliverToBoxAdapter(
            child: CategoriesWidget(),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: StickyBestProductDelegate(),
          ),
          const ProductsGridView(
            isFromHomePage: true,
          )
        ],
      ),
    );
  }
}

class StickyBestProductDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 60.0;
  @override
  double get maxExtent => 60.0;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: AppColors.scaffoldBackgroundColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              S.current.bestSaleProducts,
              style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w700, fontSize: 16.sp),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                S.current.seeMore,
                style: GoogleFonts.plusJakartaSans(
                    color: AppColors.green,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(StickyBestProductDelegate oldDelegate) => false;
}
