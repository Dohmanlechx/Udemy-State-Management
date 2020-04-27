import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_state_mng/providers/cart.dart';
import 'package:udemy_state_mng/providers/orders.dart';
import 'package:udemy_state_mng/providers/products_provider.dart';
import 'package:udemy_state_mng/screens/cart_screen.dart';
import 'package:udemy_state_mng/screens/edit_product_screen.dart';
import 'package:udemy_state_mng/screens/orders_screen.dart';
import 'package:udemy_state_mng/screens/product_detail_screen.dart';
import 'package:udemy_state_mng/screens/products_overview_screen.dart';
import 'package:udemy_state_mng/screens/user_products_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ProductsProvider()),
        ChangeNotifierProvider.value(value: Cart()),
        ChangeNotifierProvider.value(value: Orders()),
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.purple,
          fontFamily: "Lato",
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
          UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
          EditProductScreen.routeName: (ctx) => EditProductScreen(),
        },
      ),
    );
  }
}
