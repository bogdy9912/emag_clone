import 'package:emag_clone/src/models/auth/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class CartContainer extends StatelessWidget {
  const CartContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Cart> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Cart>(
      converter: (Store<AppState> store) => store.state.auth.user.cart,
      builder: builder,
    );
  }
}
