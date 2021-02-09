import 'package:emag_clone/src/containers/auth/cart_container.dart';
import 'package:emag_clone/src/containers/products/products_container.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:emag_clone/src/models/products/index.dart';
import 'package:emag_clone/src/presentations/cart/cart_item_widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your cart'),
      ),
      body: ProductsContainer(
        builder:(BuildContext context, List<Product> products) => CartContainer(
          builder: (BuildContext context, Cart cart) => ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (BuildContext context, int index) {
              final String productId =cart.items[index].productId;
              final Product product = products.where((Product element) => element.id == productId).first;
              return CartItemWidget(product: product, quantity: cart.items[index].quantity,);
            },
          ),
        ),
      ),
    );
  }
}
