// ignore: prefer_function_declarations_over_variables
import 'package:flutter/material.dart';
import 'package:moniepoint_test/modules/home/routes/route.dart';
import 'package:moniepoint_test/modules/home/widgets/best_product/product/product_widget/product_detail.dart';
import 'package:moniepoint_test/root/model/tab_model.dart';
import 'package:moniepoint_test/root/root.dart';
import 'package:moniepoint_test/root/route/route.dart';

var routes = (RouteSettings settings) {
  switch (settings.name) {
    case RootRoutes.home:
      Tabs currentTab = Tabs.home;
      if (settings.arguments != null) {
        Map arg = settings.arguments as Map;
        if (arg.containsKey('currentTab')) currentTab = arg['currentTab'];
      }
      return MaterialPageRoute(
        builder: (_) => RootWidget(
          currentTab: currentTab,
        ),
      );
    case HomeRoutes.productDetail:
      Map arg = settings.arguments as Map;
      return MaterialPageRoute(
          builder: (_) => ProductDetailView(productModel: arg['productModel']));
  }

  return null;
};
