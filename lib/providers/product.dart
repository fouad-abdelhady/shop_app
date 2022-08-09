import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
  final String productId;
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  bool isFavourite;

  Product(
      {required this.productId,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.price,
      this.isFavourite = false});

  void toggelFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
