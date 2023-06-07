part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

//Fetch categories
class CategoriesLoading extends HomeState {}

class CategoriesLoaded extends HomeState {
  final List<Category> categories;
  CategoriesLoaded({required this.categories});
}

class CategoriesError extends HomeState {
  final String message;
  CategoriesError({required this.message});
}

//Fetch Products

class ProductsLoading extends HomeState {}

class ProductsLoaded extends HomeState {
  final List<ProductModel> products;
  ProductsLoaded({required this.products});
}

class ProductsError extends HomeState {
  final String message;
  ProductsError({required this.message});
}

//Banner
class BannerLoading extends HomeState {}

class BannerLoaded extends HomeState {
  final List<BannerModel> banners;
  BannerLoaded({required this.banners});
}

class BannerError extends HomeState {
  final String message;
  BannerError({required this.message});
}
