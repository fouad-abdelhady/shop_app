import 'package:flutter/material.dart';
import 'package:shop_app/screens/products_overview.dart';

class Routes {
  static MaterialPageRoute ON_GENERATE_ROUTE(RouteSettings settings) {
    Widget screen;
    switch (settings.name) {
      case ProductsOverview.ROUTE_NAME:
        screen = ProductsOverview(
          productsList: [],
        );
        break;
      default:
        screen = ProductsOverview(
          productsList: [],
        );
    }
    return MaterialPageRoute(builder: (_) => screen, settings: settings);
  }
}
