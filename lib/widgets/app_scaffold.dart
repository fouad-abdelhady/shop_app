import 'package:flutter/material.dart';
import 'package:shop_app/data/products_data.dart';
import 'package:shop_app/widgets/product_item.dart';

class AppScaffold extends StatelessWidget {
  final String _appBarTitel;
  final AppBar? _aplicationAppBar;
  final Widget _screenBody;
  final FloatingActionButton? _screenFloatingActionButton;

  AppScaffold(
      {Key? key,
      required String appBarTitle,
      AppBar? applicationAppBar,
      required Widget screenBody,
      FloatingActionButton? screenFloatingActionButton})
      : _appBarTitel = appBarTitle,
        _aplicationAppBar = applicationAppBar,
        _screenBody = screenBody,
        _screenFloatingActionButton = screenFloatingActionButton,
        super(key: key);

  var productsList = PRODUCTS_LIST;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _aplicationAppBar ?? _getDefaultAppBar(),
      body: _screenBody,
      //floatingActionButton: _screenFloatingActionButton,
    );
  }

  AppBar _getDefaultAppBar() => AppBar(
        title: Text(_appBarTitel),
      );
}
