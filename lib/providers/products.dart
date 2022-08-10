import 'package:flutter/cupertino.dart';
import 'package:shop_app/data/products_data.dart';
import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = PRODUCTS_LIST;

  List<Product> get getItems => _isFavourite
      ? _items.where((product) => product.isFavourite).toList()
      : [..._items];

  var _isFavourite = false;
  Product getProductById({required String productId}) =>
      _items.firstWhere((product) => product.productId == productId);

  set addItem(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void showFavourite() {
    _isFavourite = true;
    notifyListeners();
  }

  void showAll() {
    _isFavourite = false;
    notifyListeners();
  }

  bool get isFavourite => _isFavourite;
}
