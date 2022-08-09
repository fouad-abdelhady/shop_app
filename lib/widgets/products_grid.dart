import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/widgets/product_item.dart';

import '../models/products.dart';
import '../providers/products.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dataObj = Provider.of<Products>(context);
    List<Product> productsList = dataObj.getItems;
    return GridView.builder(
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
}
