import 'package:emag_clone/src/actions/auth/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/reducer/auth_reducer.dart';
import 'package:emag_clone/src/reducer/orders_reducer.dart';
import 'package:emag_clone/src/reducer/products_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
  TypedReducer<AppState, SignOutSuccessful>(_signOutSuccessful),
]);

AppState _reducer(AppState state, dynamic action) {
  return state.rebuild((AppStateBuilder b) {
    return b
      ..auth = authReducer(state.auth, action).toBuilder()
      ..productsState = productsReducer(state.productsState, action).toBuilder()
      ..ordersState = ordersReducer(state.ordersState, action).toBuilder();
  });
}

AppState _signOutSuccessful(AppState state, SignOutSuccessful action) {
  return AppState.initialState();
}
