import 'package:emag_clone/src/actions/auth/index.dart';
import 'package:emag_clone/src/containers/auth/cart_container.dart';
import 'package:emag_clone/src/containers/auth/index.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/models/products/index.dart';
import 'package:emag_clone/src/presentations/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key key, this.product}) : super(key: key);

  final Product product;

  Widget _getAvailibility(ProductState st) {
    Color _color;
    String _value;
    if (st == ProductState.inStock) {
      _color = Colors.green;
      _value = 'In stock';
    } else if (st == ProductState.lastItem) {
      _color = Colors.yellow;
      _value = 'Last item';
    } else if (st == ProductState.outOfStock) {
      _color = Colors.red;
      _value = 'Out of stock';
    }

    return Text(
      _value,
      style: TextStyle(color: _color),
    );
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        final bool isFavorite = user.favorites.contains(product.id);
        return Scaffold(
          appBar: AppBar(
            title: Text(product.title.substring(0, 15) + '...'),
            actions: <Widget>[
              CartContainer(
                builder: (BuildContext context, Cart cart) => Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.shopping_cart),
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.cartPage);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Text(
                          '${cart.totalProducts}',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          body: ListView(
            children: <Widget>[
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.width,
                    width: double.infinity,
                    child: PageView.builder(
                      itemCount: product.images.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          product.images[index],
                          fit: BoxFit.contain,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        if (isFavorite) {
                          StoreProvider.of<AppState>(context).dispatch(UpdateFavoriteProducts(remove: product.id));
                        } else {
                          StoreProvider.of<AppState>(context).dispatch(UpdateFavoriteProducts(add: product.id));
                        }
                      },
                      icon: isFavorite
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32,
                            )
                          : const Icon(
                              Icons.favorite_outline,
                              size: 32,
                            ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
                child: Text(
                  product.title,
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Text(
                  '${product.price} lei',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Availability:'),
                      _getAvailibility(product.productState),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Reviews:'),
                      Row(
                        children: <Widget>[
                          Row(
                            children: List<Widget>.generate(
                              5,
                              (int index) {
                                if (index < product.review.round())
                                  return const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  );
                                return const Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                );
                              },
                            ),
                          ),
                          Text('${product.review}'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Description:',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        product.description,
                        maxLines: 5,
                      ),
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.descriptionProductPage,
                              arguments: product.description);
                        },
                        child: const Text(
                          'See more',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: <Widget>[
              FloatingActionButton(
                child: const Icon(Icons.shopping_cart),
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(UpdateCart(addProduct: product));
                },
              ),
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: const Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
