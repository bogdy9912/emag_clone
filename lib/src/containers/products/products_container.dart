import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/models/products/index.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class ProductsContainer extends StatelessWidget {
  const ProductsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Product>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Product>>(
      converter: (Store<AppState> store) => store.state.productsState.products.asList(),
      builder: builder,
    );
  }
}
