import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/widgets/app_scaffold.dart';

import '../providers/products.dart';

class ProductDetails extends StatelessWidget {
  static const SCREEN_NAME = "/product_details";
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final product = Provider.of<Products>(context, listen: false)
        .getProductById(productId: productId);
    return AppScaffold(
        appBarTitle: product.title,
        screenBody: Center(child: Text(product.description)));
  }
}
