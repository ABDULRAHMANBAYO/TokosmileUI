import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moniepoint_test/configs/app_startup.dart';
import 'package:moniepoint_test/modules/home/cubit/home_cubit.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/shimmer_loader/product_shimmer.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/shimmer_loader/sliver_shimmer.dart';
import 'product_view.dart';
import '../sliver_grid_view.dart';

class ProductsGridView extends StatefulWidget {
  final bool isFromHomePage;
  const ProductsGridView({super.key, this.isFromHomePage = false});

  @override
  State<ProductsGridView> createState() => _ProductsGridViewState();
}

class _ProductsGridViewState extends State<ProductsGridView> {
  bool isLoading = true;
  List<ProductModel> products = [];
  @override
  void initState() {
    getIt<HomeCubit>().fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      bloc: getIt<HomeCubit>(),
      listener: (context, state) {
        if (state is ProductsLoading) {
          isLoading = true;
        }
        if (state is ProductsLoaded) {
          isLoading = false;
          products = state.products;
        }
        if (state is ProductsError) {
          isLoading = false;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
            ),
          );
        }
      },
      builder: (context, state) {
        return isLoading
            ? widget.isFromHomePage
                ? const SliverGridViewShimmer()
                : const ProductGridViewShimmer()
            : widget.isFromHomePage
                ? SliverProductGridView(products: products)
                : ProductWidget(products: products);
      },
    );
  }
}
