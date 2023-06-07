import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:moniepoint_test/configs/app_startup.dart';
import 'package:moniepoint_test/generated/l10n.dart';
import 'package:moniepoint_test/modules/home/models/banner.dart';
import 'package:moniepoint_test/modules/home/models/category.dart';
import 'package:moniepoint_test/modules/home/models/product.dart';
import '../services/api_service.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeApiService apiService;

  HomeCubit({required this.apiService}) : super(HomeInitial());

  //Fetch categories
  Future<void> fetchCategories() async {
    emit(CategoriesLoading());
    try {
      Future.delayed(const Duration(seconds: 3), () {
        emit(CategoriesLoaded(categories: Categories.getCategories()));
      });
    } catch (e) {
      emit(CategoriesError(message: S.current.anErrorOccurred));
    }
  }

  //Fetch Products
  Future<void> fetchProducts() async {
    emit(ProductsLoading());
    try {
      Future.delayed(const Duration(seconds: 3), () {
        emit(ProductsLoaded(products: Products.getProducts()));
      });
    } catch (e) {
      emit(ProductsError(message: S.current.anErrorOccurred));
    }
  }

  //Fetch Banner
  Future<void> fetchBanners() async {
    emit(BannerLoading());
    try {
      Future.delayed(const Duration(seconds: 3), () {
        getIt.registerSingleton<List<BannerModel>>(Banners.getBanners());
        emit(BannerLoaded(banners: Banners.getBanners()));
      });
    } catch (e) {
      emit(BannerError(message: S.current.anErrorOccurred));
    }
  }
}
