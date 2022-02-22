import 'dart:ui';

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
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(primary: Colors.amber, secondary: Colors.grey[600]),
          fontFamily: "Lato",
          textTheme:
              const TextTheme(titleMedium: TextStyle(fontFamily: "Lato"))),
      onGenerateRoute: (settings) => Routes.ON_GENERATE_ROUTE(settings),
    );
  }
}
