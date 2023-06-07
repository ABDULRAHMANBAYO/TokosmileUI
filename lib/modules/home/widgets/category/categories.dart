import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/configs/app_startup.dart';
import 'package:moniepoint_test/modules/home/cubit/home_cubit.dart';
import 'package:moniepoint_test/modules/home/models/category.dart';
import 'package:moniepoint_test/modules/home/widgets/category/category_item.dart';
import 'package:moniepoint_test/shared/utils/dot_indicator.dart';
import 'loader/shimmer_list.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  bool isLoading = true;
  List<Category> categories = [];
  @override
  void initState() {
    getIt<HomeCubit>().fetchCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      bloc: getIt<HomeCubit>(),
      listener: (context, state) {
        if (state is CategoriesLoading) {
          isLoading = true;
        }
        if (state is CategoriesLoaded) {
          isLoading = false;
          categories = state.categories;
          setState(() {});
        }
        if (state is CategoriesError) {
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
            ? const CategoryShimmerList()
            : Container(
                height: 107.h,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.w),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        separatorBuilder: (context, index) => SizedBox(
                          width: 25.w,
                        ),
                        padding: EdgeInsets.zero,
                        // physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return CategoryItem(
                            category: categories[index],
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) =>
                            DotIndicator(isActive: index == 0 ? true : false),
                      ),
                    ),
                  ],
                ),
              );
      },
    );
  }
}
