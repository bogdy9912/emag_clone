import 'package:emag_clone/src/containers/products/products_container.dart';
import 'package:emag_clone/src/models/products/index.dart';
import 'package:emag_clone/src/presentations/products/product_item.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: ProductsContainer(
        builder: (BuildContext context, List<Product> products) {
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return ProductItem(
                product: products[index],
              );
            },
          );
        },
      ),
    );
  }
}
