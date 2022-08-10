import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/widgets/app_scaffold.dart';
import 'package:shop_app/widgets/badge.dart';
import '../providers/products.dart';
import '../widgets/products_grid.dart';
import '../providers/cart.dart';

enum FilterOptions { favourite, all }

class ProductsOverviewScreen extends StatelessWidget {
  static const String ROUTE_NAME = '/products_overview';

  final appBarTitle = "Our Products";

  late Products products;
  @override
  Widget build(BuildContext context) {
    products = Provider.of<Products>(context, listen: false);
    return AppScaffold(applicationAppBar: _getAppBar(), screenBody: _getBody());
  }

  Widget _getBody() => ProductsGrid();

  _getAppBar() => AppBar(
        title: Text(appBarTitle),
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.more_vert),
              onSelected: (FilterOptions selectedValue) {
                if (selectedValue == FilterOptions.favourite) {
                  products.showFavourite();
                } else {
                  products.showAll();
                }
              },
              itemBuilder: (_) => [
                    const PopupMenuItem(
                      child: Text("All"),
                      value: FilterOptions.all,
                    ),
                    const PopupMenuItem(
                      child: Text("Favourite"),
                      value: FilterOptions.favourite,
                    )
                  ]),
          Consumer<Cart>(
            builder: (ctx, cartObj, child) =>
                Badge(child: child ?? SizedBox(), value: cartObj.itemsCount),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag),
            ),
          )
        ],
      );
}
