import 'package:flutter/material.dart';

class ProductsOverview extends StatelessWidget {
  static const String ROUTE_NAME = '/products_overview';

  List<String> productsList;
  ProductsOverview({Key? key, required this.productsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('Products Here'),
    ));
  }
}
