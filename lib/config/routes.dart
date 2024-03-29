import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_details_screen.dart';
import 'package:shop_app/screens/products_overview_Screen.dart';

class Routes {
  static MaterialPageRoute ON_GENERATE_ROUTE(RouteSettings settings) {
    Widget screen;
    switch (settings.name) {
      case ProductsOverviewScreen.ROUTE_NAME:
        screen = ProductsOverviewScreen();
        break;
      case ProductDetails.SCREEN_NAME:
        screen = ProductDetails();
        break;
      default:
        screen = ProductsOverviewScreen();
    }
    return MaterialPageRoute(builder: (_) => screen, settings: settings);
  }
}
