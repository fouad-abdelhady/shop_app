import 'package:flutter/cupertino.dart';
import 'package:shop_app/models/cart_item.dart';

class Cart with ChangeNotifier {
  Map<String, CartItem> _cartItems = {};

  int _itemsCount = 0;

  Map<String, CartItem> get cartItems => {..._cartItems};

  void addCartItem(
      {required String productId,
      required String productTitle,
      required double price}) {
    if (_cartItems.containsKey(productId)) {
      _cartItems[productId]!.incrementAmount();
    } else {
      _cartItems.putIfAbsent(
          productId,
          () => CartItem(
              id: DateTime.now().toString(),
              title: productId,
              amount: 1,
              price: price));
    }
    _itemsCount++;
    notifyListeners();
    print(_cartItems);
  }

  int get itemsCount => _itemsCount;
}
