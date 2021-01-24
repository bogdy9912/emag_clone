import 'package:emag_clone/src/models/products/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key key, this.product}) : super(key: key);

  final Product product;

  Widget _getState(ProductState productState) {
    switch (productState) {
      case ProductState.inStock:
        return const Text('In stock');
      case ProductState.lastItem:
        return const Text('Last item');
      case ProductState.outOfStock:
        return const Text('Out of stock');
      default:
        throw FallThroughError();
    }
  }

  Color _getColor(ProductState productState) {
    if (productState == ProductState.inStock) {
      return Colors.green;
    }
    if (productState == ProductState.lastItem) {
      return Colors.yellow;
    }
    if (productState == ProductState.outOfStock) {
      return Colors.red;
    } else {
      throw FallThroughError();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            product.images[0],
            fit: BoxFit.contain,
            width: 100,
            height: 200,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(width: 150, child: Text(product.title)),
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
                    children: <Widget>[
                      Icon(
                        Icons.circle,
                        color: _getColor(product.productState),
                        size: 16,
                      ),
                      _getState(product.productState),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '${product.price}',
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              gradient: LinearGradient(
                                colors: <Color>[Colors.blue, Colors.lightBlueAccent],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                          ),
                          const Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
