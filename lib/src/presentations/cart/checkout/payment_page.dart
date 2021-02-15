import 'package:emag_clone/src/containers/auth/index.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:flutter/material.dart';

enum paymentMethod { card, cash }

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  paymentMethod _method = paymentMethod.card;

  @override
  Widget build(BuildContext context) {
    return CartContainer(
      builder: (BuildContext context, Cart cart) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.blue),
            title: const Text(
              'Payment',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          body: Column(
            children: <Widget>[
              const Divider(),
              ListTile(
                title: const Text(
                  'Credit/debit card',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Row(
                  children: const <Widget>[
                    Icon(
                      Icons.credit_card,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.credit_card,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.credit_card,
                      color: Colors.amber,
                    ),
                  ],
                ),
                leading: Radio<paymentMethod>(
                    value: paymentMethod.card,
                    groupValue: _method,
                    onChanged: (paymentMethod meth) {
                      setState(() {
                        _method = meth;
                      });
                    }),
              ),
              ListTile(
                title: const Text(
                  'Cash',
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Row(
                  children: const <Widget>[
                    Icon(
                      Icons.money,
                      color: Colors.green,
                    ),
                  ],
                ),
                leading: Radio<paymentMethod>(
                    value: paymentMethod.cash,
                    groupValue: _method,
                    onChanged: (paymentMethod meth) {
                      setState(() {
                        _method = meth;
                      });
                    }),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Order summary',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text('Total products:'),
                        Text(cart.totalAmount.toStringAsFixed(2) + '\$'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text('Delivery cost:'),
                          Text('5\$'),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Total delivery:',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          (cart.totalAmount + 5).toStringAsFixed(2) + '\$',
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                              'FINISH',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {

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
              )
            ],
          ),
        );
      },
    );
  }
}
