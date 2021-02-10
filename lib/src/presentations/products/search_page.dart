import 'package:emag_clone/src/actions/products/index.dart';
import 'package:emag_clone/src/containers/products/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/models/products/index.dart';
import 'package:emag_clone/src/presentations/products/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.blue),
        title: TextField(
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'search',
            prefixIcon: Icon(Icons.search),
          ),
          onChanged: (String value) {
            StoreProvider.of<AppState>(context).dispatch(SearchProducts(value));
          },
        ),
      ),
      body: SearchProductsContainer(
        builder: (BuildContext context, List<Product> searchResult) {
          return ListView.builder(
            itemCount: searchResult.length,
            itemBuilder: (BuildContext context, int index) {
              return ProductItem(
                product: searchResult[index],
              );
            },
          );
        },
      ),
    );
  }
}
