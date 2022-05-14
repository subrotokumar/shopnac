import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './page/product_detail_screen.dart';
import './page/product_overview_screen.dart';
import 'provider/products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'Shopnac',
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
              .copyWith(secondary: Colors.amber),
        ),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.route: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}
