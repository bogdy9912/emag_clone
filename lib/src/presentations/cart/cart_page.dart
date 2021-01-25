import 'package:emag_clone/src/containers/auth/cart_container.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your cart'),
      ),
      body: CartContainer(
        builder: (BuildContext context, Cart cart) => ListView.builder(
          itemCount: cart.items.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(cart.items[index].productId);
          },
        ),
      ),
    );
  }
}
