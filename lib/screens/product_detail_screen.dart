import 'package:flutter/material.dart';
import 'package:udemy_state_mng/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = "/product-detail";

//  final Product product;
//
//  const ProductDetailScreen(this.product);

  @override
  Widget build(BuildContext context) {
    final String productId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(productId),
      ),
    );
  }
}
