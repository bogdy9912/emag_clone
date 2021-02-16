import 'package:emag_clone/src/actions/auth/index.dart';
import 'package:emag_clone/src/actions/orders/index.dart';
import 'package:emag_clone/src/containers/auth/index.dart';
import 'package:emag_clone/src/containers/products/index.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/models/products/index.dart';
import 'package:emag_clone/src/presentations/app_routes.dart';
import 'package:emag_clone/src/presentations/cart/cart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your cart'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: const Chip(
                backgroundColor: Colors.white,
                label: Text(
                  'Clear',
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
                ),
              ),
              onTap: () {
                StoreProvider.of<AppState>(context).dispatch(const UpdateCart());
              },
            ),
          ),
        ],
      ),
      body: ProductsContainer(
        builder: (BuildContext context, List<Product> products) => CartContainer(
          builder: (BuildContext context, Cart cart) {
            return Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      final String productId = cart.items[index].productId;
                      final Product product = products.where((Product element) => element.id == productId).first;
                      return CartItemWidget(product: product, quantity: cart.items[index].quantity);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Total comanda: ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        '${cart.totalAmount.toStringAsFixed(2)} lei',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8,
                  ),
                  child: Stack(
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.blueAccent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child: Container(
                          width: double.infinity,
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                'Checkout',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.checkoutPage);
                        },
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
                        ),
                        height: 48,
                        width: 30,
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
