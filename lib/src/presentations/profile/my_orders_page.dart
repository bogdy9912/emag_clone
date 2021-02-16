import 'package:emag_clone/src/containers/orders/orders_container.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:flutter/material.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrdersContainer(
      builder: (BuildContext context, List<Order> orders) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('My orders'),
          ),
          body: ListView.builder(
            itemCount: orders.length,
            itemBuilder: (BuildContext context, int index) {
              final Order order = orders[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text('Order no. ${order.id}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Total:  ${order.total}'),
                        Text('Payment:  ${order.methodOfPayment}'),
                        Text('Date:  ${order.date}'),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
