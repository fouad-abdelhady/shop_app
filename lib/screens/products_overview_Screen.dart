import 'package:flutter/material.dart';
import 'package:shop_app/models/products.dart';
import 'package:shop_app/widgets/app_scaffold.dart';
import '../data/products_data.dart';
import '../widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  static const String ROUTE_NAME = '/products_overview';

  late List<Product> productsList;
  ProductsOverviewScreen({Key? key}) : super(key: key) {
    productsList = PRODUCTS_LIST;
  }
  @override
  Widget build(BuildContext context) {
    return AppScaffold(appBarTitle: 'MyShop', screenBody: getBody());
  }

  Widget getBody() => ProductsGrid();
}
