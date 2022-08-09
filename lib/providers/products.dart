import 'package:flutter/cupertino.dart';
import 'package:shop_app/data/products_data.dart';
import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = PRODUCTS_LIST;

  List<Product> get getItems => [..._items];

  Product getProductById({required String productId}) =>
      _items.firstWhere((product) => product.productId == productId);

  set addItem(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
