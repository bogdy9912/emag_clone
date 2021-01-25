import 'package:emag_clone/src/containers/products/products_container.dart';
import 'package:emag_clone/src/models/products/index.dart';
import 'package:emag_clone/src/presentations/app_routes.dart';
import 'package:emag_clone/src/presentations/products/product_item.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: InkWell(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.searchPage);
          },
          child: Material(
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  Text(
                    'Tap to search',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            shape: const StadiumBorder(),
          ),
        ),
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
