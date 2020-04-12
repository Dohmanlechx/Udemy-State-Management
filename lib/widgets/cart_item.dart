import 'package:flutter/material.dart';
import 'package:udemy_state_mng/providers/cart.dart';

class CartItemView extends StatelessWidget {
  final CartItem cartItem;

  const CartItemView(this.cartItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: FittedBox(child: Text("\$${cartItem.price}")),
            ),
          ),
          title: Text(cartItem.title),
          subtitle: Text("Total: \$${cartItem.price * cartItem.quantity}"),
          trailing: Text("${cartItem.quantity} x"),
        ),
      ),
    );
  }
}
