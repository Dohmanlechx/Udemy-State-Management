import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_state_mng/providers/products_provider.dart';
import 'package:udemy_state_mng/screens/edit_product_screen.dart';
import 'package:udemy_state_mng/widgets/app_drawer.dart';
import 'package:udemy_state_mng/widgets/user_product_item.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = "/user-products";

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductsProvider>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: Text("Your Products"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(EditProductScreen.routeName);
            },
          )
        ],
      ),
      drawer: AppDrawer(),
      body: RefreshIndicator(
        onRefresh: () => products.fetchAndSetProducts(),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListView.builder(
            itemCount: products.items.length,
            itemBuilder: (_, i) => Column(
              children: <Widget>[
                UserProductItem(
                  products.items[i].id,
                  products.items[i].title,
                  products.items[i].imageUrl,
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
