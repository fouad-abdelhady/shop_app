import 'package:flutter/material.dart';
import 'package:shop_app/models/products.dart';
import 'package:shop_app/widgets/app_scaffold.dart';
import 'package:shop_app/widgets/product_item.dart';
import '../data/products_data.dart';

class ProductsOverviewScreen extends StatelessWidget {
  static const String ROUTE_NAME = '/products_overview';

  late List<Products> productsList;
  ProductsOverviewScreen({Key? key}) : super(key: key) {
    productsList = PRODUCTS_LIST;
  }
  @override
  Widget build(BuildContext context) {
    return AppScaffold(appBarTitle: 'Products', screenBody: getBody());
  }

  Widget getBody() => GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) => ProductItem(
            productId: productsList[index].productId,
            productImageUrl: productsList[index].imageUrl,
            productTitle: productsList[index].title),
        itemCount: productsList.length,
      );
}
