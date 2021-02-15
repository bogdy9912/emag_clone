import 'package:emag_clone/src/containers/auth/checkout_address_container.dart';
import 'package:emag_clone/src/containers/auth/index.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:emag_clone/src/presentations/app_routes.dart';
import 'package:flutter/material.dart';

class HomeDeliveryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CheckoutAddressContainer(
      builder: (BuildContext context, AddressPoint addressPoint) {
        return UserContainer(
          builder: (BuildContext context, AppUser user) {
            if (user.addresses.isEmpty) {
              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Address for delivery',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'In this moment you don\'t have any addresses saved, please enter one.',
                          ),
                        ),
                        const Divider(),
                        Center(
                          child: FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, AppRoutes.addAddressPage);
                            },
                            child: const Text(
                              'ADD AN ADDRESS',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                        const Divider(),
                      ],
                    ),
                  ),
                ],
              );
            } else if (addressPoint != null) {
              return Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Address for delivery',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('${addressPoint.contactName} - ${addressPoint.contactPhone}'),
                        Text('${addressPoint.address} - ${addressPoint.city}, ${addressPoint.town}'),
                      ],
                    ),
                  ),
                  const Divider(),
                  Center(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.selectAddressPage);
                      },
                      child: const Text(
                        'CHANGE ADDRESS',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  const Divider(),
                ],
              );
            } else {
              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Address for delivery',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'In this moment you don\'t have any addresses selected, please select one.',
                          ),
                        ),
                        const Divider(),
                        Center(
                          child: FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, AppRoutes.selectAddressPage);
                            },
                            child: const Text(
                              'SELECT AN ADDRESS',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                        const Divider(),
                      ],
                    ),
                  ),
                ],
              );
            }
          },
        );
      },
    );
  }
}
