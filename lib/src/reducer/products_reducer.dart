import 'package:built_collection/built_collection.dart';
import 'package:emag_clone/src/actions/products/index.dart';
import 'package:emag_clone/src/models/products/index.dart';
import 'package:redux/redux.dart';

Reducer<ProductsState> productsReducer = combineReducers(<Reducer<ProductsState>>[
  TypedReducer<ProductsState, GetProductsSuccessful>(_getProductsSuccessful),
]);

ProductsState _getProductsSuccessful(ProductsState state, GetProductsSuccessful action) {

  return state.rebuild((ProductsStateBuilder b) => b.products = ListBuilder<Product>(action.products));
}
