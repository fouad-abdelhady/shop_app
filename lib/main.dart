import 'package:flutter/material.dart';
import 'config/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => Routes.ON_GENERATE_ROUTE(settings),
    );
  }
}
