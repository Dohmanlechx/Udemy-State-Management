import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:udemy_state_mng/providers/orders.dart';

class OrderItemView extends StatelessWidget {
  final OrderItem orderItem;

  const OrderItemView(this.orderItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("\$${orderItem.amount}"),
            subtitle: Text(DateFormat("dd MM yyyy hh:mm").format(orderItem.dateTime)),
            trailing: IconButton(
              icon: Icon(Icons.expand_more),
              onPressed: () {

              },
            ),
          )
        ],
      ),
    );
  }
}
