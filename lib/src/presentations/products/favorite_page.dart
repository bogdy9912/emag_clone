import 'package:emag_clone/src/containers/auth/index.dart';
import 'package:emag_clone/src/containers/products/index.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:emag_clone/src/models/products/index.dart';
import 'package:emag_clone/src/presentations/products/product_item.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        return ProductsContainer(
          builder: (BuildContext context, List<Product> products) {
            final List<Product> favoriteProducts =
                products.where((Product prod) => user.favorites.contains(prod.id)).toList();
            return Scaffold(
              appBar: AppBar(
                title: const Text('Favorites'),
              ),
              body: favoriteProducts.isNotEmpty
                  ? ListView.builder(
                      itemCount: favoriteProducts.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ProductItem(product: favoriteProducts[index]);
                      },
                    )
                  : const Text('No favorites'),
            );
          },
        );
      },
    );
  }
}
