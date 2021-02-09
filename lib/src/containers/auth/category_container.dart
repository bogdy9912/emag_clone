import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/models/products/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<String>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<String>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.productsState.products.map((Product b) => b.category).toList(),
    );
  }
}
