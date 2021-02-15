import 'package:emag_clone/src/containers/auth/index.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:emag_clone/src/presentations/app_routes.dart';
import 'package:emag_clone/src/presentations/cart/checkout/home_delivery_tab.dart';
import 'package:emag_clone/src/presentations/cart/checkout/personal_pickup_tab.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CartContainer(
      builder: (BuildContext context, Cart cart) => Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData().copyWith(color: Colors.blue),
          title: const Text(
            'Checkout',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              const TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.blue,
                tabs: <Widget>[
                  Tab(
                    text: 'Home delivery',
                  ),
                  Tab(
                    text: 'Personal pick-up',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    HomeDeliveryTab(),
                    PersonalPickupTab(),
                  ],
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Text(
                    'Total:',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${cart.totalAmount.toStringAsFixed(2)} lei',
                    style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
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
                              'CONTINUE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.paymentPage);
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
          ),
        ),
      ),
    );
  }
}
