import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  String productId;
  String productTitle;
  String productImageUrl;

  ProductItem(
      {Key? key,
      required this.productId,
      required this.productTitle,
      required this.productImageUrl})
      : super(key: key);

  @override
  State<ProductItem> createState() => _ProductItem();
}

class _ProductItem extends State<ProductItem> {
  bool _isClicked = false;
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(widget.productImageUrl, fit: BoxFit.cover),
      footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: InkWell(
              onTap: () {
                setState(() {
                  _isClicked = !_isClicked;
                });
              },
              child: _isClicked
                  ? Icon(Icons.favorite_outlined)
                  : Icon(Icons.favorite_outline)),
          title: Text(widget.productTitle),
          trailing: Icon(Icons.shopping_bag_outlined)),
    );
  }
}
