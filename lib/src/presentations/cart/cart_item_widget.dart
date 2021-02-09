import 'package:emag_clone/src/models/products/index.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({Key key, @required this.product, this.quantity = 1}) : super(key: key);

  final Product product;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            product.images[0],
            fit: BoxFit.contain,
            width: 100,
            height: 200,
          ),
          Expanded(
            child: SizedBox(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 150,
                          child: Text(
                            product.title,
                            maxLines: 3,
                          ),
                        ),
                        const Icon(Icons.favorite),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          children: List<Widget>.generate(
                            5,
                            (int index) {
                              if (index < product.review.round())
                                return const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                );
                              return const Icon(
                                Icons.star_border,
                              );
                            },
                          ),
                        ),
                        Text('${product.review}'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('Quantity: $quantity'),
                        Text('Price: ${(quantity * product.price).toStringAsFixed(2)}'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
