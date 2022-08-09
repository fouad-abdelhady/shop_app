import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_details_screen.dart';

// ignore: must_be_immutable
class ProductItem extends StatefulWidget {
  static const ICONS_COLOR = Color.fromARGB(255, 255, 146, 3);
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
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 53, 52, 52),
                offset: Offset(3, 3),
                blurRadius: 5)
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: InkWell(
          onTap: (() {
            Navigator.of(context).pushNamed(ProductDetails.SCREEN_NAME,
                arguments: widget.productId);
          }),
          child: GridTile(
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
                        ? const Icon(
                            Icons.favorite_outlined,
                            color: ProductItem.ICONS_COLOR,
                          )
                        : const Icon(Icons.favorite_outline,
                            color: ProductItem.ICONS_COLOR)),
                title: Text(
                  widget.productTitle,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                trailing: const Icon(
                  Icons.shopping_bag_outlined,
                  color: ProductItem.ICONS_COLOR,
                )),
          ),
        ),
      ),
    );
  }
}
